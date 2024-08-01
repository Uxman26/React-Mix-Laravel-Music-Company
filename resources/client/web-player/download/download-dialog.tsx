import {Artist} from '@app/web-player/artists/artist';
import {Album} from '@app/web-player/albums/album';
import {Track} from '@app/web-player/tracks/track';
import {DialogDownloadModal} from '@common/ui/overlays/dialog/dialog-download-modal';
import {DialogHeader} from '@common/ui/overlays/dialog/dialog-header';
import {Trans} from '@common/i18n/trans';
import {DialogBody} from '@common/ui/overlays/dialog/dialog-body';
import {useDialogContext} from '@common/ui/overlays/dialog/dialog-context';
import {Playlist} from '@app/web-player/playlists/playlist';
import {DownloadEmbed} from '../tracks/download-link';
import {useAuth} from '@common/auth/use-auth';
import {useProducts} from '@common/billing/pricing-table/use-products';
import {useEffect, useState} from 'react';
import {Product} from '@common/billing/product';
import {ArtistLinks} from '@app/web-player/artists/artist-links';
import {TrackImage} from '@app/web-player/tracks/track-image/track-image';
import {TrackLink} from '@app/web-player/tracks/track-link';
import {TrackGridItemDownloadModal} from '@app/web-player/tracks/track-grid-item-download-modal';
import {PlayableGridItemDownloadModal} from '@app/web-player/playable-item/playable-grid-item-download-modal';
import {getTrackLink} from '@app/web-player/tracks/track-link';
import {LikeIconButton} from '@app/web-player/library/like-icon-button';

interface Props {
  item: Artist | Album | Track | Playlist;
  track: Track;
  newQueue?: Track[];
}
export function DownloadDialog({ item, track, newQueue }: Props): JSX.Element {
  const userData = useAuth();
  const query = useProducts();
  const [allProducts, setAllProducts] = useState<Product[]>([]);

  useEffect(() => {
    if (query.data && query.data.products) {
      setAllProducts(query.data.products);
    }
  }, [query.data]);

  const { close } = useDialogContext();

  if (query.isLoading) {
    return (
      <DialogDownloadModal size="fullscreen">
        <DialogHeader>
          <Trans message="Loading Data..." />
        </DialogHeader>
        <DialogBody>
          <div className="flex items-center justify-center">
            <h3>Please Wait...</h3>
          </div>
        </DialogBody>
      </DialogDownloadModal>
    );
  }

  return (
    <DialogDownloadModal size="fullscreen">
      <DialogHeader>
        <div className="text-lg">
          <Trans message="Choose a License" />
        </div>
      </DialogHeader>
      <DialogBody>
        <div className="grid grid-cols-12 gap-4">
          {/* LEFT SIDE */}
          <div className="col-span-4 mx-10">
            <div className="h-full overflow-y-auto">
              <div>
                <TrackGridItemDownloadModal track={track} newQueue={newQueue} />
              </div>
            </div>
          </div>
          {/* RIGHT SIDE */}
          <div className="col-span-8 grid gap-4">
            {allProducts.map((plan, index) => (
              <DownloadEmbed
                key={index}
                typeFile={plan.name}
                tracks={track}
                plans={plan}
              />
            ))}
          </div>
        </div>
      </DialogBody>
    </DialogDownloadModal>
  );
}

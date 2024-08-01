import React, {useMemo, useState} from 'react';
import {playerStoreOptions} from '@app/web-player/state/player-store-options';
import {PlayerContext} from '@common/player/player-context';
import {useTrack} from '@app/web-player/tracks/requests/use-track';
import {FullPageLoader} from '@common/ui/progress/full-page-loader';
import {Track} from '@app/web-player/tracks/track';
import {trackToMediaItem} from '@app/web-player/tracks/utils/track-to-media-item';
import {PlayerStoreOptions} from '@common/player/state/player-store-options';
import {TrackLink} from './track-link';
import {Trans} from '@common/i18n/trans';
import {Button} from '@common/ui/buttons/button';
import {Product} from '@common/billing/product';
import {Permission, PermissionRestriction} from '@common/auth/permission';
import {TrackLinkDownloadModal} from './track-link-download-modal';
import {LincenseFeatureList} from '@common/billing/pricing-table/license-feature-list';

interface DownloadEmbedProps {
  typeFile: string;
  plans: Product;
  tracks: Track;
}
export function DownloadEmbed({typeFile, plans ,tracks}: DownloadEmbedProps) {
  const {data} = useTrack({loader: 'trackPage'});
  console.log('data',tracks)
  console.log('allProducts plans',plans)
  return (
    <div className="rounded border bg-alt p-14">
      {!tracks ? (
        <FullPageLoader screen={false} />
      ) : (
        <EmbedContent track={tracks} typeFile={typeFile} plans={plans} />
      )}
      
    </div>
  );
}

function getPermissions(permissions: Permission | Permission[] | undefined) {
  const fileTypes: Record<string, string> = {
    'files.download.mp3': 'MP3',
    'files.download.wav': 'WAV',
    'files.download.zip': 'ZIP',
    'files.download.pdf': 'PDF',
  };

  const existingFileTypes: string[] = [];

  if (Array.isArray(permissions)) {
    permissions.forEach(permission => {
      if (fileTypes.hasOwnProperty(permission.name)) {
        existingFileTypes.push(fileTypes[permission.name]);
      }
    });
  } else if (permissions && fileTypes.hasOwnProperty(permissions.name)) {
    existingFileTypes.push(fileTypes[permissions.name]);
  }

  return existingFileTypes;
}

interface EmbedContentProps {
  track: Track;
  typeFile: string;
  plans: Product;
}
function EmbedContent({track, typeFile, plans}: EmbedContentProps) {
  const [accordions, setAccordion] = useState(false);

  const options: PlayerStoreOptions = useMemo(() => {
    const mediaItem = trackToMediaItem(track);

    return {
      ...playerStoreOptions,
      initialData: {
        queue: [mediaItem],
        cuedMediaId: mediaItem.id,
        state: {
          repeat: false,
        },
      },
    };
  }, [track]);

  return (
    <PlayerContext id="web-player" options={options}>
      <div className="flex flex-row justify-between gap-24 bg-grey-300">
        <div>
          <div className="text-lg font-semibold">
            <TrackLinkDownloadModal
              track={track}
              plan={plans.name}
              target={undefined}
            />
          </div>
          <Trans message={`Available features in ${plans.name}`} />
          <br />
          <Trans message={`${getPermissions(plans.permissions)}`} />
          <br />
          <div className="mb-1">
            <button
              className="w-full py-4 text-left transition duration-300"
              onClick={() => setAccordion(!accordions)}
            >
              <span
                className={`transform text-sm transition-transform duration-300`}
              >
                <p className="flex items-center">
                  <i className="arrow myarrow mr-10"> </i><Trans message="Show features" />
                </p>
              </span>
            </button>
            {accordions && (
              <div className="p-4">
                <LincenseFeatureList product={plans} />
              </div>
            )}
          </div>
        </div>
        <a target="_blank" href={`/download-file/${track.id}`}>
          <Button
            size="sm"
            variant="outline"
            style={{
              backgroundColor: '#ffd700',
              color: '#000',
            }}
          >
            <Trans message={`Upgrade`} />
          </Button>
        </a>
      </div>
    </PlayerContext>
  );
}

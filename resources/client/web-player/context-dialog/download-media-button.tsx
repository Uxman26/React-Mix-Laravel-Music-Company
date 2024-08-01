import {ContextMenuButton} from '@app/web-player/context-dialog/context-dialog-layout';
import {Trans} from '@common/i18n/trans';
import {useDialogContext} from '@common/ui/overlays/dialog/dialog-context';
import {Track} from '@app/web-player/tracks/track';
import {Artist} from '@app/web-player/artists/artist';
import {Album} from '@app/web-player/albums/album';
import {openDialog} from '@common/ui/overlays/store/dialog-store';
import React from 'react';
import {DownloadDialog} from '@app/web-player/download/download-dialog';
import {Playlist} from '@app/web-player/playlists/playlist';
import {useCuedTrack} from '@app/web-player/player-controls/use-cued-track';

interface Props {
  item: Track | Album | Artist | Playlist;
}
export function DownloadMediaButton({item}: Props) {
  const {close: closeMenu} = useDialogContext();
  const track = useCuedTrack();

  return (
    <ContextMenuButton
      onClick={() => {
        closeMenu();
        openDialog(DownloadDialog, {
          item,
          track,
        });
      }}
    >
      <Trans message="Download" />
    </ContextMenuButton>
  );
}
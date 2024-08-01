import React from 'react';
import {useSettings} from '@common/core/settings/use-settings';
import {useCuedTrack} from '@app/web-player/player-controls/use-cued-track';
import {DownloadIcon} from '@common/icons/material/Download';
import {useAuth} from '@common/auth/use-auth';
import {Tooltip} from '@common/ui/tooltip/tooltip';
import {Trans} from '@common/i18n/trans';
import {DialogTrigger} from '@common/ui/overlays/dialog/dialog-trigger';
import {DownloadDialog} from '@app/web-player/download/download-dialog';
import {IconButton} from '@common/ui/buttons/icon-button';
import {Track} from '@app/web-player/tracks/track';
import {Artist} from '@app/web-player/artists/artist';
import {Album} from '@app/web-player/albums/album';
import {Playlist} from '@app/web-player/playlists/playlist';

interface Props {
  item: Track | Album | Artist | Playlist;
}
export function DownloadTrackButton() {
  const {player, base_url} = useSettings();
  const track = useCuedTrack();
  const {hasPermission} = useAuth();

  if (!player?.enable_download || !track) {
    return null;
  }

  return (
    <Tooltip label={<Trans message="Download" />}>
      <DialogTrigger type="modal">
        <IconButton
          className="bg-primary"
          size="md"
          variant="outline"
          radius="rounded"
          onClick={() => {}}
        >
          <DownloadIcon />
        </IconButton>
        <DownloadDialog item={track} track={track} />
      </DialogTrigger>
    </Tooltip>
  );
}

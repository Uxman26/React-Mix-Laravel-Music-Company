import {Link, LinkProps} from 'react-router-dom';
import clsx from 'clsx';
import React, {useMemo} from 'react';
import {slugifyString} from '@common/utils/string/slugify-string';
import {Track} from '@app/web-player/tracks/track';
import {getBootstrapData} from '@common/core/bootstrap-data/use-backend-bootstrap-data';

interface TrackLinkDownloadModalProps extends Omit<LinkProps, 'to'> {
  track: Track;
  className?: string;
  plan: string;
  target: any;
}
export function TrackLinkDownloadModal({track, plan,className, ...linkProps}: TrackLinkDownloadModalProps) {
  const finalUri = useMemo(() => {
    return getTrackLinkDownloadModal(track);
  }, [track]);

  return (
    <Link
      {...linkProps}
      className={clsx(
        'hover:underline overflow-x-hidden overflow-ellipsis',
        className
      )}
      to={finalUri}
    >
      {plan}
    </Link>
  );
}

export function getTrackLinkDownloadModal(
  track: Track,
  {absolute}: {absolute?: boolean} = {}
): string {
  let link = `/track/${track.id}/${slugifyString(track.name)}`;
  if (absolute) {
    link = `${getBootstrapData().settings.base_url}${link}`;
  }
  return link;
}

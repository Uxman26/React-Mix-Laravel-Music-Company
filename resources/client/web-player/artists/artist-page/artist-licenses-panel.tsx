import React from 'react';
import {Artist} from '@app/web-player/artists/artist';
import {LicensingTable} from './licenses-panel/licensing-table';

interface ArtistLicensesPanelProps {
  artist: Artist;
}

export function ArtistLicensesPanel({artist}: ArtistLicensesPanelProps) {

  return (
    <div>
      <LicensingTable/>
    </div>
  );
}

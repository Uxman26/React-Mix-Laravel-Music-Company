import {ColumnConfig} from '@common/datatable/column-config';
import {DataTableEmptyStateMessage} from '@common/datatable/page/data-table-emty-state-message';
import {DataTablePage} from '@common/datatable/page/data-table-page';
import {DeleteSelectedItemsAction} from '@common/datatable/page/delete-selected-items-action';
import React, {Fragment} from 'react';
import {DialogTrigger} from '@common/ui/overlays/dialog/dialog-trigger';
import {FormattedDate} from '@common/i18n/formatted-date';
import {IconButton} from '@common/ui/buttons/icon-button';
import {DataTableAddItemButton} from '@common/datatable/data-table-add-item-button';
import {Trans} from '@common/i18n/trans';
import {EditIcon} from '@common/icons/material/Edit';
import licenseImage from './source-code.svg';
import {License} from '@app/web-player/tracks/licenses/license';
import {TrackImage} from '@app/web-player/tracks/track-image/track-image';
import {TrackLink} from '@app/web-player/tracks/track-link';
import {AlbumLink} from '@app/web-player/albums/album-link';
import {LicenseDatatablePageFilters} from './license-datatable-page-filters';
import {CreateLicenseDialog} from './create-license-dialog';
import {UpdateLicenseDialog} from './update-license-dialog';

const columnConfig: ColumnConfig<License>[] = [
  {
    key: 'track_id',
    allowsSorting: true,
    header: () => <Trans message="Track" />,
    width: 'flex-3 min-w-200',
    visibleInMode: 'all',
    body: license =>
      license.track ? (
        <div className="flex items-center gap-12">
          <TrackImage
            track={license.track}
            className="flex-shrink-0 rounded"
            size="w-34 h-34"
          />
          <TrackLink track={license.track} target="_blank" />
        </div>
      ) : null,
  },
  {
    key: 'album',
    width: 'flex-2',
    header: () => <Trans message="Album" />,
    body: license =>
      license.track?.album ? <AlbumLink album={license.track.album} /> : null,
  },
  {
    key: 'enabled',
    allowsSorting: true,
    width: 'w-100',
    header: () => <Trans message="Enabled" />,
    body: license => (license.enable ? <Trans message="Yes" /> : <Trans message="No" />),
  },
  {
    key: 'highlighted',
    allowsSorting: true,
    width: 'w-100',
    header: () => <Trans message="Highlighted" />,
    body: license => (license.highlighted ? <Trans message="Yes" /> : <Trans message="No" />),
  },
  {
    key: 'updated_at',
    allowsSorting: true,
    width: 'w-100',
    header: () => <Trans message="Last updated" />,
    body: license => <FormattedDate date={license.updated_at} />,
  },
  {
    key: 'actions',
    header: () => <Trans message="Actions" />,
    hideHeader: true,
    align: 'end',
    visibleInMode: 'all',
    width: 'w-42 flex-shrink-0',
    body: license => {
      return (
        <DialogTrigger type="modal">
          <IconButton size="md" className="text-muted">
            <EditIcon />
          </IconButton>
          <UpdateLicenseDialog license={license} />
        </DialogTrigger>
      );
    },
  },
];

export function LicensesDatatablePage() {
  return (
    <DataTablePage
      endpoint="licenses"
      title={<Trans message="Licenses" />}
      columns={columnConfig}
      filters={LicenseDatatablePageFilters}
      queryParams={{
        with: 'track.album.artists',
      }}
      actions={<Actions />}
      selectedActions={<DeleteSelectedItemsAction />}
      emptyStateMessage={
        <DataTableEmptyStateMessage
          image={licenseImage}
          title={<Trans message="No licenses have been created yet" />}
          filteringTitle={<Trans message="No matching licenses" />}
        />
      }
    />
  );
}

function Actions() {
  return (
    <Fragment>
      <DialogTrigger type="modal">
        <DataTableAddItemButton>
          <Trans message="Add new license" />
        </DataTableAddItemButton>
        <CreateLicenseDialog />
      </DialogTrigger>
    </Fragment>
  );
}

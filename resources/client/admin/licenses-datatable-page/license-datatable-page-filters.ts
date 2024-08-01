import {
  createdAtFilter,
  updatedAtFilter,
} from '@common/datatable/filters/timestamp-filters';
import {message} from '@common/i18n/message';

export const LicenseDatatablePageFilters = [
  createdAtFilter({
    description: message('Date license was created'),
  }),
  updatedAtFilter({
    description: message('Date license was last updated'),
  }),
];

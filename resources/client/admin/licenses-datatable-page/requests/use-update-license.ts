import {useMutation} from '@tanstack/react-query';
import {apiClient, queryClient} from '@common/http/query-client';
import {useTrans} from '@common/i18n/use-trans';
import {BackendResponse} from '@common/http/backend-response/backend-response';
import {toast} from '@common/ui/toast/toast';
import {message} from '@common/i18n/message';
import {DatatableDataQueryKey} from '@common/datatable/requests/paginated-resources';
import {onFormQueryError} from '@common/errors/on-form-query-error';
import {UseFormReturn} from 'react-hook-form';
import {CreateLicensePayload} from './use-create-license';
import {License} from '@app/web-player/tracks/licenses/license';

interface Response extends BackendResponse {
  license: License;
}

export interface UpdateLicensePayload extends CreateLicensePayload {
  id: number;
}

export function useUpdateLicense(form: UseFormReturn<UpdateLicensePayload>) {
  const { trans } = useTrans();
  return useMutation({
    mutationFn: (props: UpdateLicensePayload) => updateLicense(props),
    onSuccess: () => {
      toast(trans(message('License updated')));
      queryClient.invalidateQueries({
        queryKey: DatatableDataQueryKey('licenses'),
      });
    },
    onError: err => onFormQueryError(err, form),
  });
}

function updateLicense({ id, ...payload }: UpdateLicensePayload): Promise<Response> {
  return apiClient.put(`licenses/${id}`, payload).then(r => r.data);
}
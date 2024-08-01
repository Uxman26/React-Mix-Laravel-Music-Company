import {useMutation} from '@tanstack/react-query';
import {apiClient, queryClient} from '@common/http/query-client';
import {useTrans} from '@common/i18n/use-trans';
import {BackendResponse} from '@common/http/backend-response/backend-response';
import {toast} from '@common/ui/toast/toast';
import {message} from '@common/i18n/message';
import {DatatableDataQueryKey} from '@common/datatable/requests/paginated-resources';
import {onFormQueryError} from '@common/errors/on-form-query-error';
import {UseFormReturn} from 'react-hook-form';
import {Genre} from '@app/web-player/genres/genre';

interface Response extends BackendResponse {
  genre: Genre;
}

interface Feature {
  id: string;
  value: string;
}

export interface CreateLicensePayload {
  track_id: number;
  name?: string;
  price?: string;
  all_tracks?: boolean;
  allow_offer?: boolean;
  min_offer?: string;
  enable?: boolean;
  highlighted?: boolean;
  is_non_exclusive?: boolean;
  is_exclusive?: boolean;
  has_tagged_mp3?: boolean;
  has_untagged_mp3?: boolean;
  has_wav?: boolean;
  has_stems?: boolean;
  has_pdf?: boolean;
  brief?: string;
  feature_list: Feature[];
  recording?: boolean;
  distribution?: string;
  audio_streams?: string;
  video_streams?: string;
  broadcast?: boolean;
  stations?: string;
  profit?: boolean;
  license_info?: string;
}

export function useCreateLicense(form: UseFormReturn<CreateLicensePayload>) {
  const { trans } = useTrans();
  return useMutation({
    mutationFn: (props: CreateLicensePayload) => createNewLicense(props),
    onSuccess: () => {
      toast(trans(message('License created')));
      queryClient.invalidateQueries({
        queryKey: DatatableDataQueryKey('licenses'),
      });
    },
    onError: err => onFormQueryError(err, form),
  });
}

function createNewLicense(payload: CreateLicensePayload) {
  return apiClient.post<Response>('licenses', payload).then(r => r.data);
}

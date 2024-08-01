import {useDialogContext } from '@common/ui/overlays/dialog/dialog-context';
import {DialogBody} from '@common/ui/overlays/dialog/dialog-body';
import {DialogFooter} from '@common/ui/overlays/dialog/dialog-footer';
import {Dialog} from '@common/ui/overlays/dialog/dialog';
import {DialogHeader} from '@common/ui/overlays/dialog/dialog-header';
import {useForm} from 'react-hook-form';
import {Trans} from '@common/i18n/trans';
import {Button} from '@common/ui/buttons/button';
import {CrupdateLicenseForm} from './crupdate-license-form';
import {
  CreateLicensePayload,
  useCreateLicense,
} from '@app/studio/licenses-datatable-page/requests/use-create-license';

interface Props {
  trackId?: number;
}

export function CreateLicenseDialog({ trackId }: Props) {
  const { close, formId } = useDialogContext();
  const form = useForm<CreateLicensePayload>({
    defaultValues: {
      track_id: trackId,
      all_tracks: false,
      allow_offer: false,
      enable: false,
      highlighted: false,
      is_non_exclusive: false,
      is_exclusive: false,
      recording: false,
      broadcast: false,
      profit: false,
    },
  });
  const createLicense = useCreateLicense(form);

  return (
    <Dialog size="xl">
      <DialogHeader>
        <Trans message="Create new license" />
      </DialogHeader>
      <DialogBody>
        <CrupdateLicenseForm
          formId={formId}
          form={form}
          onSubmit={values => {
            createLicense.mutate(values, {
              onSuccess: () => close(),
            });
          }}
        />
      </DialogBody>
      <DialogFooter>
        <Button onClick={() => close()}>
          <Trans message="Cancel" />
        </Button>
        <Button
          form={formId}
          disabled={createLicense.isPending}
          variant="flat"
          color="primary"
          type="submit"
        >
          <Trans message="Create" />
        </Button>
      </DialogFooter>
    </Dialog>
  );
}
import {useDialogContext} from '@common/ui/overlays/dialog/dialog-context';
import {DialogBody} from '@common/ui/overlays/dialog/dialog-body';
import {DialogFooter} from '@common/ui/overlays/dialog/dialog-footer';
import {Dialog} from '@common/ui/overlays/dialog/dialog';
import {DialogHeader} from '@common/ui/overlays/dialog/dialog-header';
import {useForm} from 'react-hook-form';
import {Trans} from '@common/i18n/trans';
import {Button} from '@common/ui/buttons/button';
import {CrupdateLicenseForm} from '@app/studio/licenses-datatable-page/crupdate-license-form';
import {useUpdateLicense} from '@app/studio/licenses-datatable-page/requests/use-update-license';
import {UpdateLicensePayload} from '@app/studio/licenses-datatable-page/requests/use-update-license';
import {License} from '@app/web-player/tracks/licenses/license';

import {transformLicenseToUpdatePayload} from '@app/studio/licenses-datatable-page/requests/transform-license';

interface UpdateLicenseDialogProps {
  license: License;
}

export function UpdateLicenseDialog({ license }: UpdateLicenseDialogProps) {
  const { close, formId } = useDialogContext();
  const defaultValues = transformLicenseToUpdatePayload(license);
  const form = useForm<UpdateLicensePayload>({ defaultValues });
  const updateLicense = useUpdateLicense(form);

  return (
    <Dialog size="xl">
      <DialogHeader>
        <Trans message="Update license" />
      </DialogHeader>
      <DialogBody>
        <CrupdateLicenseForm
          formId={formId}
          form={form}
          onSubmit={values => {
            updateLicense.mutate(values, {
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
          disabled={updateLicense.isPending}
          variant="flat"
          color="primary"
          type="submit"
        >
          <Trans message="Update" />
        </Button>
      </DialogFooter>
    </Dialog>
  );
}
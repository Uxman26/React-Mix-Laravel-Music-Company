import {UseFormReturn} from 'react-hook-form';
import {Form} from '@common/ui/forms/form';
import {FormNormalizedModelField} from '@common/ui/forms/normalized-model-field';
import {Trans} from '@common/i18n/trans';
import {UpdateLicensePayload} from '@app/admin/licenses-datatable-page/requests/use-update-license';
import {FormTextField} from '@common/ui/forms/input-field/text-field/text-field';
import {FormSwitch} from '@common/ui/forms/toggle/switch';

interface Props {
  onSubmit: (values: UpdateLicensePayload) => void;
  formId: string;
  form: UseFormReturn<UpdateLicensePayload>;
}

export function CrupdateLicenseForm({ form, onSubmit, formId }: Props) {
  return (
    <Form id={formId} form={form} onSubmit={values => onSubmit(values)}>

      {/* Select track */}
      <FormNormalizedModelField
        className="mb-24"
        label={<Trans message="Track" />}
        name="track_id"
        endpoint="normalized-models/track"
        queryParams={{
          with: 'artists,album',
        }}
      />
      <FormSwitch name="all_tracks"><Trans message="All Tracks" /></FormSwitch> 

      {/* License Type & Name */}
      <FormTextField name="name" label={<Trans message="Name" />} className="mb-24" />
      <FormTextField name="price" label={<Trans message="Price" />} className="mb-24" type="number" />
      <FormSwitch name="allow_offer"><Trans message="Allow Offer" /></FormSwitch> 
      <FormTextField name="min_offer" label={<Trans message="Minimum Offer" />} className="mb-24" type="number" />
      <FormSwitch name="enable"><Trans message="Enable License" /></FormSwitch>
      <FormSwitch name="highlighted"><Trans message="Highlighted" /></FormSwitch>
      <FormSwitch name="is_non_exclusive"><Trans message="Non-Exclusive" /></FormSwitch>
      <FormSwitch name="is_exclusive"><Trans message="Exclusive" /></FormSwitch>

      {/* Files to Deliver when this license is Purchased */}
      <FormSwitch name="has_tagged_mp3"><Trans message="Include Tagged MP3" /></FormSwitch>
      <FormSwitch name="has_untagged_mp3"><Trans message="Include UnTagged MP3" /></FormSwitch>
      <FormSwitch name="has_wav"><Trans message="Include WAV" /></FormSwitch>
      <FormSwitch name="has_stems"><Trans message="Include Stems (Zip)" /></FormSwitch>
      <FormSwitch name="has_pdf"><Trans message="Include PDF" /></FormSwitch>

      {/* Optional Information */}
      <FormTextField name="brief" label={<Trans message="Brief" />} className="mb-24" inputElementType="textarea" rows={5} />
      <FormTextField name="feature_list" label={<Trans message="Feature List" />} className="mb-24" inputElementType="textarea" rows={5} />
      
      {/* Customize Contract Fields */}
      <FormSwitch name="recording"><Trans message="Used for music recording" /></FormSwitch>
      <FormTextField name="distribution" label={<Trans message="Distribution" />} className="mb-24" />
      <FormTextField name="audio_streams" label={<Trans message="Audio Streams" />} className="mb-24" />
      <FormTextField name="video_streams" label={<Trans message="Video Streams" />} className="mb-24" />
      <FormSwitch name="broadcast"><Trans message="Broadcast rights" /></FormSwitch>
      <FormTextField name="stations" label={<Trans message="Stations" />} className="mb-24" />
      <FormSwitch name="profit"><Trans message="Allow for profit performances" /></FormSwitch>
      
      {/* Customize Contract Full information */}
      <FormTextField name="license_info" label={<Trans message="License Info" />} className="mb-24" inputElementType="textarea" rows={5} />
    </Form>
  );
}
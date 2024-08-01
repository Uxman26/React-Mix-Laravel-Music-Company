import {License} from '@app/web-player/tracks/licenses/license';
import {UpdateLicensePayload} from '@app/studio/licenses-datatable-page/requests/use-update-license';

// Assuming Feature is an object with id and value properties
interface Feature {
  id: string;
  value: string;
}

function parseFeatureList(
  featureList: string | Feature[] | undefined,
): Feature[] {
  if (typeof featureList === 'string') {
    // Assuming the string is a JSON string of Feature objects
    try {
      return JSON.parse(featureList);
    } catch (e) {
      // Handle invalid JSON string
      console.error('Invalid feature_list string:', e);
      return [];
    }
  }
  return featureList ?? [];
}

export function transformLicenseToUpdatePayload(
  license: License,
): UpdateLicensePayload {
  return {
    id: license.id,
    track_id: license.track_id,
    name: license.name,
    price: license.price,
    allow_offer: license.allow_offer,
    min_offer: license.min_offer,
    enable: license.enable,
    highlighted: license.highlighted,
    is_non_exclusive: license.is_non_exclusive,
    is_exclusive: license.is_exclusive,
    has_tagged_mp3: license.has_tagged_mp3 === 'true', // Converting string to boolean
    has_untagged_mp3: license.has_untagged_mp3 === 'true', // Converting string to boolean
    has_wav: license.has_wav === 'true', // Converting string to boolean
    has_stems: license.has_stems === 'true', // Converting string to boolean
    has_pdf: license.has_pdf === 'true',
    brief: license.brief,
    feature_list: parseFeatureList(license.feature_list),
    recording: license.recording,
    distribution: license.distribution,
    audio_streams: license.audio_streams,
    video_streams: license.video_streams,
    broadcast: license.broadcast,
    stations: license.stations,
    profit: license.profit,
    license_info: license.license_info,
  };
}

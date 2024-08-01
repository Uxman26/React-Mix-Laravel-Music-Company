import {Track} from '../track';

export interface License {
  id: number;
  track_id: number;
  track?: Track;
  all_tracks?: boolean;
  name?: string;
  price?: string;
  allow_offer?: boolean;
  min_offer?: string;
  enable?: boolean;
  highlighted?: boolean;
  is_non_exclusive?: boolean;
  is_exclusive?: boolean;
  has_tagged_mp3?: string;
  has_untagged_mp3?: string;
  has_wav?: string;
  has_stems?: string;
  has_pdf?: string;
  brief?: string;
  feature_list?: string;
  recording?: boolean;
  distribution?: string;
  audio_streams?: string;
  video_streams?: string;
  broadcast?: boolean;
  stations?: string;
  profit?: boolean;
  license_info?: string;
  updated_at: string;
}
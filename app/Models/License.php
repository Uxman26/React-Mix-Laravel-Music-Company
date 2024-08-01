<?php

namespace App\Models;

use Common\Core\BaseModel;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class License extends BaseModel
{
    const MODEL_TYPE = 'license';

    protected $guarded = ['id'];

    protected $casts = [
        'id' => 'integer',
        'track_id' => 'integer',
        'all_tracks' => 'boolean',
        'allow_offer' => 'boolean',
        'min_offer' => 'string',
        'enable' => 'boolean',
        'highlighted' => 'boolean',
        'is_non_exclusive' => 'boolean',
        'is_exclusive' => 'boolean',
        'has_tagged_mp3' => 'boolean',
        'has_untagged_mp3' => 'boolean',
        'has_wav' => 'boolean',
        'has_stems' => 'boolean',
        'has_pdf' => 'boolean',
        'brief' => 'string',
        'feature_list' => 'string',
        'recording' => 'boolean',
        'distribution' => 'string',
        'audio_streams' => 'string',
        'video_streams' => 'string',
        'broadcast' => 'boolean',
        'stations' => 'string',
        'profit' => 'boolean',
        'license_info' => 'string',
    ];

    public function track(): BelongsTo
    {
        return $this->belongsTo(Track::class);
    }

    public static function filterableFields(): array
    {
        return ['name', 'price', 'enable', 'highlighted', 'is_non_exclusive', 'is_exclusive'];
    }

    public function toNormalizedArray(): array
    {
        return $this->toArray();
    }

    public function toSearchableArray(): array
    {
        return [
            'id' => $this->id,
            'track_id' => $this->track_id,
            'all_tracks' => $this->all_tracks,
            'allow_offer' => $this->allow_offer,
            'min_offer' => $this->min_offer,
            'enable' => $this->enable,
            'highlighted' => $this->highlighted,
            'is_non_exclusive' => $this->is_non_exclusive,
            'is_exclusive' => $this->is_exclusive,
            'has_tagged_mp3' => $this->has_tagged_mp3,
            'has_untagged_mp3' => $this->has_untagged_mp3,
            'has_wav' => $this->has_wav,
            'has_stems' => $this->has_stems,
            'has_pdf' => $this->has_pdf,
            'brief' => $this->brief,
            'feature_list' => $this->feature_list,
            'recording' => $this->recording,
            'distribution' => $this->distribution,
            'audio_streams' => $this->audio_streams,
            'video_streams' => $this->video_streams,
            'broadcast' => $this->broadcast,
            'stations' => $this->stations,
            'profit' => $this->profit,
            'license_info' => $this->license_info,
        ];
    }

    public static function getModelTypeAttribute(): string
    {
        return static::MODEL_TYPE;
    }
}

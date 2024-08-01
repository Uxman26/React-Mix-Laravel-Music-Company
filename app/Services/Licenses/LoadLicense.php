<?php

namespace App\Services\Licenses;

use App\Models\Artist;
use App\Models\Genre;
use App\Models\License;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class LoadLicense
{
    public function execute(License $track, string $loader): array
    {
        $data = ['track' => $track, 'loader' => $loader];

        if ($loader === 'trackPage' || 'loader' === 'editLicensePage') {
            $data['track']->load(['tags', 'genres', 'artists']);
            $data['track']->loadCount(['reposts', 'likes']);
            $data = $this->loadFullAlbum($data);
            $data['track']->makeVisible('description');
        }

        if ($loader === 'editLicensePage') {
            $data['track']->setHidden([]);
            $data['track']->setRelation(
                'artists',
                $data['track']->artists->map(
                    fn(Artist $artist) => $artist->toNormalizedArray(),
                ),
            );
            $data['track']->setRelation(
                'genres',
                $data['track']->genres->map(
                    fn(Genre $genre) => $genre->toNormalizedArray(),
                ),
            );
        }

        if ($data['track']->relationLoaded('album') && $data['track']->album) {
            $data['track']->album->addPopularityToLicenses();
        }

        return $data;
    }

    protected function loadFullAlbum(array $data): array
    {
        $data['track']->load([
            'album' => fn(BelongsTo $builder) => $builder->with([
                'artists',
                'tracks.artists',
            ]),
        ]);
        return $data;
    }
}

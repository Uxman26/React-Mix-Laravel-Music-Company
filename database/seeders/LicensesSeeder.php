<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class LicensesSeeder extends Seeder
{
    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        DB::table('licenses')->delete();
        DB::table('licenses')->insert([
            0 => array(
                'id' => 1,
                'track_id' => 533,
                'all_tracks' => NULL,
                'name' => 'Exclusive License',
                'price' => '500',
                'allow_offer' => 1,
                'min_offer' => '25',
                'enable' => 1,
                'highlighted' => 1,
                'is_non_exclusive' => 1,
                'is_exclusive' => 1,
                'has_tagged_mp3' => 1,
                'has_untagged_mp3' => 1,
                'has_wav' => 1,
                'has_stems' => 1,
                'has_pdf' => 1,
                'brief' => 'Hello there....this is my license',
                'feature_list' => 'Feature list is best',
                'recording' => 1,
                'distribution' => '500',
                'audio_streams' => '500',
                'video_streams' => '500',
                'broadcast' => 1,
                'stations' => '500',
                'profit' => 1,
                'license_info' => 'Best license INFO',
                'created_at' => '2024-05-20 00:29:11',
                'updated_at' => '2024-05-20 19:40:47',
            ),
        ]);
    }
}
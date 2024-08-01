<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLicensesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('licenses', function (Blueprint $table) {
            $table->increments('id');

            // Select track
            $table->integer('track_id')->unique()->index();
            $table->string('all_tracks')->nullable();

            // License Type & Name
            $table->string('name')->nullable();
            $table->string('price')->nullable();
            $table->boolean('allow_offer')->nullable()->default(0);
            $table->string('min_offer')->nullable();
            $table->boolean('enable')->nullable()->default(0);
            $table->boolean('highlighted')->nullable()->default(0);
            $table->boolean('is_non_exclusive')->nullable()->default(0);
            $table->boolean('is_exclusive')->nullable()->default(0);

            // Files to Deliver when this license is Purchased
            $table->boolean('has_tagged_mp3')->nullable()->default(0);
            $table->boolean('has_untagged_mp3')->nullable()->default(0);
            $table->boolean('has_wav')->nullable()->default(0);
            $table->boolean('has_stems')->nullable()->default(0);
            $table->boolean('has_pdf')->nullable()->default(0);

            // Optional Information
            $table->string('brief')->nullable(); // Heading brief for License pricing table
            $table->string('feature_list')->nullable(); // Feature list for License pricing table

            // Customize Contract Fields
            $table->boolean('recording')->nullable()->default(0); // USE FOR MUSIC RECORDING
            $table->string('distribution')->nullable(); // NUMBER OF DISTRIBUTION COPIES
            $table->string('audio_streams')->nullable(); // NUMBER OF AUDIO STREAM
            $table->string('video_streams')->nullable(); // NUMBER OF MUSIC VIDEOS
            $table->boolean('broadcast')->nullable()->default(0); // BROADCASTING RIGHTS
            $table->string('stations')->nullable(); // BROADCASTING RIGHTS - NUMBER OF RADIO STATIONS
            $table->boolean('profit')->nullable()->default(0); // ALLOW FOR PROFIT PERFORMANCES

            // Customize Contract Full information
            $table->longText('license_info')->nullable();

            $table->timestamps();

            $table->collation = config('database.connections.mysql.collation');
            $table->charset = config('database.connections.mysql.charset');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('licenses');
    }
}

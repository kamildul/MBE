<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('jobs', function (Blueprint $table) {
            $table->id();
            $table->string('shortcode');
            $table->string('title');
            $table->boolean('remote');
            $table->string('country');
            $table->string('countryCode');
            $table->string('city');
            $table->string('region');
            $table->json('locations');
            $table->string('state');
            $table->boolean('isInternal');
            $table->string('code');
            $table->timestamp('published');
            $table->string('type');
            $table->string('language');
            $table->json('department');
            $table->string('accountUid');
            $table->string('approvalStatus');
            $table->string('workplace');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('jobs');
    }
};

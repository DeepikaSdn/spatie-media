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
        Schema::create('clients', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->text('email'); 
            $table->timestamps();
        });
        // Schema::create('media', function (Blueprint $table) {
        //     $table->id();
        //     $table->string('model_type');
        //     $table->unsignedBigInteger('model_id');
        //     $table->string('collection_name');
        //     $table->string('name');
        //     $table->string('file_name');
        //     $table->string('mime_type')->nullable();
        //     $table->string('disk');
        //     $table->json('custom_properties')->nullable();
        //     $table->unsignedInteger('order_column')->nullable();
        //     $table->json('manipulations')->nullable();
        //     $table->json('responsive_images')->nullable();
        //     $table->unsignedBigInteger('size');
        //     $table->index(['model_type', 'model_id']);
        //     $table->timestamps();
       // });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('clients');
    }
};

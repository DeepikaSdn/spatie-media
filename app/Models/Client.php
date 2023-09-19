<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\MediaLibrary\HasMedia;
use Spatie\Image\Manipulations;
use Spatie\MediaLibrary\MediaCollections\Models\Media;

class Client extends Model implements HasMedia
{
    use HasFactory, InteractsWithMedia;

    protected $fillable = [
        'name',
        'email',
    ];


    // public function registerMediaCollections(): void
    // {
    //     $this->addMediaCollection('avatar')
    //         ->singleFile(); // You can also allow multiple files using ->multipleFiles()

    //     $this->addMediaCollection('thumbnails')
    //         ->singleFile()
    //         ->registerMediaConversions(function (Media $media) {
    //             $this->addMediaConversion('thumb')
    //                 ->width(100)
    //                 ->height(100);
    //         });
    // }

    // public function registerMediaConversions(Media $media = null): void
    //     {
    //         $this->addMediaConversion('thumb')
    //             ->performOnCollections('images', 'downloads')
    //             ->width(368)
    //             ->height(232);
    //     }

        public function registerMediaConversions(Media $media = null): void
        {
            $this->addMediaConversion('thumb')
                ->width(368)
                ->height(232)
                ->sharpen(10)
                ->quality(60)
                ->performOnCollections('avatar');
    
        }
}

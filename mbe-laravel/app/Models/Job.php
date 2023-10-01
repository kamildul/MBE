<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'shortcode',
        'title',
        'remote',
        'location',
        'locations',
        'state',
        'isInternal',
        'code',
        'published',
        'type',
        'language',
        'department',
        'accountUid',
        'approvalStatus',
        'workplace'
    ];
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;

    public function PostName()
    {
        return $this->belongsTo(Blog_post::class, 'post_id', 'id');
    }
}

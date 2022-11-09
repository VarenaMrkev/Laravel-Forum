<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Posts extends Model
{
    use HasFactory;

    protected $fillable = ['content'];

    //Vztah s tabulkou users
    public function users() {
        return $this->belongsTo(User::class, 'user_id');
    }

    //Vztah s tabulkou topics
    public function topics() {
        return $this->belongsTo(Topics::class, 'topics_id');
    }
}

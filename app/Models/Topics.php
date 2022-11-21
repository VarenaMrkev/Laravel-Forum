<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Topics extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'content'];

    public function scopeFilter($query, array $filters) {

        if($filters['search'] ?? false) {
            $query->where('title', 'like', '%' . request('search') . '%');
        }
    }
    // Vztah s tabulkou users
    public function users() {
        return $this->belongsTo(User::class, 'user_id');
    }
    // Vztah s tabulkou posts
    public function posts() {
        return $this->hasMany(Posts::class, 'topic_id');
    }
}

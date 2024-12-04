<?php

namespace App\Http\Controllers;

use App\Models\StoreModel;
use Illuminate\Http\Request;

class StoreController extends Controller
{
    public function allStores(){
        $stores = StoreModel::all(); 
        return response()->json([
            'message' => 'Stores retrieved successfully',
            'stores' => $stores,
        ], 200);
    }
}

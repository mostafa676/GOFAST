<?php
namespace App\Http\Controllers;
use App\Models\User;
use Hash;
use Illuminate\Http\Request;
class UserController extends Controller
{
    public function register(Request $request)
    {
        // Validate the request data
        $validated = $request->validate([
            'FName' => 'required|string|max:100',
            'LName' => 'required|string|max:100',
            'Phone' => 'required|string|unique:users,phone|max:15',
            'Password' => 'required|string|min:6|confirmed',
            'Address' => 'required|string',
        ]);
    
        // Create the user
        $user = User::create([
            'FName' => $validated['FName'],
            'LName' => $validated['LName'],
            'Phone' => $validated['Phone'],
            'Password' => bcrypt($validated['Password']),
            'Address' => $validated['Address'],
        ]);
    
        // Return a response
        return response()->json([
            'message' => 'User registered successfully',
            'user' => $user
        ], 201);
    }
    

    // User login
    public function login(Request $request)
    {
        $credentials = $request->validate([
            'Phone' => 'required|string',
            'Password' => 'required|string',
        ]);

        $user = User::where('Phone', $credentials['Phone'])->first();

        if (!$user || !Hash::check($credentials['Password'], $user->Password)) {
            return response()->json(['message' => 'Invalid credentials'], 401);
        }

        // Generate token (using Laravel Sanctum)
        $token = $user->createToken('auth_token')->plainTextToken;

        return response()->json(['user' => $user, 'token' => $token], 200);
    }

    // User logout
    public function logout(Request $request)
    {
        $request->user()->tokens()->delete();
        return response()->json(['message' => 'Logged out successfully'], 200);
    }
}

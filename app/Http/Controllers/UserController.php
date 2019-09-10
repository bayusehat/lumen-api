<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Str;
use DB;

class UserController extends Controller
{
    public function getAllUsers()
    {
        $user = DB::table('users')->get();
        return response()->json(['users' => $user], 200);
    }

    public function createUser(Request $request)
    {
        $user = DB::table('users')->insert([
            'name' => $request->name,
            'email' => $request->email,
            'password' => app('hash')->make($request->password),
            'api_token' => base64_encode(str_random(60))
        ]);

        return response()->json(['success' => true, 'user' =>  $user], 200);
    }

    public function updateUser(Request $request)
    {
        $user = DB::table('users')
                    ->where('id',$request->id)
                    ->update([
                        'name' => $request->name,
                        'email' => $request->email,
                        'password' => app('hash')->make($request->password)
                    ]);
        return response()->json(['success' => true, 'message' => 'User updated'], 200);
    }

    public function deleteUser(Request $request)
    {
        $user = DB::table('users')->where('id',$request->id);
        if($user->count() > 0){
            $user->delete();
        }
        return response()->json(['success' => true,'message' => 'Deleted'], 200);
    }

    public function ubahKey(Request $request)
    {
        $password = $request->password;
        $key = $request->header('Authorization');

        $user = DB::table('users')->where('api_token',$key);
        if($user->count() > 0){
            $data = $user->first();
            $passDB = $data->password;
            if(app('hash')->check($password,$passDB)){
            $new = $user->update([
                    'api_token' => base64_encode(str_random(60))
                ]);
                $response = array('success' => true, 'message'=> 'Key regenerated');
            }else{
                $response = array('success' => false, 'message'=> 'Password not match');
            }
        }else{
            $response = array('success' => false, 'message'=> 'User not found');
        }

        return response()->json($response);
    }
}

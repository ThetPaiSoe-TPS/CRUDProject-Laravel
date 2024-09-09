<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Request as FacadesRequest;
use RealRashid\SweetAlert\Facades\Alert;
use function PHPUnit\Framework\fileExists;

class BlogController extends Controller
{
    //list page
    public function list(){
        // get url name
        //query data from DB
        $result= Blog::select('id', 'title', 'description', 'writer', 'image', 'created_at')
        ->when(request('searchKey'), function($query){
                    $query->orWhere('title','like','%'.request('searchKey').'%');
                    $query->orWhere('description','like','%'.request('searchKey').'%');
                    $query->orWhere('writer','like','%'.request('searchKey').'%');
                    // $query-> whereAny(['title', 'writer'], 'like','%'.request('searchKey').'%');// the same as orWhere
                })
                ->orderBy('id', 'desc')-> paginate(2);
        return view('list', compact('result'));
    }

    //create blog
    public function create(Request $request){
        //for validation
        $this->checkVali($request, 'create');

        //for catch data
        $data= $this-> cltData($request);
        //store image to the folder
        $file= $request-> file('image');
        $fileName= uniqid(). $file-> getClientOriginalName();
        $file-> move(public_path().'/blogImages/', $fileName);
        $data['image']= $fileName;

        //insert data to DB
        Blog::create($data);
        // output with sweetalert
        Alert::success('Blog Created', 'Blog created successfully');
        // //go to current page(form)
        return back();
    }

    //delete blog
    public function delete($id){
        $data= Blog::find($id);
        $oldImg= $data['image'];
        // delete image
        if( file_exists(public_path('blogImages/'.$oldImg))) {
            unlink('blogImages/'.$oldImg);
        }
        Blog::find($id)-> delete();
        return back()-> with(['blogDelete'=> 'Blog deleted successfully']);
    }

    //blog details
    public function details($id){
        $data= Blog::select('id', 'title', 'description', 'image', 'writer', 'created_at')-> find($id);
        return view('details', compact('data'));
    }

    //blog update
    public function updatePage($id){
        $data= Blog::select('id', 'title', 'description', 'image', 'writer', 'created_at')-> find($id);
        return view('update', compact('data'));
    }

    //update post
    public function update(Request $request){
        $this->checkVali($request, 'update');
        $data= $this->cltData($request);
        if($request->hasFile('image')){
            // old image delete || old image name

            $oldImage= $request->oldImage;
            if(file_exists(public_path('blogImages/'.$oldImage))){
                unlink(public_path('blogImages/'.$oldImage));
            }
            // new image store

            $file= $request-> file('image');
            $fileName= uniqid().$file-> getClientOriginalName();
            $file->move(public_path().'/blogImages/', $fileName);

            // database data store?? id
            $data['image']= $fileName;

        }
        Blog::where('id', $request-> id)-> update($data);

        // // output with sweetalert
        Alert::success('Blog Updated', 'Blog updated successfully');
        return to_route('listPage');

    }


    //private functions
    //validation
    private function checkVali($request, $action){
        $request['image']= $action== 'create'? 'required|mimes:jpg,png,jpeg': ' ';
        $request-> validate([
            // 'image'=> $request['image'],
            'title'=> 'required|unique:blogs,title,'.$request->id,
            'description' => 'required',
            'writer'=> 'required'
        ]);

        // $valiMsg= [
        //     'img.required'=> 'error',
        //     'title.required'=> 'error',
        //     'desc.required'=> 'error',
        //     'writer.required'=> 'error',
        // ];
        // $validated= $request-> validate($valiRule, $valiMsg);
    }

    //collect data
    private function cltData($request){
        return[
            'title'=> $request-> title,
            'description'=> $request-> description,
            'writer'=> $request-> writer
        ];
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Kategori;
use App\Models\Status;
use App\Models\Test;
use Illuminate\Http\Request;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\Http;

class TestController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $client = new \GuzzleHttp\Client();

        $response = Http::asForm()->post('https://recruitment.fastprint.co.id/tes/api_tes_programmer', [
            'username' => 'tesprogrammer221223C03',
            'password' => 'a54d0dc44bfde1b72ffe257e6a57969f'
        ]);

        $data = json_decode($response->body());
        // dd($data->data);
        // echo "<pre>";

            foreach($data->data as  $value) {

                $kategori[] = $value->kategori;
                $status[] = $value->status;
            }
            $arr_unique = array_unique($kategori);
            $simpan = [];
            foreach($arr_unique as $k){
                $simpan = [
                    'nama_kategori' => $k,
                ];
                Kategori::UpdateOrCreate([
                    'nama_kategori' => $simpan['nama_kategori']
                ]);
            }
            $arr_status = array_unique($status);
            $status = [];
            foreach($arr_status as $s){
                $status = [
                    'nama_status' => $s,
                ];
                Status::UpdateOrCreate([
                    'nama_status' => $status['nama_status']
                ]);
            }



            $tambah=[];
            $kategori = Kategori::all();
            foreach($data->data as $k){
                // $value[] = $k;
                foreach($kategori as $ka){
                    // echo $k->id_kategori."|".$k->nama_kategori.'<br>';
                    if ($k->kategori == $ka->nama_kategori) {
                        if($k->status == 'bisa dijual'){
                            $status = 1;
                        }else{
                            $status = 2;
                        }

                        Test::UpdateOrCreate(
                            ['id_produk' => $k->id_produk],
                            [
                                'id_produk' => $k->id_produk,
                                'nama_produk' => $k->nama_produk,
                                'harga' => $k->harga,
                                'kategori_id' => $ka->id_kategori,
                                'status_id' => $status
                            ]
                        );
                    }
                }
            }




        $tampil = Test::where('status_id',1)->get();
        return view('index',compact('tampil'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $kategori = Kategori::all();
        $status = Status::all();
        return view('tambah', compact('kategori','status'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $requestData = $request->validate([
            'nama_produk' => 'required',
            'harga' => 'required|numeric',
            'kategori_id' => 'required',
            'status_id' => 'required',
        ]);

        Test::create($requestData);
        return redirect()->route('test.index')->with(['success' => 'Data Berhasil Disimpan']);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Test  $test
     * @return \Illuminate\Http\Response
     */
    public function show(Test $test)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Test  $test
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $kategori = Kategori::all();
        $status = Status::all();
        $produk = Test::where('id_produk', $id)->first();
        return view('edit',compact('produk','status','kategori'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Test  $test
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = $request->validate([
            'nama_produk' => 'required',
            'harga' => 'required|numeric',
            'kategori_id' => 'required',
            'status_id' => 'required',
        ]);

        Test::where('id_produk',$id)->update($data);
        return redirect()->route('test.index')->with('success', 'Data Telah di Ubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Test  $test
     * @return \Illuminate\Http\Response
     */
    public function destroy($test)
    {
        Test::where('id_produk', $test)->delete();
        return redirect()->route('test.index')->with(['error' => 'Data Berhasil Dihapus!']);
    }
}

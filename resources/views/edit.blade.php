@extends('app')
@section('content')

<div class="container mt-5 mb-5">
    <div class="row">
        <div class="col-md-12">
            <div class="card border-0 shadow rounded">
                <div class="card-body">
                    <form action="{{ route('test.update', $produk->id_produk) }}" method="POST" >
                        @csrf
                        @method('PUT')

                        <div class="form-group">
                            <label class="font-weight-bold">NAMA PRODUK</label>
                            <input type="text" class="form-control @error('nama_produk') is-invalid @enderror" name="nama_produk" value="{{ $produk->nama_produk }}" placeholder="Masukkan Nama Produk">

                            <!-- error message untuk title -->
                            @error('nama_produk')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label class="font-weight-bold">HARGA</label>
                            <input type="number" class="form-control @error('harga') is-invalid @enderror" name="harga" value="{{ $produk->harga }}" placeholder="Masukkan Harga">

                            <!-- error message untuk title -->
                            @error('harga')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label class="font-weight-bold">Kategori</label>
                            <select class="form-control @error('kategori_id') is-invalid @enderror" id="kategori_id" name="kategori_id">
                                <option value="" readonly>Pilih Kategori</option>
                                @foreach ($kategori as $k)
                                <option value="{{ $k->id_kategori }}" {{ $k->id_kategori == $produk->kategori_id ? 'selected' : '' }}>{{ $k->nama_kategori }}</option>
                                @endforeach
                            </select>
                            @error('kategori_id')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label class="font-weight-bold">Status</label>
                            <select class="form-control @error('status_id') is-invalid @enderror" id="status_id" name="status_id">
                                <option value="" readonly>Pilih Status</option>
                                @foreach ($status as $s)
                                <option value="{{ $s->id_status }}" {{ $s->id_status == $produk->status_id ? 'selected' : '' }}>{{ $s->nama_status }}</option>
                                @endforeach
                            </select>
                            @error('status_id')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>


                        <button type="submit" class="btn btn-md btn-primary">UBAH</button>
                        {{-- <button type="reset" class="btn btn-md btn-warning">RESET</button> --}}

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection

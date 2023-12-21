@extends('app')
@section('content')

        <div class="container mt-5">
            <div class="row">
                <div class="col-md-12">
                    <div class="card border-0 shadow rounded">
                        <div class="card-body">
                            @if ($message = Session::get('success'))
                                <div class="alert alert-success alert-block">
                                <button type="button" class="close" data-dismiss="alert">×</button>
                                    <strong>{{ $message }}</strong>
                                </div>
                            @endif
                            @if ($message = Session::get('error'))
                                <div class="alert alert-danger alert-block">
                                <button type="button" class="close" data-dismiss="alert">×</button>
                                <strong>{{ $message }}</strong>
                                </div>
                            @endif
                            <a href="{{ route('test.create') }}" class="btn btn-md btn-success mb-3">TAMBAH POST</a>
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th scope="col">NO</th>
                                    <th scope="col">Nama</th>
                                    <th scope="col">Harga</th>
                                    <th scope="col">Kategori</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Aksi</th>
                                </tr>
                                </thead>
                                <tbody>
                                @forelse ($tampil as $a)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $a->nama_produk }}</td>
                                        <td>{{ $a->harga }}</td>
                                        <td>{{ $a->kategori->nama_kategori }}</td>
                                        <td>{{ $a->status->nama_status }}</td>
                                        <td class="text-center">
                                            <form onsubmit="return confirm('Apakah Anda Yakin Hapus Data ?');" action="{{ route('test.destroy',
                                            ['test' => $a->id_produk]) }}" method="POST">

                                                <a href="{{ route('test.edit',
                                                $a->id_produk) }}" class="btn btn-sm btn-primary">EDIT</a>

                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-sm btn-danger">HAPUS</button>
                                            </form>
                                        </td>
                                    </tr>
                                @empty
                                    <div class="alert alert-danger">
                                        Data Post belum Tersedia.
                                    </div>
                                @endforelse
                                {{-- @foreach ($tampil as $item)
                                    <tr>
                                        <td>{{ $item['id_produk'] }}</td>
                                        <td>{{ $item['nama_produk'] }}</td>
                                        <td>{{ $item['kategori'] }}</td>
                                        <td>{{ $item['harga'] }}</td>
                                        <td>{{ $item['status'] }}</td>
                                    </tr>
                                @endforeach --}}
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
@endsection

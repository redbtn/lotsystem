@extends($layout)

@section('content-header')
	<h1>
		{!! $title or 'Data Packaging' !!} ({!! $packagings->count() !!})
		&middot;
		<small>{!! link_to_route('admin.packagings.create', 'Tambah Data') !!}</small>
	</h1>
@stop

@section('content')

	@if(isset($search))
		@include('admin::packagings.search-form')
	@endif

	<table class="table">
		<thead>
			<th>No</th>
			<th>Kode Packing</th>
			<th>ID CPU</th>
			<th>Tanggal Masuk</th>
			<th>Jumlah (kg)</th>
			<th>Harga</th>
			<th class="text-center">Action</th>
		</thead>
		<tbody>
			@foreach ($packagings as $packaging)
			<tr>
				<td>{!! $no !!}</td>
				<td>{!! $packaging->kode !!}</td>
				<td>{!! $packaging->cpu_id !!}</td>
				<td>{!! $packaging->date_in !!}</td>
				<td>{!! $packaging->amount!!}</td>
				<td>{!! $packaging->price !!}</td>
				<td class="text-center">
					<a href="{!! route('admin.packagings.edit', $packaging->id) !!}">Edit</a>
					&middot;
					@include('admin::partials.modal', ['data' => $packaging, 'name' => 'packagings'])
				</td>
			</tr>
			<?php $no++ ;?>
			@endforeach
		</tbody>
	</table>

	<div class="text-center">
		{!! pagination_links($packagings) !!}
	</div>
@stop

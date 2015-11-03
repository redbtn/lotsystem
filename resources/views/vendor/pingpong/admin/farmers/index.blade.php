@extends($layout)

@section('content-header')
	<h1>
		{!! $title or 'List Petani' !!} ({!! $farmers->count() !!})
		&middot;
		<small>{!! link_to_route('admin.farmers.create', 'Tambah Data') !!}</small>
	</h1>
@stop

@section('content')

	@if(isset($search))
		@include('admin::farmers.search-form')
	@endif

	<table class="table">
		<thead>
			<th>No</th>
			<th>Nama Petani</th>
			<th>Kode</th>
			<th>Tgl Daftar</th>
			<th>Pendaftar</th>
			<th>Tgl Inspeksi</th>
			<th>Inspektor</th>
			<th>Jumlah Kebun</th>
			<th class="text-center">Action</th>
		</thead>
		<tbody>
			@foreach ($farmers as $farmer)
			<tr>
				<td>{!! $no !!}</td>
				<td>{!! $farmer->name !!}</td>
				<td>{!! $farmer->kode !!}</td>
				<td>{!! $farmer->register_date !!}</td>
				<td>{!! $farmer->registrar !!}</td>
				<td>{!! $farmer->inspection_date !!}</td>
				<td>{!! $farmer->inspector !!}</td>
				<td>{!! $farmer->farm_amount !!}</td>
				<td class="text-center">
					<a href="{!! route('admin.farmers.edit', $farmer->id) !!}">Edit</a>
					&middot;
					@include('admin::partials.modal', ['data' => $farmer, 'name' => 'farmers'])
				</td>
			</tr>
			<?php $no++ ;?>
			@endforeach
		</tbody>
	</table>

	<div class="text-center">
		{!! pagination_links($farmers) !!}
	</div>
@stop

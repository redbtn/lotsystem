@extends($layout)

@section('content-header')
	<h1>
		{!! $title or 'Data Prosesing' !!} ({!! $processings->count() !!})
		&middot;
		<small>{!! link_to_route('admin.processings.create', 'Tambah Data') !!}</small>
	</h1>
@stop

@section('content')

	@if(isset($search))
		@include('admin::processings.search-form')
	@endif

	<table class="table">
		<thead>
			<th>No</th>
			<th>ID Petani</th>
			<th>ID CPU</th>
			<th>Tanggal Masuk</th>
			<th>Jumlah (kg)</th>
			<th>Jenis Gula</th>
			<th>Harga</th>
			<th class="text-center">Action</th>
		</thead>
		<tbody>
			@foreach ($processings as $processing)
			<tr>
				<td>{!! $no !!}</td>
				<td>{!! $processing->farmer_id !!}</td>
				<td>{!! $processing->cpu_id !!}</td>
				<td>{!! $processing->date_in !!}</td>
				<td>{!! $processing->amount!!}</td>
				<td>{!! $processing->jenis !!}</td>
				<td>{!! $processing->price !!}</td>
				<td class="text-center">
					<a href="{!! route('admin.processings.edit', $processing->id) !!}">Edit</a>
					&middot;
					@include('admin::partials.modal', ['data' => $processing, 'name' => 'processings'])
				</td>
			</tr>
			<?php $no++ ;?>
			@endforeach
		</tbody>
	</table>

	<div class="text-center">
		{!! pagination_links($processings) !!}
	</div>
@stop

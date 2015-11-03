@extends($layout)

@section('content-header')
	<h1>
		{!! $title or 'Daftar Produksi' !!} ({!! $productions->count() !!})
		&middot;
		<small>{!! link_to_route('admin.productions.create', 'Tambah Data') !!}</small>
	</h1>
@stop

@section('content')

	@if(isset($search))
		@include('admin::productions.search-form')
	@endif

	<table class="table">
		<thead>
			<th>No</th>
			<th>ID Kebun</th>
			<th>ID Petani</th>
			<th>Hasil Produksi (Umur 5-10thn)</th>
			<th>Hasil Produksi (Umur 10thn>)</th>
			<th>Hasil Per Pohon</th>
			<th>Perkiraan per bulan</th>
			<th>Perkiraan per tahun</th>
			<th class="text-center">Action</th>
		</thead>
		<tbody>
			@foreach ($productions as $production)
			<tr>
				<td>{!! $no !!}</td>
				<td>{!! $production->farm_id !!}</td>
				<td>{!! $production->farmer_id !!}</td>
				<td>{!! $production->amount_kg_5 !!}</td>
				<td>{!! $production->amount_kg_10!!}</td>
				<td>{!! $production->amount_gr !!}</td>
				<td>{!! $production->estimation_monthly !!}</td>
				<td>{!! $production->estimation_yearly !!}</td>
				<td class="text-center">
					<a href="{!! route('admin.productions.edit', $production->id) !!}">Edit</a>
					&middot;
					@include('admin::partials.modal', ['data' => $production, 'name' => 'productions'])
				</td>
			</tr>
			<?php $no++ ;?>
			@endforeach
		</tbody>
	</table>

	<div class="text-center">
		{!! pagination_links($productions) !!}
	</div>
@stop

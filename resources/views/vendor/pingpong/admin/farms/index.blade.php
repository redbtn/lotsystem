@extends($layout)

@section('content-header')
	<h1>
		{!! $title or 'List Kebun' !!} ({!! $farms->count() !!})
		&middot;
		<small>{!! link_to_route('admin.farms.create', 'Tambah Data') !!}</small>
	</h1>
@stop

@section('content')

	@if(isset($search))
		@include('admin::farms.search-form')
	@endif

	<table class="table">
		<thead>
			<th>No</th>
			<th>Kode Petani</th>
			<th>Luas Kebun (m3)</th>
			<th>Jumlah Pohon Kelapa</th>
			<th>Jumlah Pohon Kelapa Dideres</th>
			<th>Status Penderes</th>
			<th>Status Organik</th>
			<th>Keterangan</th>
			<th>Tanaman Organik Lain</th>
			<th>Pemakaian Terakhir Input Kimia</th>
			<th class="text-center">Action</th>
		</thead>
		<tbody>
			@foreach ($farms as $farm)
			<tr>
				<td>{!! $no !!}</td>
				<td>{!! $farm->farmer_kode !!}</td>
				<td>{!! $farm->squaremeter !!}</td>
				<td>{!! $farm->ccnut_tree_amount !!}</td>
				<td>{!! $farm->ccnut_dideres_amount !!}</td>
				<td>{!! $farm->penderes_status !!}</td>
				<td>{!! $farm->organic_status !!}</td>
				<td>{!! $farm->specific_desc !!}</td>
				<td>{!! $farm->other_organic_trees !!}</td>
				<td>{!! $farm->chemical_last_use !!}</td>
				<td class="text-center">
					<a href="{!! route('admin.farms.edit', $farm->id) !!}">Edit</a>
					&middot;
					@include('admin::partials.modal', ['data' => $farm, 'name' => 'farms'])
				</td>
			</tr>
			<?php $no++ ;?>
			@endforeach
		</tbody>
	</table>

	<div class="text-center">
		{!! pagination_links($farms) !!}
	</div>
@stop

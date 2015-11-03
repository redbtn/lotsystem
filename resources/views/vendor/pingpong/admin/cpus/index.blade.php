@extends($layout)

@section('content-header')
	<h1>
		{!! $title or 'List CPU' !!} ({!! $cpus->count() !!})
		&middot;
		<small>{!! link_to_route('admin.cpus.create', 'Tambah Baru') !!}</small>
	</h1>
@stop

@section('content')

	@if(isset($search))
		@include('admin::cpus.search-form')
	@endif

	<table class="table">
		<thead>
			<th>No</th>
			<th>Kode CPU</th>
			<th>Lokasi</th>
			<th>Jenis</th>
			<th>Penanggung Jawab</th>
			<th class="text-center">Action</th>
		</thead>
		<tbody>
			@foreach ($cpus as $cpu)
			<tr>
				<td>{!! $no !!}</td>
				<td>{!! $cpu->kode !!}</td>
				<td>{!! $cpu->location !!}</td>
				<td>{!! $cpu->type !!}</td>
				<td>{!! $cpu->pic_name !!}</td>
				<td class="text-center">
					<a href="{!! route('admin.cpus.edit', $cpu->id) !!}">Edit</a>
					&middot;
					@include('admin::partials.modal', ['data' => $cpu, 'name' => 'cpus'])
				</td>
			</tr>
			<?php $no++ ;?>
			@endforeach
		</tbody>
	</table>

	<div class="text-center">
		{!! pagination_links($cpus) !!}
	</div>
@stop

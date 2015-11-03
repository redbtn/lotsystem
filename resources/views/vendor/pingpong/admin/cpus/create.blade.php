@extends($layout)

@section('content-header')
	<h1>
		Tambah Petani
		&middot;
		@if(isOnPages())
		<small>{!! link_to_route('admin.farmers.index', 'Back') !!}</small>
{{-- 		@else
		<small>{!! link_to_route('admin.farms.index', 'Back') !!}</small> --}}
		@endif
	</h1>
@stop

@section('content')

	<div>
		@include('admin::farmers.form')
	</div>
<script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  </script>
@stop
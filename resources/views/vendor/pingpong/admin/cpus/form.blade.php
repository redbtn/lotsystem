@if(isOnPages())
	@if(isset($model))
	{!! Form::model($model, ['method' => 'PUT', 'files' => true, 'route' => ['admin.farmers.update', $model->id]]) !!}
	@else
	{!! Form::open(['files' => true, 'route' => 'admin.farmers.store']) !!}
	@endif
@endif
	<div class="form-group">
		{!! Form::label('name', 'Nama Petani:') !!}
		{!! Form::text('name', null, ['class' => 'form-control']) !!}
		{!! $errors->first('name', '<div class="text-danger">:message</div>') !!}
	</div>
	<div class="form-group">
		{!! Form::label('kode', 'Kode Petani:') !!}
		{!! Form::text('kode', null, ['class' => 'form-control']) !!}
		{!! $errors->first('kode', '<div class="text-danger">:message</div>') !!}
	</div>
	<div class="form-group">
		{!! Form::label('cuc_inspection_date', 'Tanggal Inspeksi CUC:') !!}
		{!! Form::text('cuc_inspection_date', Input::old('informasi'), array('class' => 'form-control', 'id' => 'datepicker0')) !!}
		{!! $errors->first('cuc_inspection_date', '<div class="text-danger">:message</div>') !!}
	</div>
	<div class="form-group">
		{!! Form::label('contract_date', 'Tanggal Kontrak:') !!}
		{!! Form::text('contract_date', Input::old('info'), array('class' => 'form-control', 'id' => 'datepicker1')) !!}
		{!! $errors->first('contract_date', '<div class="text-danger">:message</div>') !!}
	</div>
	<div class="form-group">
		{!! Form::label('name', 'Nama Pendaftar:') !!}
		{!! Form::text('name', null, ['class' => 'form-control']) !!}
		{!! $errors->first('name', '<div class="text-danger">:message</div>') !!}
	</div>	
	<div class="form-group">
		{!! Form::label('register_date', 'Tanggal Pendaftaran:') !!}
		{!! Form::text('register_date', Input::old('formasi'), array('class' => 'form-control', 'id' => 'datepicker2')) !!}
		{!! $errors->first('register_date', '<div class="text-danger">:message</div>') !!}
	</div>
	<div class="form-group">
		{!! Form::label('name', 'Nama Inspektor:') !!}
		{!! Form::text('name', null, ['class' => 'form-control']) !!}
		{!! $errors->first('name', '<div class="text-danger">:message</div>') !!}
	</div>	
	<div class="form-group">
		{!! Form::label('inspection_date', 'Tanggal Inspeksi:') !!}
		{!! Form::text('inspection_date', Input::old('form'), array('class' => 'form-control', 'id' => 'datepicker3')) !!}
		{!! $errors->first('inspection_date', '<div class="text-danger">:message</div>') !!}
	</div>
	<div class="form-group">
		{!! Form::label('name', 'Jumlah Kebun:') !!}
		{!! Form::text('name', null, ['class' => 'form-control']) !!}
		{!! $errors->first('name', '<div class="text-danger">:message</div>') !!}
	</div>
	<div class="form-group">
		{!! Form::label('name', 'ID Kebun:') !!}
		{!! Form::text('name', null, ['class' => 'form-control']) !!}
		{!! $errors->first('name', '<div class="text-danger">:message</div>') !!}
	</div>					
{{-- 	<div class="form-group">
		{!! Form::label('dukuh_id', 'Asal Dukuh:') !!}
 		{!! Form::select('size', array('L' => 'Large', 'S' => 'Small')) !!}
		{!! $errors->first('dukuh_id', '<div class="text-danger">:message</div>') !!}
	</div> --}}
	<div class="form-group">
		{!! Form::label('dukuh_id', 'Dukuh:') !!}
		{!! Form::select('dukuh_id', $dukuhs, null, ['class' => 'form-control']) !!}
		{!! $errors->first('dukuh_id', '<div class="text-danger">:message</div>') !!}
	</div>			
{{-- 	@if(! isOnPages())
	<div class="form-group">
		{!! Form::label('farm_id', 'Kebun:') !!}
		{!! Form::select('farm_id', $farms, null, ['class' => 'form-control']) !!}
		{!! $errors->first('farm_id', '<div class="text-danger">:message</div>') !!}
	</div>
	@else
	{!! Form::hidden('type', 'page') !!}
	@endif --}}
{{-- 	<div class="form-group">
		{!! Form::label('body', 'Body:') !!}
		{!! Form::textarea('body', null, ['class' => 'form-control', 'id' => 'ckeditor']) !!}
		{!! $errors->first('body', '<div class="text-danger">:message</div>') !!}
	</div>
	<div class="form-group">
		{!! Form::label('image', 'Image:') !!}
		{!! Form::file('image', ['class' => 'form-control']) !!}
		{!! $errors->first('image', '<div class="text-danger">:message</div>') !!}
	</div>
	@if(isset($model))
	<div class="form-group">
		@if($model->image)
		<img class="img-responsive" src="{!! asset('images/articles/' . $model->image) !!}">
		@endif
	</div>
	@endif --}}
	<div class="form-group">
		{!! Form::submit(isset($model) ? 'Update' : 'Save', ['class' => 'btn btn-primary']) !!}
	</div>
{!! Form::close() !!}



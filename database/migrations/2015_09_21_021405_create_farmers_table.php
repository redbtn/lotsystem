<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFarmersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('farmers', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('kode')->unique();            
            $table->timestamp('contract_date');
            $table->timestamp('register_date');
            $table->tinyInteger('registrar_id');
            $table->timestamp('inspection_date');
            $table->tinyInteger('inspector_id');
            $table->integer('jml_kebun')->unsigned();
            $table->tinyInteger('kebun_id');
            $table->integer('luas_area')->unsigned();
            $table->tinyInteger('dukuh_id');
            $table->timestamps();
        });
        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('farmers');
    }
}

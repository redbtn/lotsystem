<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFarmsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('farms', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('jml_pohon')->unsigned();
            $table->integer('jml_dideres')->unsigned();
            $table->integer('perkiraan_produksi')->unsigned();
            $table->string('status');
            $table->string('ket_khusus');
            $table->timestamps();
        });
        Schema::table('farms', function ($table) {
            $table->string('farmer_kode');
            $table->foreign('farmer_kode')->references('kode')->on('farmers');
});
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('farms');
    }
}
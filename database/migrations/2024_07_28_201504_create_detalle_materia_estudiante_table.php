<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDetalleMateriaEstudianteTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('detalle_materia_estudiante', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('fk_id_estudiante')->nullable();
            $table->unsignedInteger('fk_id_materia')->nullable();
            $table->date('fecha de inicio')->nullable();
            $table->date('fecha final')->nullable();
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
        Schema::dropIfExists('detalle_materia_estudiante');
    }
}

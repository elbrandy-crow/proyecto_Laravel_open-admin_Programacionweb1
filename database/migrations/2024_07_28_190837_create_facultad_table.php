<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFacultadTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('materias', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nombre');
            $table->string('descripcion')->nullable();
            $table->unsignedInteger('fk_id_facultad'); // Cambia a unsignedInteger para coincidir con la llave primaria de facultad
            $table->timestamps();

            // Definir la llave foránea
            $table->foreign('fk_id_facultad')
                  ->references('id')
                  ->on('facultad')
                  ->onDelete('cascade'); // Opcional: Define qué hacer cuando se elimina una facultad
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('materias', function (Blueprint $table) {
            // Eliminar la llave foránea antes de eliminar la tabla
            $table->dropForeign(['fk_id_facultad']);
        });

        Schema::dropIfExists('materias');
    }
}
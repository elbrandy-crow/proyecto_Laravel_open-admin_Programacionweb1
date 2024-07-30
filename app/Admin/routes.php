<?php



use App\Admin\Controllers\AulaController;
use App\Admin\Controllers\CursosController;
use App\Admin\Controllers\Detalle_materia_docenteController;
use App\Admin\Controllers\Detalle_materia_estudianteController;
use App\Admin\Controllers\notas_estudiantesController;
use App\Admin\Controllers\Usuario_docenteController;
use App\Admin\Controllers\Usuario_estudianteController;
use Illuminate\Routing\Router;
use App\Admin\Controllers\FacultadController;
use OpenAdmin\Admin\Facades\Admin;
use App\Admin\Controllers\MateriasController;
use App\Admin\Controllers\DocentesController;
use App\Admin\Controllers\EstudiantesController;
Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('facultas', FacultadController::class);
    $router->resource('materias', MateriasController::class);
    $router->resource('docentes', DocentesController::class);
    $router->resource('estudiantes', EstudiantesController::class);
    $router->resource('detalle_materia_estudiantes', Detalle_materia_estudianteController::class);
    $router->resource('detalle_materia_docentes', Detalle_materia_docenteController::class);
    $router->resource('notas_estudiantes', notas_estudiantesController::class);
    $router->resource('aulas', AulaController::class);
    $router->resource('cursos', CursosController::class);
    $router->resource('usuario_docentes', Usuario_docenteController::class);
    $router->resource('usuario_estudiantes', Usuario_estudianteController::class);
});

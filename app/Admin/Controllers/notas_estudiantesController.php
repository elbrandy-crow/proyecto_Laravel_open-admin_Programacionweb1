<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\notas_estudiantes;

class notas_estudiantesController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'notas_estudiantes';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new notas_estudiantes());

        $grid->column('id', __('Id'));
        $grid->column('puntaje', __('Puntaje'));
        $grid->column('fk_id_estudiante_materia', __('Fk id estudiante materia'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(notas_estudiantes::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('puntaje', __('Puntaje'));
        $show->field('fk_id_estudiante_materia', __('Fk id estudiante materia'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new notas_estudiantes());

        $form->number('puntaje', __('Puntaje'));
        $form->number('fk_id_estudiante_materia', __('Fk id estudiante materia'));

        return $form;
    }
}

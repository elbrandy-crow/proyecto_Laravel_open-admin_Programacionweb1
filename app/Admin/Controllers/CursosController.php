<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\cursos;

class CursosController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'cursos';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new cursos());

        $grid->column('id', __('Id'));
        $grid->column('fecha de inicio', __('Fecha de inicio'));
        $grid->column('fecha final', __('Fecha final'));
        $grid->column('fk_id_docentes', __('Fk id docentes'));
        $grid->column('fk_id_materias', __('Fk id materias'));
        $grid->column('fk_id_aulas', __('Fk id aulas'));
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
        $show = new Show(cursos::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('fecha de inicio', __('Fecha de inicio'));
        $show->field('fecha final', __('Fecha final'));
        $show->field('fk_id_docentes', __('Fk id docentes'));
        $show->field('fk_id_materias', __('Fk id materias'));
        $show->field('fk_id_aulas', __('Fk id aulas'));
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
        $form = new Form(new cursos());

        $form->date('fecha_de_inicio', __('Fecha de inicio'))->default(date('Y-m-d'));
        $form->date('fecha_final', __('Fecha final'))->default(date('Y-m-d'));
        $form->number('fk_id_docentes', __('Fk id docentes'));
        $form->number('fk_id_materias', __('Fk id materias'));
        $form->number('fk_id_aulas', __('Fk id aulas'));

        return $form;
    }
}

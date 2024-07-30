<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\docentes;

class DocentesController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'docentes';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new docentes());

        $grid->column('id', __('Id'));
        $grid->column('nombre', __('Nombre'));
        $grid->column('apellido', __('Apellido'));
        $grid->column('fk_id_facultad', __('Fk id facultad'));
        $grid->column('telefono', __('Telefono'));
        $grid->column('CI', __('CI'));
        $grid->column('fecha de contratación', __('Fecha de contratación'));
        $grid->column('sueldo', __('Sueldo'));
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
        $show = new Show(docentes::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('nombre', __('Nombre'));
        $show->field('apellido', __('Apellido'));
        $show->field('fk_id_facultad', __('Fk id facultad'));
        $show->field('telefono', __('Telefono'));
        $show->field('CI', __('CI'));
        $show->field('fecha de contratación', __('Fecha de contratación'));
        $show->field('sueldo', __('Sueldo'));
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
        $form = new Form(new docentes());

        $form->text('nombre', __('Nombre'));
        $form->text('apellido', __('Apellido'));
        $form->number('fk_id_facultad', __('Fk id facultad'));
        $form->text('telefono', __('Telefono'));
        $form->number('CI', __('CI'));
        $form->date('fecha de contratación', __('Fecha de contratación'))->default(date('Y-m-d'));
        $form->number('sueldo', __('Sueldo'));

        return $form;
    }
}

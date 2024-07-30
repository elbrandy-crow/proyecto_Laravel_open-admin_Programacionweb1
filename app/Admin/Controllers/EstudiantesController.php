<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\estudiantes;

class EstudiantesController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'estudiantes';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new estudiantes());

        $grid->column('id', __('Id'));
        $grid->column('nombre', __('Nombre'));
        $grid->column('apellido', __('Apellido'));
        $grid->column('telefono', __('Telefono'));
        $grid->column('CI', __('CI'));
        $grid->column('Email', __('Email'));
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
        $show = new Show(estudiantes::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('nombre', __('Nombre'));
        $show->field('apellido', __('Apellido'));
        $show->field('telefono', __('Telefono'));
        $show->field('CI', __('CI'));
        $show->field('Email', __('Email'));
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
        $form = new Form(new estudiantes());

        $form->text('nombre', __('Nombre'));
        $form->text('apellido', __('Apellido'));
        $form->number('telefono', __('Telefono'));
        $form->number('CI', __('CI'));
        $form->email('Email', __('Email'));

        return $form;
    }
}

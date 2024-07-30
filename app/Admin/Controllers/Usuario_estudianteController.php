<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\usuario_estudiante;

class Usuario_estudianteController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'usuario_estudiante';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new usuario_estudiante());

        $grid->column('id', __('Id'));
        $grid->column('fk_id_usuario', __('Fk id usuario'));
        $grid->column('fk_id_estudiante', __('Fk id estudiante'));
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
        $show = new Show(usuario_estudiante::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('fk_id_usuario', __('Fk id usuario'));
        $show->field('fk_id_estudiante', __('Fk id estudiante'));
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
        $form = new Form(new usuario_estudiante());

        $form->number('fk_id_usuario', __('Fk id usuario'));
        $form->number('fk_id_estudiante', __('Fk id estudiante'));

        return $form;
    }
}

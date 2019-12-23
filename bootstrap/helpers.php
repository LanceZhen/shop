<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/12/23
 * Time: 22:31
 */
function route_class()
{
    return str_replace('.', '-', Route::currentRouteName());
}
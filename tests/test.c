/*
** EPITECH PROJECT, 2023
** devops
** File description:
** test.c
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>

#include "my.h"

Test(test1, add_return_value)
{
    int a = 1;
    int b = 2;

    cr_assert(add(a, b) == 3);
}

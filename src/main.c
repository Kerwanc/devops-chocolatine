/*
** EPITECH PROJECT, 2023
** devops
** File description:
** main.c
*/

#include "my.h"

#include <stdio.h>

int main(int ac, char const *[])
{
    if (ac != 1) {
        return 84;
    }
    printf("%d\n", add(1, 2));
    return 0;
}

##
## EPITECH PROJECT, 2021
## B-PSU-400-STG-4-1-malloc-auguste.thomann
## File description:
## script_asm
##

if [ -z $1 ]
then
    echo "No input file"
    exit
fi

nasm -f elf64 $1 -o test.o
gcc -fno-builtin main_strlen.c test.o

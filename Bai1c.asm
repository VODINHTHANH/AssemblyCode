.data
str: .space 11 
.text
.globl main
main: 
la $a0, str 
li $a1, 11 
li $v0, 8 
syscall
li $v0, 4 
syscall
li $v0, 10 
syscall

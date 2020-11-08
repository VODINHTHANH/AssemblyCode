.data
    n1: .asciiz "Enter a: "
    n2: .asciiz "Enter b: "
    n3: .asciiz "Enter c: "
    n3: .asciiz "Enter d: "
    n4: .asciiz "Enter x: "
    result: .asciiz "f = a.x^3 -b.x^2 + c.x -d "

.text
        #getting first input.
    la $a0, n1
    li $v0, 4
    syscall
    li $v0, 5
    syscall
    move $s0, $v0
    #getting second input.
    la $a0, n2
    li $v0, 4
    syscall
    li $v0, 5
    syscall
    move $s1, $v0
    #getting third input.
    la $a0, n3
    li $v0, 4
    syscall
    li $v0, 5
    syscall
    move $s3, $v0
    #getting fourth input.
    la $a0, n4
    li $v0, 4
    syscall
    li $v0, 5
    syscall
    move $s4, $v0
    #calculate and print out the result.
    la $a0, result
    li $v0, 4
    syscall
    sub $t3, $s0, $s1
    add $s4, $t3,$s3
    move $a0, $s4
    li $v0, 1
    syscall

    #end program.
    li $v0, 10
    syscall

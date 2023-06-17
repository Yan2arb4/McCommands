.data
    return: .asciiz "\n"
.text
    main:
        li $t1, 1
        li $t2, 10

    loop:
        bgt $t1, $t2, exit

        li $v0, 1
        add $a0, $zero, $t1
        syscall

        li $v0, 4
        la $a0, return
        syscall

        add $t1, $t1, 1

        j loop
    
    exit:
        li $v0, 10
        syscall

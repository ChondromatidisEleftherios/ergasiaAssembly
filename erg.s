.data
ar: .word 0, 0, 0
mes1: .asciiz "Onoma: Eleftherios Chondromatidis\n"
mes2: .asciiz "AM: 02874\n"
mes3: .asciiz "Eksamhno: 3\n"
mes4: .asciiz "Grapse 1o arithmo"
mes5: .asciiz "Grapse 2o arithmo"
mes6: .asciiz "SUM= "


.text
.globl main

main:

li $v0, 4
la $a0, mes1
syscall

li $v0, 4
la $a0, mes2
syscall

li $v0, 4
la $a0, mes3
syscall

la $t0, ar

li $v0, 4
la $a0, mes4
syscall


li $v0, 5
syscall
sw $v0, 0($t0)


li $v0, 4
la $a0, mes5
syscall


li $v0, 5
syscall
sw $v0, 4($t0)

lw $t1, 0 ($t0)
lw $t2, 4 ($t0)
add $t3, $t2, $t1
sw $t3 8($t0)

li $v0, 4
la $a0, mes6
syscall

li $v0,1
move $a0, $t3
syscall

li $v0, 10
syscall

.text
 #size of array
li $t4,1
sort:
li $s1, 1
li $s6, 1

loop4:
lw $s2, 0($s0)
lw $s3, 4($s0)
addi $t4,$t4,1
slt $s4, $s2, $s3
addi $t4,$t4,1
beq $s4, $s6, cont
swap:
mov $t2,$s2
mov $s2,$s3
mov $s3,$t2
addi $t4,$t4,1
cont:
sw $s2, 0($s0)
sw $s3, 4($s0)
addi $s1, $s1, 1
addi $s0, $s0, 4
bne $s1, $t0, loop4
sub $t0, $t0, $s6
bne $s6, $t0, sort

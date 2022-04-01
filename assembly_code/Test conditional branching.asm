addi a1, zero, 10
addi a2, zero, 10
addi a3, zero, -10


beq a1, a2, SKIP_1
addi t0, zero, 80
SKIP_1:
bne a1, zero, SKIP_2
addi t0, zero, 80
SKIP_2:
blt a3, zero, SKIP_3
addi t0, zero, 80
SKIP_3:
bge zero, a3, SKIP_4
addi t0, zero, 80
SKIP_4:


beq a1, a3, SKIP_5
addi t0, zero, 80
SKIP_5:
bne a1, a2, SKIP_6
addi t0, zero, 80
SKIP_6:
blt zero, a3, SKIP_7
addi t0, zero, 80
SKIP_7:
bge a3, zero, SKIP_8
addi t0, zero, 80
SKIP_8:




addi a1, zero, 5
andi a2, a1, 1

addi a1, zero, 3
and a3, a1, a2

addi a1, zero, 21
addi a2, zero, 256
or a3, a1, a2

addi a1, zero, 255
addi a2, zero, 255
xor a3, a1, a2
xori a3, a3, 255

addi a1, zero, 1
addi a2, zero, 3
sll a1, a1, a2
srl a1, a1, a2


jal ra, FUNCTION

addi a1, zero, 123
jal ra, SKIP
addi a2, zero, 123
add a3, a1, a2
FUNCTION:
jalr zero, ra, 0


SKIP:
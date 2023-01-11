# RUN: not llvm-mc -triple=riscv32 --mattr=+xcorevsimd %s 2>&1 \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ERROR
	
cv.xor.sc.b 0, t1, t2
# CHECK-ERROR: invalid operand for instruction
	
cv.xor.sc.b t0, 0, t2
# CHECK-ERROR: invalid operand for instruction

cv.xor.sc.b t0, t1, t2, t3
# CHECK-ERROR: invalid operand for instruction

cv.xor.sc.b t0, t1, 0
# CHECK-ERROR: invalid operand for instruction

cv.xor.sc.b t0, t1, 0
# CHECK-ERROR: invalid operand for instruction

cv.xor.sc.b t0, t1
# CHECK-ERROR: too few operands for instruction


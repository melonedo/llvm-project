# RUN: not llvm-mc -triple=riscv32 --mattr=+xcorevsimd %s 2>&1 \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ERROR
	
cv.cmpltu.sci.h 0, t1, t2
# CHECK-ERROR: invalid operand for instruction
	
cv.cmpltu.sci.h t0, 0, t2
# CHECK-ERROR: invalid operand for instruction

cv.cmpltu.sci.h t0, t1, t2, t3
# CHECK-ERROR: immediate must be an integer in the range [-32, 31]

cv.cmpltu.sci.h t0, t1, t2
# CHECK-ERROR: immediate must be an integer in the range [-32, 31]

cv.cmpltu.sci.h t0, t1, 63
# CHECK-ERROR: immediate must be an integer in the range [-32, 31]

cv.cmpltu.sci.h t0, t1
# CHECK-ERROR: too few operands for instruction


# RUN: not llvm-mc -triple=riscv32 --mattr=+xcorevsimd %s 2>&1 \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ERROR
	
cv.minu.sci.b 0, t1, t2
# CHECK-ERROR: invalid operand for instruction
	
cv.minu.sci.b t0, 0, t2
# CHECK-ERROR: invalid operand for instruction

# Not tested because uimm6 is not defined

cv.minu.sci.b t0, t1
# CHECK-ERROR: too few operands for instruction


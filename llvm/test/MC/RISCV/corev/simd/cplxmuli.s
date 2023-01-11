# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevsimd -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.cplxmul.i t0, t1, t2
# CHECK-INSTR: cv.cplxmul.i t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x56]

cv.cplxmul.i a0, a1, a2
# CHECK-INSTR: cv.cplxmul.i a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x56]


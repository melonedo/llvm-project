# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevsimd -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.cplxconj t0, t1
# CHECK-INSTR: cv.cplxconj t0, t1
# CHECK-ENCODING: [0xfb,0x02,0x03,0x5c]

cv.cplxconj a0, a1
# CHECK-INSTR: cv.cplxconj a0, a1
# CHECK-ENCODING: [0x7b,0x85,0x05,0x5c]


# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevsimd -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.sdotusp.h t0, t1, t2
# CHECK-INSTR: cv.sdotusp.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0xa0]

cv.sdotusp.h a0, a1, a2
# CHECK-INSTR: cv.sdotusp.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0xa0]


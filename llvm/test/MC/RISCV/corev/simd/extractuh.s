# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevsimd -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.extractu.h t0, t1, -32
# CHECK-INSTR: cv.extractu.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x22,0x03,0xb9]

cv.extractu.h a0, a1, 7
# CHECK-INSTR: cv.extractu.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xa5,0x35,0xba]


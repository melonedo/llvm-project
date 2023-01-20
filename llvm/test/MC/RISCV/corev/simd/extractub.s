# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevsimd -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.extractu.b t0, t1, -32
# CHECK-INSTR: cv.extractu.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x32,0x03,0xb9]

cv.extractu.b a0, a1, 7
# CHECK-INSTR: cv.extractu.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xb5,0x35,0xba]

cv.extractu.b s0, s1, -1
# CHECK-INSTR: cv.extractu.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xb4,0xf4,0xbb]


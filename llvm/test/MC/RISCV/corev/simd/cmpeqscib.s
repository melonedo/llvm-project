# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevsimd -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.cmpeq.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmpeq.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x05]

cv.cmpeq.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmpeq.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x06]

cv.cmpeq.sci.b s0, s1, -1
# CHECK-INSTR: cv.cmpeq.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x07]


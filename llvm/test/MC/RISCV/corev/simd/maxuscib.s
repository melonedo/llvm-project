# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevsimd -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.maxu.sci.b t0, t1, 32
# CHECK-INSTR: cv.maxu.sci.b t0, t1, 32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x39]

cv.maxu.sci.b a0, a1, 7
# CHECK-INSTR: cv.maxu.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x3a]

cv.maxu.sci.b s0, s1, 63
# CHECK-INSTR: cv.maxu.sci.b s0, s1, 63
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x3b]


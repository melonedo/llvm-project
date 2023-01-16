# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevsimd -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.minu.b t0, t1, t2
# CHECK-INSTR: cv.minu.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x28]

cv.minu.b a0, a1, a2
# CHECK-INSTR: cv.minu.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x28]

cv.minu.b s0, s1, s2
# CHECK-INSTR: cv.minu.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x29]


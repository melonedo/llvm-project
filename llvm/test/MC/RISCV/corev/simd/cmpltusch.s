# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevsimd -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.cmpltu.sc.h t0, t1, t2
# CHECK-INSTR: cv.cmpltu.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x44]

cv.cmpltu.sc.h a0, a1, a2
# CHECK-INSTR: cv.cmpltu.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x44]

cv.cmpltu.sc.h s0, s1, s2
# CHECK-INSTR: cv.cmpltu.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x45]


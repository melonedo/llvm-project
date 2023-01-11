# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevsimd -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.avgu.sc.b t0, t1, t2
# CHECK-INSTR: cv.avgu.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x18]

cv.avgu.sc.b a0, a1, a2
# CHECK-INSTR: cv.avgu.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x18]


# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevsimd -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.max.sc.b t0, t1, t2
# CHECK-INSTR: cv.max.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x30]

cv.max.sc.b a0, a1, a2
# CHECK-INSTR: cv.max.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x30]


# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevsimd -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.and.b t0, t1, t2
# CHECK-INSTR: cv.and.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x68]

cv.and.b a0, a1, a2
# CHECK-INSTR: cv.and.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x68]


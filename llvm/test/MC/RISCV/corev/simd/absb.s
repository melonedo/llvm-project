# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevsimd -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.abs.b t0, t1
# CHECK-INSTR: cv.abs.b t0, t1
# CHECK-ENCODING: [0xfb,0x12,0x03,0x70]

cv.abs.b a0, a1
# CHECK-INSTR: cv.abs.b a0, a1
# CHECK-ENCODING: [0x7b,0x95,0x05,0x70]


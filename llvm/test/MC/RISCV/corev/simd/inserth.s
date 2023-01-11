# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevsimd -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.insert.h t0, t1, -32
# CHECK-INSTR: cv.insert.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x42,0x03,0xb9]

cv.insert.h a0, a1, 7
# CHECK-INSTR: cv.insert.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xc5,0x35,0xba]


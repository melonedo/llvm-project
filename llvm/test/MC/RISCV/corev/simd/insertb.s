# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevsimd -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.insert.b t0, t1, -32
# CHECK-INSTR: cv.insert.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x52,0x03,0xb9]

cv.insert.b a0, a1, 7
# CHECK-INSTR: cv.insert.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xd5,0x35,0xba]


# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevsimd -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.cmpne.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmpne.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x0d]

cv.cmpne.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmpne.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x0e]


# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevsimd -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.min.sci.h t0, t1, -32
# CHECK-INSTR: cv.min.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x21]

cv.min.sci.h a0, a1, 7
# CHECK-INSTR: cv.min.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x22]

cv.min.sci.h s0, s1, -1
# CHECK-INSTR: cv.min.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x23]


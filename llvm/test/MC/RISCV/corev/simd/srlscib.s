# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevsimd -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.srl.sci.b t0, t1, 32
# CHECK-INSTR: cv.srl.sci.b t0, t1, 32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x41]

cv.srl.sci.b a0, a1, 7
# CHECK-INSTR: cv.srl.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x42]

cv.srl.sci.b s0, s1, 63
# CHECK-INSTR: cv.srl.sci.b s0, s1, 63
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x43]


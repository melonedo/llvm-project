# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevsimd -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.cplxmul.r.div8 t0, t1, t2
# CHECK-INSTR: cv.cplxmul.r.div8 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x62,0x73,0x54]

cv.cplxmul.r.div8 a0, a1, a2
# CHECK-INSTR: cv.cplxmul.r.div8 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xe5,0xc5,0x54]

cv.cplxmul.r.div8 s0, s1, s2
# CHECK-INSTR: cv.cplxmul.r.div8 s0, s1, s2
# CHECK-ENCODING: [0x7b,0xe4,0x24,0x55]


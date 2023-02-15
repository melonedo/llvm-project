# RUN: llvm-mc -triple=riscv32 --mattr=+xcvsimd -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

//===----------------------------------------------------------------------===//
// cv.or.h
//===----------------------------------------------------------------------===//

cv.or.h t0, t1, t2
# CHECK-INSTR: cv.or.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x58]

cv.or.h a0, a1, a2
# CHECK-INSTR: cv.or.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x58]

cv.or.h s0, s1, s2
# CHECK-INSTR: cv.or.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x59]

//===----------------------------------------------------------------------===//
// cv.or.b
//===----------------------------------------------------------------------===//

cv.or.b t0, t1, t2
# CHECK-INSTR: cv.or.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x58]

cv.or.b a0, a1, a2
# CHECK-INSTR: cv.or.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x58]

cv.or.b s0, s1, s2
# CHECK-INSTR: cv.or.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x59]

//===----------------------------------------------------------------------===//
// cv.or.sc.h
//===----------------------------------------------------------------------===//

cv.or.sc.h t0, t1, t2
# CHECK-INSTR: cv.or.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x58]

cv.or.sc.h a0, a1, a2
# CHECK-INSTR: cv.or.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x58]

cv.or.sc.h s0, s1, s2
# CHECK-INSTR: cv.or.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x59]

//===----------------------------------------------------------------------===//
// cv.or.sc.b
//===----------------------------------------------------------------------===//

cv.or.sc.b t0, t1, t2
# CHECK-INSTR: cv.or.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x58]

cv.or.sc.b a0, a1, a2
# CHECK-INSTR: cv.or.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x58]

cv.or.sc.b s0, s1, s2
# CHECK-INSTR: cv.or.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x59]

//===----------------------------------------------------------------------===//
// cv.or.sci.h
//===----------------------------------------------------------------------===//

cv.or.sci.h t0, t1, -32
# CHECK-INSTR: cv.or.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x59]

cv.or.sci.h a0, a1, 7
# CHECK-INSTR: cv.or.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x5a]

cv.or.sci.h s0, s1, -1
# CHECK-INSTR: cv.or.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x5b]

//===----------------------------------------------------------------------===//
// cv.or.sci.b
//===----------------------------------------------------------------------===//

cv.or.sci.b t0, t1, -32
# CHECK-INSTR: cv.or.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x59]

cv.or.sci.b a0, a1, 7
# CHECK-INSTR: cv.or.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x5a]

cv.or.sci.b s0, s1, -1
# CHECK-INSTR: cv.or.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x5b]


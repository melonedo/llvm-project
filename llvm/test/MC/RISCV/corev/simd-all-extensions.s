# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevsimd -show-encoding %s 2>&1 \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR
# RUN: llvm-mc -filetype=obj -triple=riscv32 --mattr=+xcorevsimd < %s \
# RUN:     | llvm-objdump -M no-aliases  --mattr=+xcorevsimd -d -r - \
# RUN:     | FileCheck -check-prefixes=CHECK-INSTR %s

cv.add.h t0, t1, t2
# CHECK-INSTR: cv.add.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x00]

cv.add.h a0, a1, a2
# CHECK-INSTR: cv.add.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x00]

cv.add.h s0, s1, s2
# CHECK-INSTR: cv.add.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x01]

cv.add.b t0, t1, t2
# CHECK-INSTR: cv.add.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x00]

cv.add.b a0, a1, a2
# CHECK-INSTR: cv.add.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x00]

cv.add.b s0, s1, s2
# CHECK-INSTR: cv.add.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x01]

cv.add.sc.h t0, t1, t2
# CHECK-INSTR: cv.add.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x00]

cv.add.sc.h a0, a1, a2
# CHECK-INSTR: cv.add.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x00]

cv.add.sc.h s0, s1, s2
# CHECK-INSTR: cv.add.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x01]

cv.add.sc.b t0, t1, t2
# CHECK-INSTR: cv.add.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x00]

cv.add.sc.b a0, a1, a2
# CHECK-INSTR: cv.add.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x00]

cv.add.sc.b s0, s1, s2
# CHECK-INSTR: cv.add.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x01]

cv.add.sci.h t0, t1, -32
# CHECK-INSTR: cv.add.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x01]

cv.add.sci.h a0, a1, 7
# CHECK-INSTR: cv.add.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x02]

cv.add.sci.h s0, s1, -1
# CHECK-INSTR: cv.add.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x03]

cv.add.sci.b t0, t1, -32
# CHECK-INSTR: cv.add.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x01]

cv.add.sci.b a0, a1, 7
# CHECK-INSTR: cv.add.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x02]

cv.add.sci.b s0, s1, -1
# CHECK-INSTR: cv.add.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x03]

cv.sub.h t0, t1, t2
# CHECK-INSTR: cv.sub.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x08]

cv.sub.h a0, a1, a2
# CHECK-INSTR: cv.sub.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x08]

cv.sub.h s0, s1, s2
# CHECK-INSTR: cv.sub.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x09]

cv.sub.b t0, t1, t2
# CHECK-INSTR: cv.sub.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x08]

cv.sub.b a0, a1, a2
# CHECK-INSTR: cv.sub.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x08]

cv.sub.b s0, s1, s2
# CHECK-INSTR: cv.sub.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x09]

cv.sub.sc.h t0, t1, t2
# CHECK-INSTR: cv.sub.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x08]

cv.sub.sc.h a0, a1, a2
# CHECK-INSTR: cv.sub.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x08]

cv.sub.sc.h s0, s1, s2
# CHECK-INSTR: cv.sub.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x09]

cv.sub.sc.b t0, t1, t2
# CHECK-INSTR: cv.sub.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x08]

cv.sub.sc.b a0, a1, a2
# CHECK-INSTR: cv.sub.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x08]

cv.sub.sc.b s0, s1, s2
# CHECK-INSTR: cv.sub.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x09]

cv.sub.sci.h t0, t1, -32
# CHECK-INSTR: cv.sub.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x09]

cv.sub.sci.h a0, a1, 7
# CHECK-INSTR: cv.sub.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x0a]

cv.sub.sci.h s0, s1, -1
# CHECK-INSTR: cv.sub.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x0b]

cv.sub.sci.b t0, t1, -32
# CHECK-INSTR: cv.sub.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x09]

cv.sub.sci.b a0, a1, 7
# CHECK-INSTR: cv.sub.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x0a]

cv.sub.sci.b s0, s1, -1
# CHECK-INSTR: cv.sub.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x0b]

cv.avg.h t0, t1, t2
# CHECK-INSTR: cv.avg.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x10]

cv.avg.h a0, a1, a2
# CHECK-INSTR: cv.avg.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x10]

cv.avg.h s0, s1, s2
# CHECK-INSTR: cv.avg.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x11]

cv.avg.b t0, t1, t2
# CHECK-INSTR: cv.avg.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x10]

cv.avg.b a0, a1, a2
# CHECK-INSTR: cv.avg.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x10]

cv.avg.b s0, s1, s2
# CHECK-INSTR: cv.avg.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x11]

cv.avg.sc.h t0, t1, t2
# CHECK-INSTR: cv.avg.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x10]

cv.avg.sc.h a0, a1, a2
# CHECK-INSTR: cv.avg.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x10]

cv.avg.sc.h s0, s1, s2
# CHECK-INSTR: cv.avg.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x11]

cv.avg.sc.b t0, t1, t2
# CHECK-INSTR: cv.avg.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x10]

cv.avg.sc.b a0, a1, a2
# CHECK-INSTR: cv.avg.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x10]

cv.avg.sc.b s0, s1, s2
# CHECK-INSTR: cv.avg.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x11]

cv.avg.sci.h t0, t1, -32
# CHECK-INSTR: cv.avg.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x11]

cv.avg.sci.h a0, a1, 7
# CHECK-INSTR: cv.avg.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x12]

cv.avg.sci.h s0, s1, -1
# CHECK-INSTR: cv.avg.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x13]

cv.avg.sci.b t0, t1, -32
# CHECK-INSTR: cv.avg.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x11]

cv.avg.sci.b a0, a1, 7
# CHECK-INSTR: cv.avg.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x12]

cv.avg.sci.b s0, s1, -1
# CHECK-INSTR: cv.avg.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x13]

cv.avgu.h t0, t1, t2
# CHECK-INSTR: cv.avgu.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x18]

cv.avgu.h a0, a1, a2
# CHECK-INSTR: cv.avgu.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x18]

cv.avgu.h s0, s1, s2
# CHECK-INSTR: cv.avgu.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x19]

cv.avgu.b t0, t1, t2
# CHECK-INSTR: cv.avgu.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x18]

cv.avgu.b a0, a1, a2
# CHECK-INSTR: cv.avgu.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x18]

cv.avgu.b s0, s1, s2
# CHECK-INSTR: cv.avgu.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x19]

cv.avgu.sc.h t0, t1, t2
# CHECK-INSTR: cv.avgu.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x18]

cv.avgu.sc.h a0, a1, a2
# CHECK-INSTR: cv.avgu.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x18]

cv.avgu.sc.h s0, s1, s2
# CHECK-INSTR: cv.avgu.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x19]

cv.avgu.sc.b t0, t1, t2
# CHECK-INSTR: cv.avgu.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x18]

cv.avgu.sc.b a0, a1, a2
# CHECK-INSTR: cv.avgu.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x18]

cv.avgu.sc.b s0, s1, s2
# CHECK-INSTR: cv.avgu.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x19]

cv.avgu.sci.h t0, t1, -32
# CHECK-INSTR: cv.avgu.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x19]

cv.avgu.sci.h a0, a1, 7
# CHECK-INSTR: cv.avgu.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x1a]

cv.avgu.sci.h s0, s1, -1
# CHECK-INSTR: cv.avgu.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x1b]

cv.avgu.sci.b t0, t1, -32
# CHECK-INSTR: cv.avgu.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x19]

cv.avgu.sci.b a0, a1, 7
# CHECK-INSTR: cv.avgu.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x1a]

cv.avgu.sci.b s0, s1, -1
# CHECK-INSTR: cv.avgu.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x1b]

cv.min.h t0, t1, t2
# CHECK-INSTR: cv.min.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x20]

cv.min.h a0, a1, a2
# CHECK-INSTR: cv.min.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x20]

cv.min.h s0, s1, s2
# CHECK-INSTR: cv.min.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x21]

cv.min.b t0, t1, t2
# CHECK-INSTR: cv.min.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x20]

cv.min.b a0, a1, a2
# CHECK-INSTR: cv.min.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x20]

cv.min.b s0, s1, s2
# CHECK-INSTR: cv.min.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x21]

cv.min.sc.h t0, t1, t2
# CHECK-INSTR: cv.min.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x20]

cv.min.sc.h a0, a1, a2
# CHECK-INSTR: cv.min.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x20]

cv.min.sc.h s0, s1, s2
# CHECK-INSTR: cv.min.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x21]

cv.min.sc.b t0, t1, t2
# CHECK-INSTR: cv.min.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x20]

cv.min.sc.b a0, a1, a2
# CHECK-INSTR: cv.min.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x20]

cv.min.sc.b s0, s1, s2
# CHECK-INSTR: cv.min.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x21]

cv.min.sci.h t0, t1, -32
# CHECK-INSTR: cv.min.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x21]

cv.min.sci.h a0, a1, 7
# CHECK-INSTR: cv.min.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x22]

cv.min.sci.h s0, s1, -1
# CHECK-INSTR: cv.min.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x23]

cv.min.sci.b t0, t1, -32
# CHECK-INSTR: cv.min.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x21]

cv.min.sci.b a0, a1, 7
# CHECK-INSTR: cv.min.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x22]

cv.min.sci.b s0, s1, -1
# CHECK-INSTR: cv.min.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x23]

cv.minu.h t0, t1, t2
# CHECK-INSTR: cv.minu.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x28]

cv.minu.h a0, a1, a2
# CHECK-INSTR: cv.minu.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x28]

cv.minu.h s0, s1, s2
# CHECK-INSTR: cv.minu.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x29]

cv.minu.b t0, t1, t2
# CHECK-INSTR: cv.minu.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x28]

cv.minu.b a0, a1, a2
# CHECK-INSTR: cv.minu.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x28]

cv.minu.b s0, s1, s2
# CHECK-INSTR: cv.minu.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x29]

cv.minu.sc.h t0, t1, t2
# CHECK-INSTR: cv.minu.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x28]

cv.minu.sc.h a0, a1, a2
# CHECK-INSTR: cv.minu.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x28]

cv.minu.sc.h s0, s1, s2
# CHECK-INSTR: cv.minu.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x29]

cv.minu.sc.b t0, t1, t2
# CHECK-INSTR: cv.minu.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x28]

cv.minu.sc.b a0, a1, a2
# CHECK-INSTR: cv.minu.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x28]

cv.minu.sc.b s0, s1, s2
# CHECK-INSTR: cv.minu.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x29]

cv.minu.sci.h t0, t1, -32
# CHECK-INSTR: cv.minu.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x29]

cv.minu.sci.h a0, a1, 7
# CHECK-INSTR: cv.minu.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x2a]

cv.minu.sci.h s0, s1, -1
# CHECK-INSTR: cv.minu.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x2b]

cv.minu.sci.b t0, t1, -32
# CHECK-INSTR: cv.minu.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x29]

cv.minu.sci.b a0, a1, 7
# CHECK-INSTR: cv.minu.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x2a]

cv.minu.sci.b s0, s1, -1
# CHECK-INSTR: cv.minu.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x2b]

cv.max.h t0, t1, t2
# CHECK-INSTR: cv.max.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x30]

cv.max.h a0, a1, a2
# CHECK-INSTR: cv.max.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x30]

cv.max.h s0, s1, s2
# CHECK-INSTR: cv.max.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x31]

cv.max.b t0, t1, t2
# CHECK-INSTR: cv.max.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x30]

cv.max.b a0, a1, a2
# CHECK-INSTR: cv.max.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x30]

cv.max.b s0, s1, s2
# CHECK-INSTR: cv.max.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x31]

cv.max.sc.h t0, t1, t2
# CHECK-INSTR: cv.max.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x30]

cv.max.sc.h a0, a1, a2
# CHECK-INSTR: cv.max.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x30]

cv.max.sc.h s0, s1, s2
# CHECK-INSTR: cv.max.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x31]

cv.max.sc.b t0, t1, t2
# CHECK-INSTR: cv.max.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x30]

cv.max.sc.b a0, a1, a2
# CHECK-INSTR: cv.max.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x30]

cv.max.sc.b s0, s1, s2
# CHECK-INSTR: cv.max.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x31]

cv.max.sci.h t0, t1, -32
# CHECK-INSTR: cv.max.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x31]

cv.max.sci.h a0, a1, 7
# CHECK-INSTR: cv.max.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x32]

cv.max.sci.h s0, s1, -1
# CHECK-INSTR: cv.max.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x33]

cv.max.sci.b t0, t1, -32
# CHECK-INSTR: cv.max.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x31]

cv.max.sci.b a0, a1, 7
# CHECK-INSTR: cv.max.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x32]

cv.max.sci.b s0, s1, -1
# CHECK-INSTR: cv.max.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x33]

cv.maxu.h t0, t1, t2
# CHECK-INSTR: cv.maxu.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x38]

cv.maxu.h a0, a1, a2
# CHECK-INSTR: cv.maxu.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x38]

cv.maxu.h s0, s1, s2
# CHECK-INSTR: cv.maxu.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x39]

cv.maxu.b t0, t1, t2
# CHECK-INSTR: cv.maxu.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x38]

cv.maxu.b a0, a1, a2
# CHECK-INSTR: cv.maxu.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x38]

cv.maxu.b s0, s1, s2
# CHECK-INSTR: cv.maxu.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x39]

cv.maxu.sc.h t0, t1, t2
# CHECK-INSTR: cv.maxu.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x38]

cv.maxu.sc.h a0, a1, a2
# CHECK-INSTR: cv.maxu.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x38]

cv.maxu.sc.h s0, s1, s2
# CHECK-INSTR: cv.maxu.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x39]

cv.maxu.sc.b t0, t1, t2
# CHECK-INSTR: cv.maxu.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x38]

cv.maxu.sc.b a0, a1, a2
# CHECK-INSTR: cv.maxu.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x38]

cv.maxu.sc.b s0, s1, s2
# CHECK-INSTR: cv.maxu.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x39]

cv.maxu.sci.h t0, t1, -32
# CHECK-INSTR: cv.maxu.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x39]

cv.maxu.sci.h a0, a1, 7
# CHECK-INSTR: cv.maxu.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x3a]

cv.maxu.sci.h s0, s1, -1
# CHECK-INSTR: cv.maxu.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x3b]

cv.maxu.sci.b t0, t1, -32
# CHECK-INSTR: cv.maxu.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x39]

cv.maxu.sci.b a0, a1, 7
# CHECK-INSTR: cv.maxu.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x3a]

cv.maxu.sci.b s0, s1, -1
# CHECK-INSTR: cv.maxu.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x3b]

cv.srl.h t0, t1, t2
# CHECK-INSTR: cv.srl.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x40]

cv.srl.h a0, a1, a2
# CHECK-INSTR: cv.srl.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x40]

cv.srl.h s0, s1, s2
# CHECK-INSTR: cv.srl.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x41]

cv.srl.b t0, t1, t2
# CHECK-INSTR: cv.srl.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x40]

cv.srl.b a0, a1, a2
# CHECK-INSTR: cv.srl.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x40]

cv.srl.b s0, s1, s2
# CHECK-INSTR: cv.srl.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x41]

cv.srl.sc.h t0, t1, t2
# CHECK-INSTR: cv.srl.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x40]

cv.srl.sc.h a0, a1, a2
# CHECK-INSTR: cv.srl.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x40]

cv.srl.sc.h s0, s1, s2
# CHECK-INSTR: cv.srl.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x41]

cv.srl.sc.b t0, t1, t2
# CHECK-INSTR: cv.srl.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x40]

cv.srl.sc.b a0, a1, a2
# CHECK-INSTR: cv.srl.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x40]

cv.srl.sc.b s0, s1, s2
# CHECK-INSTR: cv.srl.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x41]

cv.srl.sci.h t0, t1, -32
# CHECK-INSTR: cv.srl.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x41]

cv.srl.sci.h a0, a1, 7
# CHECK-INSTR: cv.srl.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x42]

cv.srl.sci.h s0, s1, -1
# CHECK-INSTR: cv.srl.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x43]

cv.srl.sci.b t0, t1, -32
# CHECK-INSTR: cv.srl.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x41]

cv.srl.sci.b a0, a1, 7
# CHECK-INSTR: cv.srl.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x42]

cv.srl.sci.b s0, s1, -1
# CHECK-INSTR: cv.srl.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x43]

cv.sra.h t0, t1, t2
# CHECK-INSTR: cv.sra.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x48]

cv.sra.h a0, a1, a2
# CHECK-INSTR: cv.sra.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x48]

cv.sra.h s0, s1, s2
# CHECK-INSTR: cv.sra.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x49]

cv.sra.b t0, t1, t2
# CHECK-INSTR: cv.sra.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x48]

cv.sra.b a0, a1, a2
# CHECK-INSTR: cv.sra.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x48]

cv.sra.b s0, s1, s2
# CHECK-INSTR: cv.sra.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x49]

cv.sra.sc.h t0, t1, t2
# CHECK-INSTR: cv.sra.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x48]

cv.sra.sc.h a0, a1, a2
# CHECK-INSTR: cv.sra.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x48]

cv.sra.sc.h s0, s1, s2
# CHECK-INSTR: cv.sra.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x49]

cv.sra.sc.b t0, t1, t2
# CHECK-INSTR: cv.sra.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x48]

cv.sra.sc.b a0, a1, a2
# CHECK-INSTR: cv.sra.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x48]

cv.sra.sc.b s0, s1, s2
# CHECK-INSTR: cv.sra.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x49]

cv.sra.sci.h t0, t1, -32
# CHECK-INSTR: cv.sra.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x49]

cv.sra.sci.h a0, a1, 7
# CHECK-INSTR: cv.sra.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x4a]

cv.sra.sci.h s0, s1, -1
# CHECK-INSTR: cv.sra.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x4b]

cv.sra.sci.b t0, t1, -32
# CHECK-INSTR: cv.sra.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x49]

cv.sra.sci.b a0, a1, 7
# CHECK-INSTR: cv.sra.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x4a]

cv.sra.sci.b s0, s1, -1
# CHECK-INSTR: cv.sra.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x4b]

cv.sll.h t0, t1, t2
# CHECK-INSTR: cv.sll.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x50]

cv.sll.h a0, a1, a2
# CHECK-INSTR: cv.sll.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x50]

cv.sll.h s0, s1, s2
# CHECK-INSTR: cv.sll.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x51]

cv.sll.b t0, t1, t2
# CHECK-INSTR: cv.sll.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x50]

cv.sll.b a0, a1, a2
# CHECK-INSTR: cv.sll.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x50]

cv.sll.b s0, s1, s2
# CHECK-INSTR: cv.sll.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x51]

cv.sll.sc.h t0, t1, t2
# CHECK-INSTR: cv.sll.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x50]

cv.sll.sc.h a0, a1, a2
# CHECK-INSTR: cv.sll.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x50]

cv.sll.sc.h s0, s1, s2
# CHECK-INSTR: cv.sll.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x51]

cv.sll.sc.b t0, t1, t2
# CHECK-INSTR: cv.sll.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x50]

cv.sll.sc.b a0, a1, a2
# CHECK-INSTR: cv.sll.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x50]

cv.sll.sc.b s0, s1, s2
# CHECK-INSTR: cv.sll.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x51]

cv.sll.sci.h t0, t1, -32
# CHECK-INSTR: cv.sll.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x51]

cv.sll.sci.h a0, a1, 7
# CHECK-INSTR: cv.sll.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x52]

cv.sll.sci.h s0, s1, -1
# CHECK-INSTR: cv.sll.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x53]

cv.sll.sci.b t0, t1, -32
# CHECK-INSTR: cv.sll.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x51]

cv.sll.sci.b a0, a1, 7
# CHECK-INSTR: cv.sll.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x52]

cv.sll.sci.b s0, s1, -1
# CHECK-INSTR: cv.sll.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x53]

cv.or.h t0, t1, t2
# CHECK-INSTR: cv.or.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x58]

cv.or.h a0, a1, a2
# CHECK-INSTR: cv.or.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x58]

cv.or.h s0, s1, s2
# CHECK-INSTR: cv.or.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x59]

cv.or.b t0, t1, t2
# CHECK-INSTR: cv.or.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x58]

cv.or.b a0, a1, a2
# CHECK-INSTR: cv.or.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x58]

cv.or.b s0, s1, s2
# CHECK-INSTR: cv.or.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x59]

cv.or.sc.h t0, t1, t2
# CHECK-INSTR: cv.or.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x58]

cv.or.sc.h a0, a1, a2
# CHECK-INSTR: cv.or.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x58]

cv.or.sc.h s0, s1, s2
# CHECK-INSTR: cv.or.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x59]

cv.or.sc.b t0, t1, t2
# CHECK-INSTR: cv.or.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x58]

cv.or.sc.b a0, a1, a2
# CHECK-INSTR: cv.or.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x58]

cv.or.sc.b s0, s1, s2
# CHECK-INSTR: cv.or.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x59]

cv.or.sci.h t0, t1, -32
# CHECK-INSTR: cv.or.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x59]

cv.or.sci.h a0, a1, 7
# CHECK-INSTR: cv.or.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x5a]

cv.or.sci.h s0, s1, -1
# CHECK-INSTR: cv.or.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x5b]

cv.or.sci.b t0, t1, -32
# CHECK-INSTR: cv.or.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x59]

cv.or.sci.b a0, a1, 7
# CHECK-INSTR: cv.or.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x5a]

cv.or.sci.b s0, s1, -1
# CHECK-INSTR: cv.or.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x5b]

cv.xor.h t0, t1, t2
# CHECK-INSTR: cv.xor.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x60]

cv.xor.h a0, a1, a2
# CHECK-INSTR: cv.xor.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x60]

cv.xor.h s0, s1, s2
# CHECK-INSTR: cv.xor.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x61]

cv.xor.b t0, t1, t2
# CHECK-INSTR: cv.xor.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x60]

cv.xor.b a0, a1, a2
# CHECK-INSTR: cv.xor.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x60]

cv.xor.b s0, s1, s2
# CHECK-INSTR: cv.xor.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x61]

cv.xor.sc.h t0, t1, t2
# CHECK-INSTR: cv.xor.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x60]

cv.xor.sc.h a0, a1, a2
# CHECK-INSTR: cv.xor.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x60]

cv.xor.sc.h s0, s1, s2
# CHECK-INSTR: cv.xor.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x61]

cv.xor.sc.b t0, t1, t2
# CHECK-INSTR: cv.xor.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x60]

cv.xor.sc.b a0, a1, a2
# CHECK-INSTR: cv.xor.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x60]

cv.xor.sc.b s0, s1, s2
# CHECK-INSTR: cv.xor.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x61]

cv.xor.sci.h t0, t1, -32
# CHECK-INSTR: cv.xor.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x61]

cv.xor.sci.h a0, a1, 7
# CHECK-INSTR: cv.xor.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x62]

cv.xor.sci.h s0, s1, -1
# CHECK-INSTR: cv.xor.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x63]

cv.xor.sci.b t0, t1, -32
# CHECK-INSTR: cv.xor.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x61]

cv.xor.sci.b a0, a1, 7
# CHECK-INSTR: cv.xor.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x62]

cv.xor.sci.b s0, s1, -1
# CHECK-INSTR: cv.xor.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x63]

cv.and.h t0, t1, t2
# CHECK-INSTR: cv.and.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x68]

cv.and.h a0, a1, a2
# CHECK-INSTR: cv.and.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x68]

cv.and.h s0, s1, s2
# CHECK-INSTR: cv.and.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x69]

cv.and.b t0, t1, t2
# CHECK-INSTR: cv.and.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x68]

cv.and.b a0, a1, a2
# CHECK-INSTR: cv.and.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x68]

cv.and.b s0, s1, s2
# CHECK-INSTR: cv.and.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x69]

cv.and.sc.h t0, t1, t2
# CHECK-INSTR: cv.and.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x68]

cv.and.sc.h a0, a1, a2
# CHECK-INSTR: cv.and.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x68]

cv.and.sc.h s0, s1, s2
# CHECK-INSTR: cv.and.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x69]

cv.and.sc.b t0, t1, t2
# CHECK-INSTR: cv.and.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x68]

cv.and.sc.b a0, a1, a2
# CHECK-INSTR: cv.and.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x68]

cv.and.sc.b s0, s1, s2
# CHECK-INSTR: cv.and.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x69]

cv.and.sci.h t0, t1, -32
# CHECK-INSTR: cv.and.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x69]

cv.and.sci.h a0, a1, 7
# CHECK-INSTR: cv.and.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x6a]

cv.and.sci.h s0, s1, -1
# CHECK-INSTR: cv.and.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x6b]

cv.and.sci.b t0, t1, -32
# CHECK-INSTR: cv.and.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x69]

cv.and.sci.b a0, a1, 7
# CHECK-INSTR: cv.and.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x6a]

cv.and.sci.b s0, s1, -1
# CHECK-INSTR: cv.and.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x6b]

cv.abs.h t0, t1
# CHECK-INSTR: cv.abs.h t0, t1
# CHECK-ENCODING: [0xfb,0x02,0x03,0x70]

cv.abs.h a0, a1
# CHECK-INSTR: cv.abs.h a0, a1
# CHECK-ENCODING: [0x7b,0x85,0x05,0x70]

cv.abs.h s0, s1
# CHECK-INSTR: cv.abs.h s0, s1
# CHECK-ENCODING: [0x7b,0x84,0x04,0x70]

cv.abs.b t0, t1
# CHECK-INSTR: cv.abs.b t0, t1
# CHECK-ENCODING: [0xfb,0x12,0x03,0x70]

cv.abs.b a0, a1
# CHECK-INSTR: cv.abs.b a0, a1
# CHECK-ENCODING: [0x7b,0x95,0x05,0x70]

cv.abs.b s0, s1
# CHECK-INSTR: cv.abs.b s0, s1
# CHECK-ENCODING: [0x7b,0x94,0x04,0x70]

cv.dotup.h t0, t1, t2
# CHECK-INSTR: cv.dotup.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x80]

cv.dotup.h a0, a1, a2
# CHECK-INSTR: cv.dotup.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x80]

cv.dotup.h s0, s1, s2
# CHECK-INSTR: cv.dotup.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x81]

cv.dotup.b t0, t1, t2
# CHECK-INSTR: cv.dotup.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x80]

cv.dotup.b a0, a1, a2
# CHECK-INSTR: cv.dotup.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x80]

cv.dotup.b s0, s1, s2
# CHECK-INSTR: cv.dotup.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x81]

cv.dotup.sc.h t0, t1, t2
# CHECK-INSTR: cv.dotup.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x80]

cv.dotup.sc.h a0, a1, a2
# CHECK-INSTR: cv.dotup.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x80]

cv.dotup.sc.h s0, s1, s2
# CHECK-INSTR: cv.dotup.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x81]

cv.dotup.sc.b t0, t1, t2
# CHECK-INSTR: cv.dotup.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x80]

cv.dotup.sc.b a0, a1, a2
# CHECK-INSTR: cv.dotup.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x80]

cv.dotup.sc.b s0, s1, s2
# CHECK-INSTR: cv.dotup.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x81]

cv.dotup.sci.h t0, t1, -32
# CHECK-INSTR: cv.dotup.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x81]

cv.dotup.sci.h a0, a1, 7
# CHECK-INSTR: cv.dotup.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x82]

cv.dotup.sci.h s0, s1, -1
# CHECK-INSTR: cv.dotup.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x83]

cv.dotup.sci.b t0, t1, -32
# CHECK-INSTR: cv.dotup.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x81]

cv.dotup.sci.b a0, a1, 7
# CHECK-INSTR: cv.dotup.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x82]

cv.dotup.sci.b s0, s1, -1
# CHECK-INSTR: cv.dotup.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x83]

cv.dotusp.h t0, t1, t2
# CHECK-INSTR: cv.dotusp.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x88]

cv.dotusp.h a0, a1, a2
# CHECK-INSTR: cv.dotusp.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x88]

cv.dotusp.h s0, s1, s2
# CHECK-INSTR: cv.dotusp.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x89]

cv.dotusp.b t0, t1, t2
# CHECK-INSTR: cv.dotusp.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x88]

cv.dotusp.b a0, a1, a2
# CHECK-INSTR: cv.dotusp.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x88]

cv.dotusp.b s0, s1, s2
# CHECK-INSTR: cv.dotusp.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x89]

cv.dotusp.sc.h t0, t1, t2
# CHECK-INSTR: cv.dotusp.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x88]

cv.dotusp.sc.h a0, a1, a2
# CHECK-INSTR: cv.dotusp.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x88]

cv.dotusp.sc.h s0, s1, s2
# CHECK-INSTR: cv.dotusp.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x89]

cv.dotusp.sc.b t0, t1, t2
# CHECK-INSTR: cv.dotusp.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x88]

cv.dotusp.sc.b a0, a1, a2
# CHECK-INSTR: cv.dotusp.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x88]

cv.dotusp.sc.b s0, s1, s2
# CHECK-INSTR: cv.dotusp.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x89]

cv.dotusp.sci.h t0, t1, -32
# CHECK-INSTR: cv.dotusp.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x89]

cv.dotusp.sci.h a0, a1, 7
# CHECK-INSTR: cv.dotusp.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x8a]

cv.dotusp.sci.h s0, s1, -1
# CHECK-INSTR: cv.dotusp.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x8b]

cv.dotusp.sci.b t0, t1, -32
# CHECK-INSTR: cv.dotusp.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x89]

cv.dotusp.sci.b a0, a1, 7
# CHECK-INSTR: cv.dotusp.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x8a]

cv.dotusp.sci.b s0, s1, -1
# CHECK-INSTR: cv.dotusp.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x8b]

cv.dotsp.h t0, t1, t2
# CHECK-INSTR: cv.dotsp.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x90]

cv.dotsp.h a0, a1, a2
# CHECK-INSTR: cv.dotsp.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x90]

cv.dotsp.h s0, s1, s2
# CHECK-INSTR: cv.dotsp.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x91]

cv.dotsp.b t0, t1, t2
# CHECK-INSTR: cv.dotsp.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x90]

cv.dotsp.b a0, a1, a2
# CHECK-INSTR: cv.dotsp.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x90]

cv.dotsp.b s0, s1, s2
# CHECK-INSTR: cv.dotsp.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x91]

cv.dotsp.sc.h t0, t1, t2
# CHECK-INSTR: cv.dotsp.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x90]

cv.dotsp.sc.h a0, a1, a2
# CHECK-INSTR: cv.dotsp.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x90]

cv.dotsp.sc.h s0, s1, s2
# CHECK-INSTR: cv.dotsp.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x91]

cv.dotsp.sc.b t0, t1, t2
# CHECK-INSTR: cv.dotsp.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x90]

cv.dotsp.sc.b a0, a1, a2
# CHECK-INSTR: cv.dotsp.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x90]

cv.dotsp.sc.b s0, s1, s2
# CHECK-INSTR: cv.dotsp.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x91]

cv.dotsp.sci.h t0, t1, -32
# CHECK-INSTR: cv.dotsp.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x91]

cv.dotsp.sci.h a0, a1, 7
# CHECK-INSTR: cv.dotsp.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x92]

cv.dotsp.sci.h s0, s1, -1
# CHECK-INSTR: cv.dotsp.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x93]

cv.dotsp.sci.b t0, t1, -32
# CHECK-INSTR: cv.dotsp.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x91]

cv.dotsp.sci.b a0, a1, 7
# CHECK-INSTR: cv.dotsp.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x92]

cv.dotsp.sci.b s0, s1, -1
# CHECK-INSTR: cv.dotsp.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x93]

cv.sdotup.h t0, t1, t2
# CHECK-INSTR: cv.sdotup.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x98]

cv.sdotup.h a0, a1, a2
# CHECK-INSTR: cv.sdotup.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x98]

cv.sdotup.h s0, s1, s2
# CHECK-INSTR: cv.sdotup.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x99]

cv.sdotup.b t0, t1, t2
# CHECK-INSTR: cv.sdotup.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x98]

cv.sdotup.b a0, a1, a2
# CHECK-INSTR: cv.sdotup.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x98]

cv.sdotup.b s0, s1, s2
# CHECK-INSTR: cv.sdotup.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x99]

cv.sdotup.sc.h t0, t1, t2
# CHECK-INSTR: cv.sdotup.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x98]

cv.sdotup.sc.h a0, a1, a2
# CHECK-INSTR: cv.sdotup.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x98]

cv.sdotup.sc.h s0, s1, s2
# CHECK-INSTR: cv.sdotup.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x99]

cv.sdotup.sc.b t0, t1, t2
# CHECK-INSTR: cv.sdotup.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x98]

cv.sdotup.sc.b a0, a1, a2
# CHECK-INSTR: cv.sdotup.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x98]

cv.sdotup.sc.b s0, s1, s2
# CHECK-INSTR: cv.sdotup.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x99]

cv.sdotup.sci.h t0, t1, -32
# CHECK-INSTR: cv.sdotup.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x99]

cv.sdotup.sci.h a0, a1, 7
# CHECK-INSTR: cv.sdotup.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x9a]

cv.sdotup.sci.h s0, s1, -1
# CHECK-INSTR: cv.sdotup.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x9b]

cv.sdotup.sci.b t0, t1, -32
# CHECK-INSTR: cv.sdotup.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x99]

cv.sdotup.sci.b a0, a1, 7
# CHECK-INSTR: cv.sdotup.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x9a]

cv.sdotup.sci.b s0, s1, -1
# CHECK-INSTR: cv.sdotup.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x9b]

cv.sdotusp.h t0, t1, t2
# CHECK-INSTR: cv.sdotusp.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0xa0]

cv.sdotusp.h a0, a1, a2
# CHECK-INSTR: cv.sdotusp.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0xa0]

cv.sdotusp.h s0, s1, s2
# CHECK-INSTR: cv.sdotusp.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0xa1]

cv.sdotusp.b t0, t1, t2
# CHECK-INSTR: cv.sdotusp.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0xa0]

cv.sdotusp.b a0, a1, a2
# CHECK-INSTR: cv.sdotusp.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0xa0]

cv.sdotusp.b s0, s1, s2
# CHECK-INSTR: cv.sdotusp.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0xa1]

cv.sdotusp.sc.h t0, t1, t2
# CHECK-INSTR: cv.sdotusp.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0xa0]

cv.sdotusp.sc.h a0, a1, a2
# CHECK-INSTR: cv.sdotusp.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0xa0]

cv.sdotusp.sc.h s0, s1, s2
# CHECK-INSTR: cv.sdotusp.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0xa1]

cv.sdotusp.sc.b t0, t1, t2
# CHECK-INSTR: cv.sdotusp.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0xa0]

cv.sdotusp.sc.b a0, a1, a2
# CHECK-INSTR: cv.sdotusp.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0xa0]

cv.sdotusp.sc.b s0, s1, s2
# CHECK-INSTR: cv.sdotusp.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0xa1]

cv.sdotusp.sci.h t0, t1, -32
# CHECK-INSTR: cv.sdotusp.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0xa1]

cv.sdotusp.sci.h a0, a1, 7
# CHECK-INSTR: cv.sdotusp.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0xa2]

cv.sdotusp.sci.h s0, s1, -1
# CHECK-INSTR: cv.sdotusp.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0xa3]

cv.sdotusp.sci.b t0, t1, -32
# CHECK-INSTR: cv.sdotusp.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0xa1]

cv.sdotusp.sci.b a0, a1, 7
# CHECK-INSTR: cv.sdotusp.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0xa2]

cv.sdotusp.sci.b s0, s1, -1
# CHECK-INSTR: cv.sdotusp.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0xa3]

cv.sdotsp.h t0, t1, t2
# CHECK-INSTR: cv.sdotsp.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0xa8]

cv.sdotsp.h a0, a1, a2
# CHECK-INSTR: cv.sdotsp.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0xa8]

cv.sdotsp.h s0, s1, s2
# CHECK-INSTR: cv.sdotsp.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0xa9]

cv.sdotsp.b t0, t1, t2
# CHECK-INSTR: cv.sdotsp.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0xa8]

cv.sdotsp.b a0, a1, a2
# CHECK-INSTR: cv.sdotsp.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0xa8]

cv.sdotsp.b s0, s1, s2
# CHECK-INSTR: cv.sdotsp.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0xa9]

cv.sdotsp.sc.h t0, t1, t2
# CHECK-INSTR: cv.sdotsp.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0xa8]

cv.sdotsp.sc.h a0, a1, a2
# CHECK-INSTR: cv.sdotsp.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0xa8]

cv.sdotsp.sc.h s0, s1, s2
# CHECK-INSTR: cv.sdotsp.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0xa9]

cv.sdotsp.sc.b t0, t1, t2
# CHECK-INSTR: cv.sdotsp.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0xa8]

cv.sdotsp.sc.b a0, a1, a2
# CHECK-INSTR: cv.sdotsp.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0xa8]

cv.sdotsp.sc.b s0, s1, s2
# CHECK-INSTR: cv.sdotsp.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0xa9]

cv.sdotsp.sci.h t0, t1, -32
# CHECK-INSTR: cv.sdotsp.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0xa9]

cv.sdotsp.sci.h a0, a1, 7
# CHECK-INSTR: cv.sdotsp.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0xaa]

cv.sdotsp.sci.h s0, s1, -1
# CHECK-INSTR: cv.sdotsp.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0xab]

cv.sdotsp.sci.b t0, t1, -32
# CHECK-INSTR: cv.sdotsp.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0xa9]

cv.sdotsp.sci.b a0, a1, 7
# CHECK-INSTR: cv.sdotsp.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0xaa]

cv.sdotsp.sci.b s0, s1, -1
# CHECK-INSTR: cv.sdotsp.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0xab]

cv.extract.h t0, t1, -32
# CHECK-INSTR: cv.extract.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x02,0x03,0xb9]

cv.extract.h a0, a1, 7
# CHECK-INSTR: cv.extract.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0x85,0x35,0xba]

cv.extract.h s0, s1, -1
# CHECK-INSTR: cv.extract.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0x84,0xf4,0xbb]

cv.extract.b t0, t1, -32
# CHECK-INSTR: cv.extract.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x12,0x03,0xb9]

cv.extract.b a0, a1, 7
# CHECK-INSTR: cv.extract.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0x95,0x35,0xba]

cv.extract.b s0, s1, -1
# CHECK-INSTR: cv.extract.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0x94,0xf4,0xbb]

cv.extractu.h t0, t1, -32
# CHECK-INSTR: cv.extractu.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x22,0x03,0xb9]

cv.extractu.h a0, a1, 7
# CHECK-INSTR: cv.extractu.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xa5,0x35,0xba]

cv.extractu.h s0, s1, -1
# CHECK-INSTR: cv.extractu.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xa4,0xf4,0xbb]

cv.extractu.b t0, t1, -32
# CHECK-INSTR: cv.extractu.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x32,0x03,0xb9]

cv.extractu.b a0, a1, 7
# CHECK-INSTR: cv.extractu.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xb5,0x35,0xba]

cv.extractu.b s0, s1, -1
# CHECK-INSTR: cv.extractu.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xb4,0xf4,0xbb]

cv.insert.h t0, t1, -32
# CHECK-INSTR: cv.insert.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x42,0x03,0xb9]

cv.insert.h a0, a1, 7
# CHECK-INSTR: cv.insert.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xc5,0x35,0xba]

cv.insert.h s0, s1, -1
# CHECK-INSTR: cv.insert.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xc4,0xf4,0xbb]

cv.insert.b t0, t1, -32
# CHECK-INSTR: cv.insert.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x52,0x03,0xb9]

cv.insert.b a0, a1, 7
# CHECK-INSTR: cv.insert.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xd5,0x35,0xba]

cv.insert.b s0, s1, -1
# CHECK-INSTR: cv.insert.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xd4,0xf4,0xbb]

cv.shuffle.h t0, t1, t2
# CHECK-INSTR: cv.shuffle.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0xc0]

cv.shuffle.h a0, a1, a2
# CHECK-INSTR: cv.shuffle.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0xc0]

cv.shuffle.h s0, s1, s2
# CHECK-INSTR: cv.shuffle.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0xc1]

cv.shuffle.b t0, t1, t2
# CHECK-INSTR: cv.shuffle.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0xc0]

cv.shuffle.b a0, a1, a2
# CHECK-INSTR: cv.shuffle.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0xc0]

cv.shuffle.b s0, s1, s2
# CHECK-INSTR: cv.shuffle.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0xc1]

cv.shuffle.sci.h t0, t1, -32
# CHECK-INSTR: cv.shuffle.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0xc1]

cv.shuffle.sci.h a0, a1, 7
# CHECK-INSTR: cv.shuffle.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0xc2]

cv.shuffle.sci.h s0, s1, -1
# CHECK-INSTR: cv.shuffle.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0xc3]

cv.shuffleI0.sci.b t0, t1, -32
# CHECK-INSTR: cv.shuffleI0.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0xc1]

cv.shuffleI0.sci.b a0, a1, 7
# CHECK-INSTR: cv.shuffleI0.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0xc2]

cv.shuffleI0.sci.b s0, s1, -1
# CHECK-INSTR: cv.shuffleI0.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0xc3]

cv.shuffleI1.sci.b t0, t1, -32
# CHECK-INSTR: cv.shuffleI1.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0xc9]

cv.shuffleI1.sci.b a0, a1, 7
# CHECK-INSTR: cv.shuffleI1.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0xca]

cv.shuffleI1.sci.b s0, s1, -1
# CHECK-INSTR: cv.shuffleI1.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0xcb]

cv.shuffleI2.sci.b t0, t1, -32
# CHECK-INSTR: cv.shuffleI2.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0xd1]

cv.shuffleI2.sci.b a0, a1, 7
# CHECK-INSTR: cv.shuffleI2.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0xd2]

cv.shuffleI2.sci.b s0, s1, -1
# CHECK-INSTR: cv.shuffleI2.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0xd3]

cv.shuffleI3.sci.b t0, t1, -32
# CHECK-INSTR: cv.shuffleI3.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0xd9]

cv.shuffleI3.sci.b a0, a1, 7
# CHECK-INSTR: cv.shuffleI3.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0xda]

cv.shuffleI3.sci.b s0, s1, -1
# CHECK-INSTR: cv.shuffleI3.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0xdb]

cv.shuffle2.h t0, t1, t2
# CHECK-INSTR: cv.shuffle2.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0xe0]

cv.shuffle2.h a0, a1, a2
# CHECK-INSTR: cv.shuffle2.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0xe0]

cv.shuffle2.h s0, s1, s2
# CHECK-INSTR: cv.shuffle2.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0xe1]

cv.shuffle2.b t0, t1, t2
# CHECK-INSTR: cv.shuffle2.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0xe0]

cv.shuffle2.b a0, a1, a2
# CHECK-INSTR: cv.shuffle2.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0xe0]

cv.shuffle2.b s0, s1, s2
# CHECK-INSTR: cv.shuffle2.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0xe1]

cv.pack t0, t1, t2
# CHECK-INSTR: cv.pack t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0xf0]

cv.pack a0, a1, a2
# CHECK-INSTR: cv.pack a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0xf0]

cv.pack s0, s1, s2
# CHECK-INSTR: cv.pack s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0xf1]

cv.pack.h t0, t1, t2
# CHECK-INSTR: cv.pack.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0xf2]

cv.pack.h a0, a1, a2
# CHECK-INSTR: cv.pack.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0xf2]

cv.pack.h s0, s1, s2
# CHECK-INSTR: cv.pack.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0xf3]

cv.packhi.b t0, t1, t2
# CHECK-INSTR: cv.packhi.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0xfa]

cv.packhi.b a0, a1, a2
# CHECK-INSTR: cv.packhi.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0xfa]

cv.packhi.b s0, s1, s2
# CHECK-INSTR: cv.packhi.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0xfb]

cv.packlo.b t0, t1, t2
# CHECK-INSTR: cv.packlo.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0xf8]

cv.packlo.b a0, a1, a2
# CHECK-INSTR: cv.packlo.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0xf8]

cv.packlo.b s0, s1, s2
# CHECK-INSTR: cv.packlo.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0xf9]

cv.cmpeq.h t0, t1, t2
# CHECK-INSTR: cv.cmpeq.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x04]

cv.cmpeq.h a0, a1, a2
# CHECK-INSTR: cv.cmpeq.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x04]

cv.cmpeq.h s0, s1, s2
# CHECK-INSTR: cv.cmpeq.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x05]

cv.cmpeq.b t0, t1, t2
# CHECK-INSTR: cv.cmpeq.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x04]

cv.cmpeq.b a0, a1, a2
# CHECK-INSTR: cv.cmpeq.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x04]

cv.cmpeq.b s0, s1, s2
# CHECK-INSTR: cv.cmpeq.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x05]

cv.cmpeq.sc.h t0, t1, t2
# CHECK-INSTR: cv.cmpeq.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x04]

cv.cmpeq.sc.h a0, a1, a2
# CHECK-INSTR: cv.cmpeq.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x04]

cv.cmpeq.sc.h s0, s1, s2
# CHECK-INSTR: cv.cmpeq.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x05]

cv.cmpeq.sc.b t0, t1, t2
# CHECK-INSTR: cv.cmpeq.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x04]

cv.cmpeq.sc.b a0, a1, a2
# CHECK-INSTR: cv.cmpeq.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x04]

cv.cmpeq.sc.b s0, s1, s2
# CHECK-INSTR: cv.cmpeq.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x05]

cv.cmpeq.sci.h t0, t1, -32
# CHECK-INSTR: cv.cmpeq.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x05]

cv.cmpeq.sci.h a0, a1, 7
# CHECK-INSTR: cv.cmpeq.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x06]

cv.cmpeq.sci.h s0, s1, -1
# CHECK-INSTR: cv.cmpeq.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x07]

cv.cmpeq.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmpeq.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x05]

cv.cmpeq.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmpeq.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x06]

cv.cmpeq.sci.b s0, s1, -1
# CHECK-INSTR: cv.cmpeq.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x07]

cv.cmpne.h t0, t1, t2
# CHECK-INSTR: cv.cmpne.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x0c]

cv.cmpne.h a0, a1, a2
# CHECK-INSTR: cv.cmpne.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x0c]

cv.cmpne.h s0, s1, s2
# CHECK-INSTR: cv.cmpne.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x0d]

cv.cmpne.b t0, t1, t2
# CHECK-INSTR: cv.cmpne.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x0c]

cv.cmpne.b a0, a1, a2
# CHECK-INSTR: cv.cmpne.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x0c]

cv.cmpne.b s0, s1, s2
# CHECK-INSTR: cv.cmpne.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x0d]

cv.cmpne.sc.h t0, t1, t2
# CHECK-INSTR: cv.cmpne.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x0c]

cv.cmpne.sc.h a0, a1, a2
# CHECK-INSTR: cv.cmpne.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x0c]

cv.cmpne.sc.h s0, s1, s2
# CHECK-INSTR: cv.cmpne.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x0d]

cv.cmpne.sc.b t0, t1, t2
# CHECK-INSTR: cv.cmpne.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x0c]

cv.cmpne.sc.b a0, a1, a2
# CHECK-INSTR: cv.cmpne.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x0c]

cv.cmpne.sc.b s0, s1, s2
# CHECK-INSTR: cv.cmpne.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x0d]

cv.cmpne.sci.h t0, t1, -32
# CHECK-INSTR: cv.cmpne.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x0d]

cv.cmpne.sci.h a0, a1, 7
# CHECK-INSTR: cv.cmpne.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x0e]

cv.cmpne.sci.h s0, s1, -1
# CHECK-INSTR: cv.cmpne.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x0f]

cv.cmpne.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmpne.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x0d]

cv.cmpne.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmpne.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x0e]

cv.cmpne.sci.b s0, s1, -1
# CHECK-INSTR: cv.cmpne.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x0f]

cv.cmpgt.h t0, t1, t2
# CHECK-INSTR: cv.cmpgt.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x14]

cv.cmpgt.h a0, a1, a2
# CHECK-INSTR: cv.cmpgt.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x14]

cv.cmpgt.h s0, s1, s2
# CHECK-INSTR: cv.cmpgt.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x15]

cv.cmpgt.b t0, t1, t2
# CHECK-INSTR: cv.cmpgt.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x14]

cv.cmpgt.b a0, a1, a2
# CHECK-INSTR: cv.cmpgt.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x14]

cv.cmpgt.b s0, s1, s2
# CHECK-INSTR: cv.cmpgt.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x15]

cv.cmpgt.sc.h t0, t1, t2
# CHECK-INSTR: cv.cmpgt.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x14]

cv.cmpgt.sc.h a0, a1, a2
# CHECK-INSTR: cv.cmpgt.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x14]

cv.cmpgt.sc.h s0, s1, s2
# CHECK-INSTR: cv.cmpgt.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x15]

cv.cmpgt.sc.b t0, t1, t2
# CHECK-INSTR: cv.cmpgt.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x14]

cv.cmpgt.sc.b a0, a1, a2
# CHECK-INSTR: cv.cmpgt.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x14]

cv.cmpgt.sc.b s0, s1, s2
# CHECK-INSTR: cv.cmpgt.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x15]

cv.cmpgt.sci.h t0, t1, -32
# CHECK-INSTR: cv.cmpgt.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x15]

cv.cmpgt.sci.h a0, a1, 7
# CHECK-INSTR: cv.cmpgt.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x16]

cv.cmpgt.sci.h s0, s1, -1
# CHECK-INSTR: cv.cmpgt.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x17]

cv.cmpgt.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmpgt.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x15]

cv.cmpgt.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmpgt.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x16]

cv.cmpgt.sci.b s0, s1, -1
# CHECK-INSTR: cv.cmpgt.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x17]

cv.cmpge.h t0, t1, t2
# CHECK-INSTR: cv.cmpge.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x1c]

cv.cmpge.h a0, a1, a2
# CHECK-INSTR: cv.cmpge.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x1c]

cv.cmpge.h s0, s1, s2
# CHECK-INSTR: cv.cmpge.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x1d]

cv.cmpge.b t0, t1, t2
# CHECK-INSTR: cv.cmpge.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x1c]

cv.cmpge.b a0, a1, a2
# CHECK-INSTR: cv.cmpge.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x1c]

cv.cmpge.b s0, s1, s2
# CHECK-INSTR: cv.cmpge.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x1d]

cv.cmpge.sc.h t0, t1, t2
# CHECK-INSTR: cv.cmpge.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x1c]

cv.cmpge.sc.h a0, a1, a2
# CHECK-INSTR: cv.cmpge.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x1c]

cv.cmpge.sc.h s0, s1, s2
# CHECK-INSTR: cv.cmpge.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x1d]

cv.cmpge.sc.b t0, t1, t2
# CHECK-INSTR: cv.cmpge.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x1c]

cv.cmpge.sc.b a0, a1, a2
# CHECK-INSTR: cv.cmpge.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x1c]

cv.cmpge.sc.b s0, s1, s2
# CHECK-INSTR: cv.cmpge.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x1d]

cv.cmpge.sci.h t0, t1, -32
# CHECK-INSTR: cv.cmpge.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x1d]

cv.cmpge.sci.h a0, a1, 7
# CHECK-INSTR: cv.cmpge.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x1e]

cv.cmpge.sci.h s0, s1, -1
# CHECK-INSTR: cv.cmpge.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x1f]

cv.cmpge.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmpge.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x1d]

cv.cmpge.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmpge.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x1e]

cv.cmpge.sci.b s0, s1, -1
# CHECK-INSTR: cv.cmpge.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x1f]

cv.cmplt.h t0, t1, t2
# CHECK-INSTR: cv.cmplt.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x24]

cv.cmplt.h a0, a1, a2
# CHECK-INSTR: cv.cmplt.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x24]

cv.cmplt.h s0, s1, s2
# CHECK-INSTR: cv.cmplt.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x25]

cv.cmplt.b t0, t1, t2
# CHECK-INSTR: cv.cmplt.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x24]

cv.cmplt.b a0, a1, a2
# CHECK-INSTR: cv.cmplt.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x24]

cv.cmplt.b s0, s1, s2
# CHECK-INSTR: cv.cmplt.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x25]

cv.cmplt.sc.h t0, t1, t2
# CHECK-INSTR: cv.cmplt.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x24]

cv.cmplt.sc.h a0, a1, a2
# CHECK-INSTR: cv.cmplt.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x24]

cv.cmplt.sc.h s0, s1, s2
# CHECK-INSTR: cv.cmplt.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x25]

cv.cmplt.sc.b t0, t1, t2
# CHECK-INSTR: cv.cmplt.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x24]

cv.cmplt.sc.b a0, a1, a2
# CHECK-INSTR: cv.cmplt.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x24]

cv.cmplt.sc.b s0, s1, s2
# CHECK-INSTR: cv.cmplt.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x25]

cv.cmplt.sci.h t0, t1, -32
# CHECK-INSTR: cv.cmplt.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x25]

cv.cmplt.sci.h a0, a1, 7
# CHECK-INSTR: cv.cmplt.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x26]

cv.cmplt.sci.h s0, s1, -1
# CHECK-INSTR: cv.cmplt.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x27]

cv.cmplt.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmplt.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x25]

cv.cmplt.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmplt.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x26]

cv.cmplt.sci.b s0, s1, -1
# CHECK-INSTR: cv.cmplt.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x27]

cv.cmple.h t0, t1, t2
# CHECK-INSTR: cv.cmple.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x2c]

cv.cmple.h a0, a1, a2
# CHECK-INSTR: cv.cmple.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x2c]

cv.cmple.h s0, s1, s2
# CHECK-INSTR: cv.cmple.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x2d]

cv.cmple.b t0, t1, t2
# CHECK-INSTR: cv.cmple.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x2c]

cv.cmple.b a0, a1, a2
# CHECK-INSTR: cv.cmple.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x2c]

cv.cmple.b s0, s1, s2
# CHECK-INSTR: cv.cmple.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x2d]

cv.cmple.sc.h t0, t1, t2
# CHECK-INSTR: cv.cmple.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x2c]

cv.cmple.sc.h a0, a1, a2
# CHECK-INSTR: cv.cmple.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x2c]

cv.cmple.sc.h s0, s1, s2
# CHECK-INSTR: cv.cmple.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x2d]

cv.cmple.sc.b t0, t1, t2
# CHECK-INSTR: cv.cmple.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x2c]

cv.cmple.sc.b a0, a1, a2
# CHECK-INSTR: cv.cmple.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x2c]

cv.cmple.sc.b s0, s1, s2
# CHECK-INSTR: cv.cmple.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x2d]

cv.cmple.sci.h t0, t1, -32
# CHECK-INSTR: cv.cmple.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x2d]

cv.cmple.sci.h a0, a1, 7
# CHECK-INSTR: cv.cmple.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x2e]

cv.cmple.sci.h s0, s1, -1
# CHECK-INSTR: cv.cmple.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x2f]

cv.cmple.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmple.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x2d]

cv.cmple.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmple.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x2e]

cv.cmple.sci.b s0, s1, -1
# CHECK-INSTR: cv.cmple.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x2f]

cv.cmpgtu.h t0, t1, t2
# CHECK-INSTR: cv.cmpgtu.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x34]

cv.cmpgtu.h a0, a1, a2
# CHECK-INSTR: cv.cmpgtu.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x34]

cv.cmpgtu.h s0, s1, s2
# CHECK-INSTR: cv.cmpgtu.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x35]

cv.cmpgtu.b t0, t1, t2
# CHECK-INSTR: cv.cmpgtu.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x34]

cv.cmpgtu.b a0, a1, a2
# CHECK-INSTR: cv.cmpgtu.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x34]

cv.cmpgtu.b s0, s1, s2
# CHECK-INSTR: cv.cmpgtu.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x35]

cv.cmpgtu.sc.h t0, t1, t2
# CHECK-INSTR: cv.cmpgtu.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x34]

cv.cmpgtu.sc.h a0, a1, a2
# CHECK-INSTR: cv.cmpgtu.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x34]

cv.cmpgtu.sc.h s0, s1, s2
# CHECK-INSTR: cv.cmpgtu.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x35]

cv.cmpgtu.sc.b t0, t1, t2
# CHECK-INSTR: cv.cmpgtu.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x34]

cv.cmpgtu.sc.b a0, a1, a2
# CHECK-INSTR: cv.cmpgtu.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x34]

cv.cmpgtu.sc.b s0, s1, s2
# CHECK-INSTR: cv.cmpgtu.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x35]

cv.cmpgtu.sci.h t0, t1, -32
# CHECK-INSTR: cv.cmpgtu.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x35]

cv.cmpgtu.sci.h a0, a1, 7
# CHECK-INSTR: cv.cmpgtu.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x36]

cv.cmpgtu.sci.h s0, s1, -1
# CHECK-INSTR: cv.cmpgtu.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x37]

cv.cmpgtu.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmpgtu.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x35]

cv.cmpgtu.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmpgtu.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x36]

cv.cmpgtu.sci.b s0, s1, -1
# CHECK-INSTR: cv.cmpgtu.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x37]

cv.cmpgeu.h t0, t1, t2
# CHECK-INSTR: cv.cmpgeu.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x3c]

cv.cmpgeu.h a0, a1, a2
# CHECK-INSTR: cv.cmpgeu.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x3c]

cv.cmpgeu.h s0, s1, s2
# CHECK-INSTR: cv.cmpgeu.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x3d]

cv.cmpgeu.b t0, t1, t2
# CHECK-INSTR: cv.cmpgeu.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x3c]

cv.cmpgeu.b a0, a1, a2
# CHECK-INSTR: cv.cmpgeu.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x3c]

cv.cmpgeu.b s0, s1, s2
# CHECK-INSTR: cv.cmpgeu.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x3d]

cv.cmpgeu.sc.h t0, t1, t2
# CHECK-INSTR: cv.cmpgeu.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x3c]

cv.cmpgeu.sc.h a0, a1, a2
# CHECK-INSTR: cv.cmpgeu.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x3c]

cv.cmpgeu.sc.h s0, s1, s2
# CHECK-INSTR: cv.cmpgeu.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x3d]

cv.cmpgeu.sc.b t0, t1, t2
# CHECK-INSTR: cv.cmpgeu.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x3c]

cv.cmpgeu.sc.b a0, a1, a2
# CHECK-INSTR: cv.cmpgeu.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x3c]

cv.cmpgeu.sc.b s0, s1, s2
# CHECK-INSTR: cv.cmpgeu.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x3d]

cv.cmpgeu.sci.h t0, t1, -32
# CHECK-INSTR: cv.cmpgeu.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x3d]

cv.cmpgeu.sci.h a0, a1, 7
# CHECK-INSTR: cv.cmpgeu.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x3e]

cv.cmpgeu.sci.h s0, s1, -1
# CHECK-INSTR: cv.cmpgeu.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x3f]

cv.cmpgeu.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmpgeu.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x3d]

cv.cmpgeu.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmpgeu.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x3e]

cv.cmpgeu.sci.b s0, s1, -1
# CHECK-INSTR: cv.cmpgeu.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x3f]

cv.cmpltu.h t0, t1, t2
# CHECK-INSTR: cv.cmpltu.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x44]

cv.cmpltu.h a0, a1, a2
# CHECK-INSTR: cv.cmpltu.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x44]

cv.cmpltu.h s0, s1, s2
# CHECK-INSTR: cv.cmpltu.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x45]

cv.cmpltu.b t0, t1, t2
# CHECK-INSTR: cv.cmpltu.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x44]

cv.cmpltu.b a0, a1, a2
# CHECK-INSTR: cv.cmpltu.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x44]

cv.cmpltu.b s0, s1, s2
# CHECK-INSTR: cv.cmpltu.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x45]

cv.cmpltu.sc.h t0, t1, t2
# CHECK-INSTR: cv.cmpltu.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x44]

cv.cmpltu.sc.h a0, a1, a2
# CHECK-INSTR: cv.cmpltu.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x44]

cv.cmpltu.sc.h s0, s1, s2
# CHECK-INSTR: cv.cmpltu.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x45]

cv.cmpltu.sc.b t0, t1, t2
# CHECK-INSTR: cv.cmpltu.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x44]

cv.cmpltu.sc.b a0, a1, a2
# CHECK-INSTR: cv.cmpltu.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x44]

cv.cmpltu.sc.b s0, s1, s2
# CHECK-INSTR: cv.cmpltu.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x45]

cv.cmpltu.sci.h t0, t1, -32
# CHECK-INSTR: cv.cmpltu.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x45]

cv.cmpltu.sci.h a0, a1, 7
# CHECK-INSTR: cv.cmpltu.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x46]

cv.cmpltu.sci.h s0, s1, -1
# CHECK-INSTR: cv.cmpltu.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x47]

cv.cmpltu.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmpltu.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x45]

cv.cmpltu.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmpltu.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x46]

cv.cmpltu.sci.b s0, s1, -1
# CHECK-INSTR: cv.cmpltu.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x47]

cv.cmpleu.h t0, t1, t2
# CHECK-INSTR: cv.cmpleu.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x4c]

cv.cmpleu.h a0, a1, a2
# CHECK-INSTR: cv.cmpleu.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x4c]

cv.cmpleu.h s0, s1, s2
# CHECK-INSTR: cv.cmpleu.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x4d]

cv.cmpleu.b t0, t1, t2
# CHECK-INSTR: cv.cmpleu.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x4c]

cv.cmpleu.b a0, a1, a2
# CHECK-INSTR: cv.cmpleu.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x4c]

cv.cmpleu.b s0, s1, s2
# CHECK-INSTR: cv.cmpleu.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x4d]

cv.cmpleu.sc.h t0, t1, t2
# CHECK-INSTR: cv.cmpleu.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x4c]

cv.cmpleu.sc.h a0, a1, a2
# CHECK-INSTR: cv.cmpleu.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x4c]

cv.cmpleu.sc.h s0, s1, s2
# CHECK-INSTR: cv.cmpleu.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x4d]

cv.cmpleu.sc.b t0, t1, t2
# CHECK-INSTR: cv.cmpleu.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x4c]

cv.cmpleu.sc.b a0, a1, a2
# CHECK-INSTR: cv.cmpleu.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x4c]

cv.cmpleu.sc.b s0, s1, s2
# CHECK-INSTR: cv.cmpleu.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x4d]

cv.cmpleu.sci.h t0, t1, -32
# CHECK-INSTR: cv.cmpleu.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x4d]

cv.cmpleu.sci.h a0, a1, 7
# CHECK-INSTR: cv.cmpleu.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x4e]

cv.cmpleu.sci.h s0, s1, -1
# CHECK-INSTR: cv.cmpleu.sci.h s0, s1, -1
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x4f]

cv.cmpleu.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmpleu.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x4d]

cv.cmpleu.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmpleu.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x4e]

cv.cmpleu.sci.b s0, s1, -1
# CHECK-INSTR: cv.cmpleu.sci.b s0, s1, -1
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x4f]

cv.cplxmul.r t0, t1, t2
# CHECK-INSTR: cv.cplxmul.r t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x54]

cv.cplxmul.r a0, a1, a2
# CHECK-INSTR: cv.cplxmul.r a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x54]

cv.cplxmul.r s0, s1, s2
# CHECK-INSTR: cv.cplxmul.r s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x55]

cv.cplxmul.i t0, t1, t2
# CHECK-INSTR: cv.cplxmul.i t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x56]

cv.cplxmul.i a0, a1, a2
# CHECK-INSTR: cv.cplxmul.i a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x56]

cv.cplxmul.i s0, s1, s2
# CHECK-INSTR: cv.cplxmul.i s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x57]

cv.cplxmul.r.div2 t0, t1, t2
# CHECK-INSTR: cv.cplxmul.r.div2 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x22,0x73,0x54]

cv.cplxmul.r.div2 a0, a1, a2
# CHECK-INSTR: cv.cplxmul.r.div2 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xa5,0xc5,0x54]

cv.cplxmul.r.div2 s0, s1, s2
# CHECK-INSTR: cv.cplxmul.r.div2 s0, s1, s2
# CHECK-ENCODING: [0x7b,0xa4,0x24,0x55]

cv.cplxmul.i.div2 t0, t1, t2
# CHECK-INSTR: cv.cplxmul.i.div2 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x22,0x73,0x56]

cv.cplxmul.i.div2 a0, a1, a2
# CHECK-INSTR: cv.cplxmul.i.div2 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xa5,0xc5,0x56]

cv.cplxmul.i.div2 s0, s1, s2
# CHECK-INSTR: cv.cplxmul.i.div2 s0, s1, s2
# CHECK-ENCODING: [0x7b,0xa4,0x24,0x57]

cv.cplxmul.r.div4 t0, t1, t2
# CHECK-INSTR: cv.cplxmul.r.div4 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x54]

cv.cplxmul.r.div4 a0, a1, a2
# CHECK-INSTR: cv.cplxmul.r.div4 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x54]

cv.cplxmul.r.div4 s0, s1, s2
# CHECK-INSTR: cv.cplxmul.r.div4 s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x55]

cv.cplxmul.i.div4 t0, t1, t2
# CHECK-INSTR: cv.cplxmul.i.div4 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x56]

cv.cplxmul.i.div4 a0, a1, a2
# CHECK-INSTR: cv.cplxmul.i.div4 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x56]

cv.cplxmul.i.div4 s0, s1, s2
# CHECK-INSTR: cv.cplxmul.i.div4 s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x57]

cv.cplxmul.r.div8 t0, t1, t2
# CHECK-INSTR: cv.cplxmul.r.div8 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x62,0x73,0x54]

cv.cplxmul.r.div8 a0, a1, a2
# CHECK-INSTR: cv.cplxmul.r.div8 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xe5,0xc5,0x54]

cv.cplxmul.r.div8 s0, s1, s2
# CHECK-INSTR: cv.cplxmul.r.div8 s0, s1, s2
# CHECK-ENCODING: [0x7b,0xe4,0x24,0x55]

cv.cplxmul.i.div8 t0, t1, t2
# CHECK-INSTR: cv.cplxmul.i.div8 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x62,0x73,0x56]

cv.cplxmul.i.div8 a0, a1, a2
# CHECK-INSTR: cv.cplxmul.i.div8 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xe5,0xc5,0x56]

cv.cplxmul.i.div8 s0, s1, s2
# CHECK-INSTR: cv.cplxmul.i.div8 s0, s1, s2
# CHECK-ENCODING: [0x7b,0xe4,0x24,0x57]

cv.cplxconj t0, t1
# CHECK-INSTR: cv.cplxconj t0, t1
# CHECK-ENCODING: [0xfb,0x02,0x03,0x5c]

cv.cplxconj a0, a1
# CHECK-INSTR: cv.cplxconj a0, a1
# CHECK-ENCODING: [0x7b,0x85,0x05,0x5c]

cv.cplxconj s0, s1
# CHECK-INSTR: cv.cplxconj s0, s1
# CHECK-ENCODING: [0x7b,0x84,0x04,0x5c]

cv.subrotmj t0, t1, t2
# CHECK-INSTR: cv.subrotmj t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x64]

cv.subrotmj a0, a1, a2
# CHECK-INSTR: cv.subrotmj a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x64]

cv.subrotmj s0, s1, s2
# CHECK-INSTR: cv.subrotmj s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x65]

cv.subrotmj.div2 t0, t1, t2
# CHECK-INSTR: cv.subrotmj.div2 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x22,0x73,0x64]

cv.subrotmj.div2 a0, a1, a2
# CHECK-INSTR: cv.subrotmj.div2 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xa5,0xc5,0x64]

cv.subrotmj.div2 s0, s1, s2
# CHECK-INSTR: cv.subrotmj.div2 s0, s1, s2
# CHECK-ENCODING: [0x7b,0xa4,0x24,0x65]

cv.subrotmj.div4 t0, t1, t2
# CHECK-INSTR: cv.subrotmj.div4 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x64]

cv.subrotmj.div4 a0, a1, a2
# CHECK-INSTR: cv.subrotmj.div4 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x64]

cv.subrotmj.div4 s0, s1, s2
# CHECK-INSTR: cv.subrotmj.div4 s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x65]

cv.subrotmj.div8 t0, t1, t2
# CHECK-INSTR: cv.subrotmj.div8 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x62,0x73,0x64]

cv.subrotmj.div8 a0, a1, a2
# CHECK-INSTR: cv.subrotmj.div8 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xe5,0xc5,0x64]

cv.subrotmj.div8 s0, s1, s2
# CHECK-INSTR: cv.subrotmj.div8 s0, s1, s2
# CHECK-ENCODING: [0x7b,0xe4,0x24,0x65]

cv.add.div2 t0, t1, t2
# CHECK-INSTR: cv.add.div2 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x22,0x73,0x6c]

cv.add.div2 a0, a1, a2
# CHECK-INSTR: cv.add.div2 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xa5,0xc5,0x6c]

cv.add.div2 s0, s1, s2
# CHECK-INSTR: cv.add.div2 s0, s1, s2
# CHECK-ENCODING: [0x7b,0xa4,0x24,0x6d]

cv.add.div4 t0, t1, t2
# CHECK-INSTR: cv.add.div4 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x6c]

cv.add.div4 a0, a1, a2
# CHECK-INSTR: cv.add.div4 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x6c]

cv.add.div4 s0, s1, s2
# CHECK-INSTR: cv.add.div4 s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x6d]

cv.add.div8 t0, t1, t2
# CHECK-INSTR: cv.add.div8 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x62,0x73,0x6c]

cv.add.div8 a0, a1, a2
# CHECK-INSTR: cv.add.div8 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xe5,0xc5,0x6c]

cv.add.div8 s0, s1, s2
# CHECK-INSTR: cv.add.div8 s0, s1, s2
# CHECK-ENCODING: [0x7b,0xe4,0x24,0x6d]

cv.sub.div2 t0, t1, t2
# CHECK-INSTR: cv.sub.div2 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x22,0x73,0x74]

cv.sub.div2 a0, a1, a2
# CHECK-INSTR: cv.sub.div2 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xa5,0xc5,0x74]

cv.sub.div2 s0, s1, s2
# CHECK-INSTR: cv.sub.div2 s0, s1, s2
# CHECK-ENCODING: [0x7b,0xa4,0x24,0x75]

cv.sub.div4 t0, t1, t2
# CHECK-INSTR: cv.sub.div4 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x74]

cv.sub.div4 a0, a1, a2
# CHECK-INSTR: cv.sub.div4 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x74]

cv.sub.div4 s0, s1, s2
# CHECK-INSTR: cv.sub.div4 s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x75]

cv.sub.div8 t0, t1, t2
# CHECK-INSTR: cv.sub.div8 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x62,0x73,0x74]

cv.sub.div8 a0, a1, a2
# CHECK-INSTR: cv.sub.div8 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xe5,0xc5,0x74]

cv.sub.div8 s0, s1, s2
# CHECK-INSTR: cv.sub.div8 s0, s1, s2
# CHECK-ENCODING: [0x7b,0xe4,0x24,0x75]


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

cv.add.b t0, t1, t2
# CHECK-INSTR: cv.add.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x00]

cv.add.b a0, a1, a2
# CHECK-INSTR: cv.add.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x00]

cv.add.sc.h t0, t1, t2
# CHECK-INSTR: cv.add.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x00]

cv.add.sc.h a0, a1, a2
# CHECK-INSTR: cv.add.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x00]

cv.add.sc.b t0, t1, t2
# CHECK-INSTR: cv.add.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x00]

cv.add.sc.b a0, a1, a2
# CHECK-INSTR: cv.add.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x00]

cv.add.sci.h t0, t1, -32
# CHECK-INSTR: cv.add.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x01]

cv.add.sci.h a0, a1, 7
# CHECK-INSTR: cv.add.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x02]

cv.add.sci.b t0, t1, -32
# CHECK-INSTR: cv.add.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x01]

cv.add.sci.b a0, a1, 7
# CHECK-INSTR: cv.add.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x02]

cv.sub.h t0, t1, t2
# CHECK-INSTR: cv.sub.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x08]

cv.sub.h a0, a1, a2
# CHECK-INSTR: cv.sub.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x08]

cv.sub.b t0, t1, t2
# CHECK-INSTR: cv.sub.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x08]

cv.sub.b a0, a1, a2
# CHECK-INSTR: cv.sub.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x08]

cv.sub.sc.h t0, t1, t2
# CHECK-INSTR: cv.sub.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x08]

cv.sub.sc.h a0, a1, a2
# CHECK-INSTR: cv.sub.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x08]

cv.sub.sc.b t0, t1, t2
# CHECK-INSTR: cv.sub.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x08]

cv.sub.sc.b a0, a1, a2
# CHECK-INSTR: cv.sub.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x08]

cv.sub.sci.h t0, t1, -32
# CHECK-INSTR: cv.sub.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x09]

cv.sub.sci.h a0, a1, 7
# CHECK-INSTR: cv.sub.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x0a]

cv.sub.sci.b t0, t1, -32
# CHECK-INSTR: cv.sub.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x09]

cv.sub.sci.b a0, a1, 7
# CHECK-INSTR: cv.sub.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x0a]

cv.avg.h t0, t1, t2
# CHECK-INSTR: cv.avg.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x10]

cv.avg.h a0, a1, a2
# CHECK-INSTR: cv.avg.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x10]

cv.avg.b t0, t1, t2
# CHECK-INSTR: cv.avg.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x10]

cv.avg.b a0, a1, a2
# CHECK-INSTR: cv.avg.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x10]

cv.avg.sc.h t0, t1, t2
# CHECK-INSTR: cv.avg.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x10]

cv.avg.sc.h a0, a1, a2
# CHECK-INSTR: cv.avg.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x10]

cv.avg.sc.b t0, t1, t2
# CHECK-INSTR: cv.avg.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x10]

cv.avg.sc.b a0, a1, a2
# CHECK-INSTR: cv.avg.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x10]

cv.avg.sci.h t0, t1, -32
# CHECK-INSTR: cv.avg.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x11]

cv.avg.sci.h a0, a1, 7
# CHECK-INSTR: cv.avg.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x12]

cv.avg.sci.b t0, t1, -32
# CHECK-INSTR: cv.avg.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x11]

cv.avg.sci.b a0, a1, 7
# CHECK-INSTR: cv.avg.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x12]

cv.avgu.h t0, t1, t2
# CHECK-INSTR: cv.avgu.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x18]

cv.avgu.h a0, a1, a2
# CHECK-INSTR: cv.avgu.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x18]

cv.avgu.b t0, t1, t2
# CHECK-INSTR: cv.avgu.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x18]

cv.avgu.b a0, a1, a2
# CHECK-INSTR: cv.avgu.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x18]

cv.avgu.sc.h t0, t1, t2
# CHECK-INSTR: cv.avgu.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x18]

cv.avgu.sc.h a0, a1, a2
# CHECK-INSTR: cv.avgu.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x18]

cv.avgu.sc.b t0, t1, t2
# CHECK-INSTR: cv.avgu.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x18]

cv.avgu.sc.b a0, a1, a2
# CHECK-INSTR: cv.avgu.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x18]

cv.avgu.sci.h t0, t1, -32
# CHECK-INSTR: cv.avgu.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x19]

cv.avgu.sci.h a0, a1, 7
# CHECK-INSTR: cv.avgu.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x1a]

cv.avgu.sci.b t0, t1, -32
# CHECK-INSTR: cv.avgu.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x19]

cv.avgu.sci.b a0, a1, 7
# CHECK-INSTR: cv.avgu.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x1a]

cv.min.h t0, t1, t2
# CHECK-INSTR: cv.min.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x20]

cv.min.h a0, a1, a2
# CHECK-INSTR: cv.min.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x20]

cv.min.b t0, t1, t2
# CHECK-INSTR: cv.min.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x20]

cv.min.b a0, a1, a2
# CHECK-INSTR: cv.min.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x20]

cv.min.sc.h t0, t1, t2
# CHECK-INSTR: cv.min.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x20]

cv.min.sc.h a0, a1, a2
# CHECK-INSTR: cv.min.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x20]

cv.min.sc.b t0, t1, t2
# CHECK-INSTR: cv.min.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x20]

cv.min.sc.b a0, a1, a2
# CHECK-INSTR: cv.min.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x20]

cv.min.sci.h t0, t1, -32
# CHECK-INSTR: cv.min.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x21]

cv.min.sci.h a0, a1, 7
# CHECK-INSTR: cv.min.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x22]

cv.min.sci.b t0, t1, -32
# CHECK-INSTR: cv.min.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x21]

cv.min.sci.b a0, a1, 7
# CHECK-INSTR: cv.min.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x22]

cv.minu.h t0, t1, t2
# CHECK-INSTR: cv.minu.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x28]

cv.minu.h a0, a1, a2
# CHECK-INSTR: cv.minu.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x28]

cv.minu.b t0, t1, t2
# CHECK-INSTR: cv.minu.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x28]

cv.minu.b a0, a1, a2
# CHECK-INSTR: cv.minu.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x28]

cv.minu.sc.h t0, t1, t2
# CHECK-INSTR: cv.minu.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x28]

cv.minu.sc.h a0, a1, a2
# CHECK-INSTR: cv.minu.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x28]

cv.minu.sc.b t0, t1, t2
# CHECK-INSTR: cv.minu.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x28]

cv.minu.sc.b a0, a1, a2
# CHECK-INSTR: cv.minu.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x28]

cv.minu.sci.h t0, t1, 32
# CHECK-INSTR: cv.minu.sci.h t0, t1, 32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x29]

cv.minu.sci.h a0, a1, 7
# CHECK-INSTR: cv.minu.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x2a]

cv.minu.sci.b t0, t1, 32
# CHECK-INSTR: cv.minu.sci.b t0, t1, 32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x29]

cv.minu.sci.b a0, a1, 7
# CHECK-INSTR: cv.minu.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x2a]

cv.max.h t0, t1, t2
# CHECK-INSTR: cv.max.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x30]

cv.max.h a0, a1, a2
# CHECK-INSTR: cv.max.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x30]

cv.max.b t0, t1, t2
# CHECK-INSTR: cv.max.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x30]

cv.max.b a0, a1, a2
# CHECK-INSTR: cv.max.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x30]

cv.max.sc.h t0, t1, t2
# CHECK-INSTR: cv.max.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x30]

cv.max.sc.h a0, a1, a2
# CHECK-INSTR: cv.max.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x30]

cv.max.sc.b t0, t1, t2
# CHECK-INSTR: cv.max.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x30]

cv.max.sc.b a0, a1, a2
# CHECK-INSTR: cv.max.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x30]

cv.max.sci.h t0, t1, -32
# CHECK-INSTR: cv.max.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x31]

cv.max.sci.h a0, a1, 7
# CHECK-INSTR: cv.max.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x32]

cv.max.sci.b t0, t1, -32
# CHECK-INSTR: cv.max.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x31]

cv.max.sci.b a0, a1, 7
# CHECK-INSTR: cv.max.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x32]

cv.maxu.h t0, t1, t2
# CHECK-INSTR: cv.maxu.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x38]

cv.maxu.h a0, a1, a2
# CHECK-INSTR: cv.maxu.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x38]

cv.maxu.b t0, t1, t2
# CHECK-INSTR: cv.maxu.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x38]

cv.maxu.b a0, a1, a2
# CHECK-INSTR: cv.maxu.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x38]

cv.maxu.sc.h t0, t1, t2
# CHECK-INSTR: cv.maxu.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x38]

cv.maxu.sc.h a0, a1, a2
# CHECK-INSTR: cv.maxu.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x38]

cv.maxu.sc.b t0, t1, t2
# CHECK-INSTR: cv.maxu.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x38]

cv.maxu.sc.b a0, a1, a2
# CHECK-INSTR: cv.maxu.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x38]

cv.maxu.sci.h t0, t1, 32
# CHECK-INSTR: cv.maxu.sci.h t0, t1, 32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x39]

cv.maxu.sci.h a0, a1, 7
# CHECK-INSTR: cv.maxu.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x3a]

cv.maxu.sci.b t0, t1, 32
# CHECK-INSTR: cv.maxu.sci.b t0, t1, 32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x39]

cv.maxu.sci.b a0, a1, 7
# CHECK-INSTR: cv.maxu.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x3a]

cv.srl.h t0, t1, t2
# CHECK-INSTR: cv.srl.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x40]

cv.srl.h a0, a1, a2
# CHECK-INSTR: cv.srl.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x40]

cv.srl.b t0, t1, t2
# CHECK-INSTR: cv.srl.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x40]

cv.srl.b a0, a1, a2
# CHECK-INSTR: cv.srl.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x40]

cv.srl.sc.h t0, t1, t2
# CHECK-INSTR: cv.srl.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x40]

cv.srl.sc.h a0, a1, a2
# CHECK-INSTR: cv.srl.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x40]

cv.srl.sc.b t0, t1, t2
# CHECK-INSTR: cv.srl.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x40]

cv.srl.sc.b a0, a1, a2
# CHECK-INSTR: cv.srl.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x40]

cv.srl.sci.h t0, t1, 32
# CHECK-INSTR: cv.srl.sci.h t0, t1, 32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x41]

cv.srl.sci.h a0, a1, 7
# CHECK-INSTR: cv.srl.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x42]

cv.srl.sci.b t0, t1, 32
# CHECK-INSTR: cv.srl.sci.b t0, t1, 32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x41]

cv.srl.sci.b a0, a1, 7
# CHECK-INSTR: cv.srl.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x42]

cv.sra.h t0, t1, t2
# CHECK-INSTR: cv.sra.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x48]

cv.sra.h a0, a1, a2
# CHECK-INSTR: cv.sra.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x48]

cv.sra.b t0, t1, t2
# CHECK-INSTR: cv.sra.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x48]

cv.sra.b a0, a1, a2
# CHECK-INSTR: cv.sra.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x48]

cv.sra.sc.h t0, t1, t2
# CHECK-INSTR: cv.sra.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x48]

cv.sra.sc.h a0, a1, a2
# CHECK-INSTR: cv.sra.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x48]

cv.sra.sc.b t0, t1, t2
# CHECK-INSTR: cv.sra.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x48]

cv.sra.sc.b a0, a1, a2
# CHECK-INSTR: cv.sra.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x48]

cv.sra.sci.h t0, t1, 32
# CHECK-INSTR: cv.sra.sci.h t0, t1, 32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x49]

cv.sra.sci.h a0, a1, 7
# CHECK-INSTR: cv.sra.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x4a]

cv.sra.sci.b t0, t1, 32
# CHECK-INSTR: cv.sra.sci.b t0, t1, 32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x49]

cv.sra.sci.b a0, a1, 7
# CHECK-INSTR: cv.sra.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x4a]

cv.sll.h t0, t1, t2
# CHECK-INSTR: cv.sll.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x50]

cv.sll.h a0, a1, a2
# CHECK-INSTR: cv.sll.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x50]

cv.sll.b t0, t1, t2
# CHECK-INSTR: cv.sll.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x50]

cv.sll.b a0, a1, a2
# CHECK-INSTR: cv.sll.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x50]

cv.sll.sc.h t0, t1, t2
# CHECK-INSTR: cv.sll.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x50]

cv.sll.sc.h a0, a1, a2
# CHECK-INSTR: cv.sll.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x50]

cv.sll.sc.b t0, t1, t2
# CHECK-INSTR: cv.sll.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x50]

cv.sll.sc.b a0, a1, a2
# CHECK-INSTR: cv.sll.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x50]

cv.sll.sci.h t0, t1, 32
# CHECK-INSTR: cv.sll.sci.h t0, t1, 32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x51]

cv.sll.sci.h a0, a1, 7
# CHECK-INSTR: cv.sll.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x52]

cv.sll.sci.b t0, t1, 32
# CHECK-INSTR: cv.sll.sci.b t0, t1, 32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x51]

cv.sll.sci.b a0, a1, 7
# CHECK-INSTR: cv.sll.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x52]

cv.or.h t0, t1, t2
# CHECK-INSTR: cv.or.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x58]

cv.or.h a0, a1, a2
# CHECK-INSTR: cv.or.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x58]

cv.or.b t0, t1, t2
# CHECK-INSTR: cv.or.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x58]

cv.or.b a0, a1, a2
# CHECK-INSTR: cv.or.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x58]

cv.or.sc.h t0, t1, t2
# CHECK-INSTR: cv.or.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x58]

cv.or.sc.h a0, a1, a2
# CHECK-INSTR: cv.or.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x58]

cv.or.sc.b t0, t1, t2
# CHECK-INSTR: cv.or.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x58]

cv.or.sc.b a0, a1, a2
# CHECK-INSTR: cv.or.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x58]

cv.or.sci.h t0, t1, -32
# CHECK-INSTR: cv.or.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x59]

cv.or.sci.h a0, a1, 7
# CHECK-INSTR: cv.or.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x5a]

cv.or.sci.b t0, t1, -32
# CHECK-INSTR: cv.or.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x59]

cv.or.sci.b a0, a1, 7
# CHECK-INSTR: cv.or.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x5a]

cv.xor.h t0, t1, t2
# CHECK-INSTR: cv.xor.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x60]

cv.xor.h a0, a1, a2
# CHECK-INSTR: cv.xor.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x60]

cv.xor.b t0, t1, t2
# CHECK-INSTR: cv.xor.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x60]

cv.xor.b a0, a1, a2
# CHECK-INSTR: cv.xor.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x60]

cv.xor.sc.h t0, t1, t2
# CHECK-INSTR: cv.xor.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x60]

cv.xor.sc.h a0, a1, a2
# CHECK-INSTR: cv.xor.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x60]

cv.xor.sc.b t0, t1, t2
# CHECK-INSTR: cv.xor.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x60]

cv.xor.sc.b a0, a1, a2
# CHECK-INSTR: cv.xor.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x60]

cv.xor.sci.h t0, t1, -32
# CHECK-INSTR: cv.xor.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x61]

cv.xor.sci.h a0, a1, 7
# CHECK-INSTR: cv.xor.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x62]

cv.xor.sci.b t0, t1, -32
# CHECK-INSTR: cv.xor.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x61]

cv.xor.sci.b a0, a1, 7
# CHECK-INSTR: cv.xor.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x62]

cv.and.h t0, t1, t2
# CHECK-INSTR: cv.and.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x68]

cv.and.h a0, a1, a2
# CHECK-INSTR: cv.and.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x68]

cv.and.b t0, t1, t2
# CHECK-INSTR: cv.and.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x68]

cv.and.b a0, a1, a2
# CHECK-INSTR: cv.and.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x68]

cv.and.sc.h t0, t1, t2
# CHECK-INSTR: cv.and.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x68]

cv.and.sc.h a0, a1, a2
# CHECK-INSTR: cv.and.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x68]

cv.and.sc.b t0, t1, t2
# CHECK-INSTR: cv.and.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x68]

cv.and.sc.b a0, a1, a2
# CHECK-INSTR: cv.and.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x68]

cv.and.sci.h t0, t1, -32
# CHECK-INSTR: cv.and.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x69]

cv.and.sci.h a0, a1, 7
# CHECK-INSTR: cv.and.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x6a]

cv.and.sci.b t0, t1, -32
# CHECK-INSTR: cv.and.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x69]

cv.and.sci.b a0, a1, 7
# CHECK-INSTR: cv.and.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x6a]

cv.abs.h t0, t1
# CHECK-INSTR: cv.abs.h t0, t1
# CHECK-ENCODING: [0xfb,0x02,0x03,0x70]

cv.abs.h a0, a1
# CHECK-INSTR: cv.abs.h a0, a1
# CHECK-ENCODING: [0x7b,0x85,0x05,0x70]

cv.abs.b t0, t1
# CHECK-INSTR: cv.abs.b t0, t1
# CHECK-ENCODING: [0xfb,0x12,0x03,0x70]

cv.abs.b a0, a1
# CHECK-INSTR: cv.abs.b a0, a1
# CHECK-ENCODING: [0x7b,0x95,0x05,0x70]

cv.dotup.h t0, t1, t2
# CHECK-INSTR: cv.dotup.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x80]

cv.dotup.h a0, a1, a2
# CHECK-INSTR: cv.dotup.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x80]

cv.dotup.b t0, t1, t2
# CHECK-INSTR: cv.dotup.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x80]

cv.dotup.b a0, a1, a2
# CHECK-INSTR: cv.dotup.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x80]

cv.dotup.sc.h t0, t1, t2
# CHECK-INSTR: cv.dotup.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x80]

cv.dotup.sc.h a0, a1, a2
# CHECK-INSTR: cv.dotup.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x80]

cv.dotup.sc.b t0, t1, t2
# CHECK-INSTR: cv.dotup.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x80]

cv.dotup.sc.b a0, a1, a2
# CHECK-INSTR: cv.dotup.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x80]

cv.dotup.sci.h t0, t1, -32
# CHECK-INSTR: cv.dotup.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x81]

cv.dotup.sci.h a0, a1, 7
# CHECK-INSTR: cv.dotup.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x82]

cv.dotup.sci.b t0, t1, -32
# CHECK-INSTR: cv.dotup.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x81]

cv.dotup.sci.b a0, a1, 7
# CHECK-INSTR: cv.dotup.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x82]

cv.dotusp.h t0, t1, t2
# CHECK-INSTR: cv.dotusp.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x88]

cv.dotusp.h a0, a1, a2
# CHECK-INSTR: cv.dotusp.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x88]

cv.dotusp.b t0, t1, t2
# CHECK-INSTR: cv.dotusp.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x88]

cv.dotusp.b a0, a1, a2
# CHECK-INSTR: cv.dotusp.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x88]

cv.dotusp.sc.h t0, t1, t2
# CHECK-INSTR: cv.dotusp.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x88]

cv.dotusp.sc.h a0, a1, a2
# CHECK-INSTR: cv.dotusp.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x88]

cv.dotusp.sc.b t0, t1, t2
# CHECK-INSTR: cv.dotusp.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x88]

cv.dotusp.sc.b a0, a1, a2
# CHECK-INSTR: cv.dotusp.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x88]

cv.dotusp.sci.h t0, t1, -32
# CHECK-INSTR: cv.dotusp.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x89]

cv.dotusp.sci.h a0, a1, 7
# CHECK-INSTR: cv.dotusp.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x8a]

cv.dotusp.sci.b t0, t1, -32
# CHECK-INSTR: cv.dotusp.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x89]

cv.dotusp.sci.b a0, a1, 7
# CHECK-INSTR: cv.dotusp.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x8a]

cv.dotsp.h t0, t1, t2
# CHECK-INSTR: cv.dotsp.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x90]

cv.dotsp.h a0, a1, a2
# CHECK-INSTR: cv.dotsp.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x90]

cv.dotsp.b t0, t1, t2
# CHECK-INSTR: cv.dotsp.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x90]

cv.dotsp.b a0, a1, a2
# CHECK-INSTR: cv.dotsp.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x90]

cv.dotsp.sc.h t0, t1, t2
# CHECK-INSTR: cv.dotsp.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x90]

cv.dotsp.sc.h a0, a1, a2
# CHECK-INSTR: cv.dotsp.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x90]

cv.dotsp.sc.b t0, t1, t2
# CHECK-INSTR: cv.dotsp.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x90]

cv.dotsp.sc.b a0, a1, a2
# CHECK-INSTR: cv.dotsp.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x90]

cv.dotsp.sci.h t0, t1, -32
# CHECK-INSTR: cv.dotsp.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x91]

cv.dotsp.sci.h a0, a1, 7
# CHECK-INSTR: cv.dotsp.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x92]

cv.dotsp.sci.b t0, t1, -32
# CHECK-INSTR: cv.dotsp.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x91]

cv.dotsp.sci.b a0, a1, 7
# CHECK-INSTR: cv.dotsp.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x92]

cv.sdotup.h t0, t1, t2
# CHECK-INSTR: cv.sdotup.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x98]

cv.sdotup.h a0, a1, a2
# CHECK-INSTR: cv.sdotup.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x98]

cv.sdotup.b t0, t1, t2
# CHECK-INSTR: cv.sdotup.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x98]

cv.sdotup.b a0, a1, a2
# CHECK-INSTR: cv.sdotup.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x98]

cv.sdotup.sc.h t0, t1, t2
# CHECK-INSTR: cv.sdotup.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x98]

cv.sdotup.sc.h a0, a1, a2
# CHECK-INSTR: cv.sdotup.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x98]

cv.sdotup.sc.b t0, t1, t2
# CHECK-INSTR: cv.sdotup.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x98]

cv.sdotup.sc.b a0, a1, a2
# CHECK-INSTR: cv.sdotup.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x98]

cv.sdotup.sci.h t0, t1, -32
# CHECK-INSTR: cv.sdotup.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x99]

cv.sdotup.sci.h a0, a1, 7
# CHECK-INSTR: cv.sdotup.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x9a]

cv.sdotup.sci.b t0, t1, -32
# CHECK-INSTR: cv.sdotup.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x99]

cv.sdotup.sci.b a0, a1, 7
# CHECK-INSTR: cv.sdotup.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x9a]

cv.sdotusp.h t0, t1, t2
# CHECK-INSTR: cv.sdotusp.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0xa0]

cv.sdotusp.h a0, a1, a2
# CHECK-INSTR: cv.sdotusp.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0xa0]

cv.sdotusp.b t0, t1, t2
# CHECK-INSTR: cv.sdotusp.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0xa0]

cv.sdotusp.b a0, a1, a2
# CHECK-INSTR: cv.sdotusp.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0xa0]

cv.sdotusp.sc.h t0, t1, t2
# CHECK-INSTR: cv.sdotusp.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0xa0]

cv.sdotusp.sc.h a0, a1, a2
# CHECK-INSTR: cv.sdotusp.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0xa0]

cv.sdotusp.sc.b t0, t1, t2
# CHECK-INSTR: cv.sdotusp.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0xa0]

cv.sdotusp.sc.b a0, a1, a2
# CHECK-INSTR: cv.sdotusp.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0xa0]

cv.sdotusp.sci.h t0, t1, -32
# CHECK-INSTR: cv.sdotusp.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0xa1]

cv.sdotusp.sci.h a0, a1, 7
# CHECK-INSTR: cv.sdotusp.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0xa2]

cv.sdotusp.sci.b t0, t1, -32
# CHECK-INSTR: cv.sdotusp.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0xa1]

cv.sdotusp.sci.b a0, a1, 7
# CHECK-INSTR: cv.sdotusp.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0xa2]

cv.sdotsp.h t0, t1, t2
# CHECK-INSTR: cv.sdotsp.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0xa8]

cv.sdotsp.h a0, a1, a2
# CHECK-INSTR: cv.sdotsp.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0xa8]

cv.sdotsp.b t0, t1, t2
# CHECK-INSTR: cv.sdotsp.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0xa8]

cv.sdotsp.b a0, a1, a2
# CHECK-INSTR: cv.sdotsp.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0xa8]

cv.sdotsp.sc.h t0, t1, t2
# CHECK-INSTR: cv.sdotsp.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0xa8]

cv.sdotsp.sc.h a0, a1, a2
# CHECK-INSTR: cv.sdotsp.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0xa8]

cv.sdotsp.sc.b t0, t1, t2
# CHECK-INSTR: cv.sdotsp.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0xa8]

cv.sdotsp.sc.b a0, a1, a2
# CHECK-INSTR: cv.sdotsp.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0xa8]

cv.sdotsp.sci.h t0, t1, -32
# CHECK-INSTR: cv.sdotsp.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0xa9]

cv.sdotsp.sci.h a0, a1, 7
# CHECK-INSTR: cv.sdotsp.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0xaa]

cv.sdotsp.sci.b t0, t1, -32
# CHECK-INSTR: cv.sdotsp.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0xa9]

cv.sdotsp.sci.b a0, a1, 7
# CHECK-INSTR: cv.sdotsp.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0xaa]

cv.extract.h t0, t1, -32
# CHECK-INSTR: cv.extract.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x02,0x03,0xb9]

cv.extract.h a0, a1, 7
# CHECK-INSTR: cv.extract.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0x85,0x35,0xba]

cv.extract.b t0, t1, -32
# CHECK-INSTR: cv.extract.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x12,0x03,0xb9]

cv.extract.b a0, a1, 7
# CHECK-INSTR: cv.extract.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0x95,0x35,0xba]

cv.extractu.h t0, t1, -32
# CHECK-INSTR: cv.extractu.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x22,0x03,0xb9]

cv.extractu.h a0, a1, 7
# CHECK-INSTR: cv.extractu.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xa5,0x35,0xba]

cv.extractu.b t0, t1, -32
# CHECK-INSTR: cv.extractu.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x32,0x03,0xb9]

cv.extractu.b a0, a1, 7
# CHECK-INSTR: cv.extractu.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xb5,0x35,0xba]

cv.insert.h t0, t1, -32
# CHECK-INSTR: cv.insert.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x42,0x03,0xb9]

cv.insert.h a0, a1, 7
# CHECK-INSTR: cv.insert.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xc5,0x35,0xba]

cv.insert.b t0, t1, -32
# CHECK-INSTR: cv.insert.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x52,0x03,0xb9]

cv.insert.b a0, a1, 7
# CHECK-INSTR: cv.insert.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xd5,0x35,0xba]

cv.shuffle.h t0, t1, t2
# CHECK-INSTR: cv.shuffle.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0xc0]

cv.shuffle.h a0, a1, a2
# CHECK-INSTR: cv.shuffle.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0xc0]

cv.shuffle.b t0, t1, t2
# CHECK-INSTR: cv.shuffle.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0xc0]

cv.shuffle.b a0, a1, a2
# CHECK-INSTR: cv.shuffle.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0xc0]

cv.shuffle.sci.h t0, t1, -32
# CHECK-INSTR: cv.shuffle.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0xc1]

cv.shuffle.sci.h a0, a1, 7
# CHECK-INSTR: cv.shuffle.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0xc2]

cv.shuffleI0.sci.b t0, t1, -32
# CHECK-INSTR: cv.shuffleI0.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0xc1]

cv.shuffleI0.sci.b a0, a1, 7
# CHECK-INSTR: cv.shuffleI0.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0xc2]

cv.shuffleI1.sci.b t0, t1, -32
# CHECK-INSTR: cv.shuffleI1.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0xc9]

cv.shuffleI1.sci.b a0, a1, 7
# CHECK-INSTR: cv.shuffleI1.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0xca]

cv.shuffleI2.sci.b t0, t1, -32
# CHECK-INSTR: cv.shuffleI2.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0xd1]

cv.shuffleI2.sci.b a0, a1, 7
# CHECK-INSTR: cv.shuffleI2.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0xd2]

cv.shuffleI3.sci.b t0, t1, -32
# CHECK-INSTR: cv.shuffleI3.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0xd9]

cv.shuffleI3.sci.b a0, a1, 7
# CHECK-INSTR: cv.shuffleI3.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0xda]

cv.shuffle2.h t0, t1, t2
# CHECK-INSTR: cv.shuffle2.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0xe0]

cv.shuffle2.h a0, a1, a2
# CHECK-INSTR: cv.shuffle2.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0xe0]

cv.shuffle2.b t0, t1, t2
# CHECK-INSTR: cv.shuffle2.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0xe0]

cv.shuffle2.b a0, a1, a2
# CHECK-INSTR: cv.shuffle2.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0xe0]

cv.pack t0, t1, t2
# CHECK-INSTR: cv.pack t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0xf0]

cv.pack a0, a1, a2
# CHECK-INSTR: cv.pack a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0xf0]

cv.pack.h t0, t1, t2
# CHECK-INSTR: cv.pack.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0xf2]

cv.pack.h a0, a1, a2
# CHECK-INSTR: cv.pack.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0xf2]

cv.packhi.b t0, t1, t2
# CHECK-INSTR: cv.packhi.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0xfa]

cv.packhi.b a0, a1, a2
# CHECK-INSTR: cv.packhi.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0xfa]

cv.packlo.b t0, t1, t2
# CHECK-INSTR: cv.packlo.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0xf8]

cv.packlo.b a0, a1, a2
# CHECK-INSTR: cv.packlo.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0xf8]

cv.cmpeq.h t0, t1, t2
# CHECK-INSTR: cv.cmpeq.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x04]

cv.cmpeq.h a0, a1, a2
# CHECK-INSTR: cv.cmpeq.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x04]

cv.cmpeq.b t0, t1, t2
# CHECK-INSTR: cv.cmpeq.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x04]

cv.cmpeq.b a0, a1, a2
# CHECK-INSTR: cv.cmpeq.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x04]

cv.cmpeq.sc.h t0, t1, t2
# CHECK-INSTR: cv.cmpeq.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x04]

cv.cmpeq.sc.h a0, a1, a2
# CHECK-INSTR: cv.cmpeq.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x04]

cv.cmpeq.sc.b t0, t1, t2
# CHECK-INSTR: cv.cmpeq.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x04]

cv.cmpeq.sc.b a0, a1, a2
# CHECK-INSTR: cv.cmpeq.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x04]

cv.cmpeq.sci.h t0, t1, -32
# CHECK-INSTR: cv.cmpeq.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x05]

cv.cmpeq.sci.h a0, a1, 7
# CHECK-INSTR: cv.cmpeq.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x06]

cv.cmpeq.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmpeq.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x05]

cv.cmpeq.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmpeq.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x06]

cv.cmpne.h t0, t1, t2
# CHECK-INSTR: cv.cmpne.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x0c]

cv.cmpne.h a0, a1, a2
# CHECK-INSTR: cv.cmpne.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x0c]

cv.cmpne.b t0, t1, t2
# CHECK-INSTR: cv.cmpne.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x0c]

cv.cmpne.b a0, a1, a2
# CHECK-INSTR: cv.cmpne.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x0c]

cv.cmpne.sc.h t0, t1, t2
# CHECK-INSTR: cv.cmpne.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x0c]

cv.cmpne.sc.h a0, a1, a2
# CHECK-INSTR: cv.cmpne.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x0c]

cv.cmpne.sc.b t0, t1, t2
# CHECK-INSTR: cv.cmpne.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x0c]

cv.cmpne.sc.b a0, a1, a2
# CHECK-INSTR: cv.cmpne.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x0c]

cv.cmpne.sci.h t0, t1, -32
# CHECK-INSTR: cv.cmpne.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x0d]

cv.cmpne.sci.h a0, a1, 7
# CHECK-INSTR: cv.cmpne.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x0e]

cv.cmpne.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmpne.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x0d]

cv.cmpne.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmpne.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x0e]

cv.cmpgt.h t0, t1, t2
# CHECK-INSTR: cv.cmpgt.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x14]

cv.cmpgt.h a0, a1, a2
# CHECK-INSTR: cv.cmpgt.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x14]

cv.cmpgt.b t0, t1, t2
# CHECK-INSTR: cv.cmpgt.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x14]

cv.cmpgt.b a0, a1, a2
# CHECK-INSTR: cv.cmpgt.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x14]

cv.cmpgt.sc.h t0, t1, t2
# CHECK-INSTR: cv.cmpgt.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x14]

cv.cmpgt.sc.h a0, a1, a2
# CHECK-INSTR: cv.cmpgt.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x14]

cv.cmpgt.sc.b t0, t1, t2
# CHECK-INSTR: cv.cmpgt.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x14]

cv.cmpgt.sc.b a0, a1, a2
# CHECK-INSTR: cv.cmpgt.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x14]

cv.cmpgt.sci.h t0, t1, -32
# CHECK-INSTR: cv.cmpgt.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x15]

cv.cmpgt.sci.h a0, a1, 7
# CHECK-INSTR: cv.cmpgt.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x16]

cv.cmpgt.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmpgt.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x15]

cv.cmpgt.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmpgt.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x16]

cv.cmpge.h t0, t1, t2
# CHECK-INSTR: cv.cmpge.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x1c]

cv.cmpge.h a0, a1, a2
# CHECK-INSTR: cv.cmpge.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x1c]

cv.cmpge.b t0, t1, t2
# CHECK-INSTR: cv.cmpge.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x1c]

cv.cmpge.b a0, a1, a2
# CHECK-INSTR: cv.cmpge.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x1c]

cv.cmpge.sc.h t0, t1, t2
# CHECK-INSTR: cv.cmpge.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x1c]

cv.cmpge.sc.h a0, a1, a2
# CHECK-INSTR: cv.cmpge.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x1c]

cv.cmpge.sc.b t0, t1, t2
# CHECK-INSTR: cv.cmpge.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x1c]

cv.cmpge.sc.b a0, a1, a2
# CHECK-INSTR: cv.cmpge.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x1c]

cv.cmpge.sci.h t0, t1, -32
# CHECK-INSTR: cv.cmpge.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x1d]

cv.cmpge.sci.h a0, a1, 7
# CHECK-INSTR: cv.cmpge.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x1e]

cv.cmpge.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmpge.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x1d]

cv.cmpge.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmpge.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x1e]

cv.cmplt.h t0, t1, t2
# CHECK-INSTR: cv.cmplt.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x24]

cv.cmplt.h a0, a1, a2
# CHECK-INSTR: cv.cmplt.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x24]

cv.cmplt.b t0, t1, t2
# CHECK-INSTR: cv.cmplt.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x24]

cv.cmplt.b a0, a1, a2
# CHECK-INSTR: cv.cmplt.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x24]

cv.cmplt.sc.h t0, t1, t2
# CHECK-INSTR: cv.cmplt.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x24]

cv.cmplt.sc.h a0, a1, a2
# CHECK-INSTR: cv.cmplt.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x24]

cv.cmplt.sc.b t0, t1, t2
# CHECK-INSTR: cv.cmplt.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x24]

cv.cmplt.sc.b a0, a1, a2
# CHECK-INSTR: cv.cmplt.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x24]

cv.cmplt.sci.h t0, t1, -32
# CHECK-INSTR: cv.cmplt.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x25]

cv.cmplt.sci.h a0, a1, 7
# CHECK-INSTR: cv.cmplt.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x26]

cv.cmplt.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmplt.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x25]

cv.cmplt.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmplt.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x26]

cv.cmple.h t0, t1, t2
# CHECK-INSTR: cv.cmple.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x2c]

cv.cmple.h a0, a1, a2
# CHECK-INSTR: cv.cmple.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x2c]

cv.cmple.b t0, t1, t2
# CHECK-INSTR: cv.cmple.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x2c]

cv.cmple.b a0, a1, a2
# CHECK-INSTR: cv.cmple.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x2c]

cv.cmple.sc.h t0, t1, t2
# CHECK-INSTR: cv.cmple.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x2c]

cv.cmple.sc.h a0, a1, a2
# CHECK-INSTR: cv.cmple.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x2c]

cv.cmple.sc.b t0, t1, t2
# CHECK-INSTR: cv.cmple.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x2c]

cv.cmple.sc.b a0, a1, a2
# CHECK-INSTR: cv.cmple.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x2c]

cv.cmple.sci.h t0, t1, -32
# CHECK-INSTR: cv.cmple.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x2d]

cv.cmple.sci.h a0, a1, 7
# CHECK-INSTR: cv.cmple.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x2e]

cv.cmple.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmple.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x2d]

cv.cmple.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmple.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x2e]

cv.cmpgtu.h t0, t1, t2
# CHECK-INSTR: cv.cmpgtu.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x34]

cv.cmpgtu.h a0, a1, a2
# CHECK-INSTR: cv.cmpgtu.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x34]

cv.cmpgtu.b t0, t1, t2
# CHECK-INSTR: cv.cmpgtu.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x34]

cv.cmpgtu.b a0, a1, a2
# CHECK-INSTR: cv.cmpgtu.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x34]

cv.cmpgtu.sc.h t0, t1, t2
# CHECK-INSTR: cv.cmpgtu.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x34]

cv.cmpgtu.sc.h a0, a1, a2
# CHECK-INSTR: cv.cmpgtu.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x34]

cv.cmpgtu.sc.b t0, t1, t2
# CHECK-INSTR: cv.cmpgtu.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x34]

cv.cmpgtu.sc.b a0, a1, a2
# CHECK-INSTR: cv.cmpgtu.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x34]

cv.cmpgtu.sci.h t0, t1, -32
# CHECK-INSTR: cv.cmpgtu.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x35]

cv.cmpgtu.sci.h a0, a1, 7
# CHECK-INSTR: cv.cmpgtu.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x36]

cv.cmpgtu.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmpgtu.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x35]

cv.cmpgtu.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmpgtu.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x36]

cv.cmpgeu.h t0, t1, t2
# CHECK-INSTR: cv.cmpgeu.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x3c]

cv.cmpgeu.h a0, a1, a2
# CHECK-INSTR: cv.cmpgeu.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x3c]

cv.cmpgeu.b t0, t1, t2
# CHECK-INSTR: cv.cmpgeu.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x3c]

cv.cmpgeu.b a0, a1, a2
# CHECK-INSTR: cv.cmpgeu.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x3c]

cv.cmpgeu.sc.h t0, t1, t2
# CHECK-INSTR: cv.cmpgeu.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x3c]

cv.cmpgeu.sc.h a0, a1, a2
# CHECK-INSTR: cv.cmpgeu.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x3c]

cv.cmpgeu.sc.b t0, t1, t2
# CHECK-INSTR: cv.cmpgeu.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x3c]

cv.cmpgeu.sc.b a0, a1, a2
# CHECK-INSTR: cv.cmpgeu.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x3c]

cv.cmpgeu.sci.h t0, t1, -32
# CHECK-INSTR: cv.cmpgeu.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x3d]

cv.cmpgeu.sci.h a0, a1, 7
# CHECK-INSTR: cv.cmpgeu.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x3e]

cv.cmpgeu.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmpgeu.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x3d]

cv.cmpgeu.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmpgeu.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x3e]

cv.cmpltu.h t0, t1, t2
# CHECK-INSTR: cv.cmpltu.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x44]

cv.cmpltu.h a0, a1, a2
# CHECK-INSTR: cv.cmpltu.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x44]

cv.cmpltu.b t0, t1, t2
# CHECK-INSTR: cv.cmpltu.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x44]

cv.cmpltu.b a0, a1, a2
# CHECK-INSTR: cv.cmpltu.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x44]

cv.cmpltu.sc.h t0, t1, t2
# CHECK-INSTR: cv.cmpltu.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x44]

cv.cmpltu.sc.h a0, a1, a2
# CHECK-INSTR: cv.cmpltu.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x44]

cv.cmpltu.sc.b t0, t1, t2
# CHECK-INSTR: cv.cmpltu.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x44]

cv.cmpltu.sc.b a0, a1, a2
# CHECK-INSTR: cv.cmpltu.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x44]

cv.cmpltu.sci.h t0, t1, -32
# CHECK-INSTR: cv.cmpltu.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x45]

cv.cmpltu.sci.h a0, a1, 7
# CHECK-INSTR: cv.cmpltu.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x46]

cv.cmpltu.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmpltu.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x45]

cv.cmpltu.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmpltu.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x46]

cv.cmpleu.h t0, t1, t2
# CHECK-INSTR: cv.cmpleu.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x4c]

cv.cmpleu.h a0, a1, a2
# CHECK-INSTR: cv.cmpleu.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x4c]

cv.cmpleu.b t0, t1, t2
# CHECK-INSTR: cv.cmpleu.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x4c]

cv.cmpleu.b a0, a1, a2
# CHECK-INSTR: cv.cmpleu.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x4c]

cv.cmpleu.sc.h t0, t1, t2
# CHECK-INSTR: cv.cmpleu.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x4c]

cv.cmpleu.sc.h a0, a1, a2
# CHECK-INSTR: cv.cmpleu.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x4c]

cv.cmpleu.sc.b t0, t1, t2
# CHECK-INSTR: cv.cmpleu.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x4c]

cv.cmpleu.sc.b a0, a1, a2
# CHECK-INSTR: cv.cmpleu.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x4c]

cv.cmpleu.sci.h t0, t1, -32
# CHECK-INSTR: cv.cmpleu.sci.h t0, t1, -32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x4d]

cv.cmpleu.sci.h a0, a1, 7
# CHECK-INSTR: cv.cmpleu.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x4e]

cv.cmpleu.sci.b t0, t1, -32
# CHECK-INSTR: cv.cmpleu.sci.b t0, t1, -32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x4d]

cv.cmpleu.sci.b a0, a1, 7
# CHECK-INSTR: cv.cmpleu.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x4e]

cv.cplxmul.r t0, t1, t2
# CHECK-INSTR: cv.cplxmul.r t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x54]

cv.cplxmul.r a0, a1, a2
# CHECK-INSTR: cv.cplxmul.r a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x54]

cv.cplxmul.i t0, t1, t2
# CHECK-INSTR: cv.cplxmul.i t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x56]

cv.cplxmul.i a0, a1, a2
# CHECK-INSTR: cv.cplxmul.i a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x56]

cv.cplxmul.r.div2 t0, t1, t2
# CHECK-INSTR: cv.cplxmul.r.div2 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x22,0x73,0x54]

cv.cplxmul.r.div2 a0, a1, a2
# CHECK-INSTR: cv.cplxmul.r.div2 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xa5,0xc5,0x54]

cv.cplxmul.i.div2 t0, t1, t2
# CHECK-INSTR: cv.cplxmul.i.div2 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x22,0x73,0x56]

cv.cplxmul.i.div2 a0, a1, a2
# CHECK-INSTR: cv.cplxmul.i.div2 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xa5,0xc5,0x56]

cv.cplxmul.r.div4 t0, t1, t2
# CHECK-INSTR: cv.cplxmul.r.div4 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x54]

cv.cplxmul.r.div4 a0, a1, a2
# CHECK-INSTR: cv.cplxmul.r.div4 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x54]

cv.cplxmul.i.div4 t0, t1, t2
# CHECK-INSTR: cv.cplxmul.i.div4 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x56]

cv.cplxmul.i.div4 a0, a1, a2
# CHECK-INSTR: cv.cplxmul.i.div4 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x56]

cv.cplxmul.r.div8 t0, t1, t2
# CHECK-INSTR: cv.cplxmul.r.div8 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x62,0x73,0x54]

cv.cplxmul.r.div8 a0, a1, a2
# CHECK-INSTR: cv.cplxmul.r.div8 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xe5,0xc5,0x54]

cv.cplxmul.i.div8 t0, t1, t2
# CHECK-INSTR: cv.cplxmul.i.div8 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x62,0x73,0x56]

cv.cplxmul.i.div8 a0, a1, a2
# CHECK-INSTR: cv.cplxmul.i.div8 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xe5,0xc5,0x56]

cv.cplxconj t0, t1
# CHECK-INSTR: cv.cplxconj t0, t1
# CHECK-ENCODING: [0xfb,0x02,0x03,0x5c]

cv.cplxconj a0, a1
# CHECK-INSTR: cv.cplxconj a0, a1
# CHECK-ENCODING: [0x7b,0x85,0x05,0x5c]

cv.subrotmj t0, t1, t2
# CHECK-INSTR: cv.subrotmj t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x64]

cv.subrotmj a0, a1, a2
# CHECK-INSTR: cv.subrotmj a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x64]

cv.subrotmj.div2 t0, t1, t2
# CHECK-INSTR: cv.subrotmj.div2 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x22,0x73,0x64]

cv.subrotmj.div2 a0, a1, a2
# CHECK-INSTR: cv.subrotmj.div2 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xa5,0xc5,0x64]

cv.subrotmj.div4 t0, t1, t2
# CHECK-INSTR: cv.subrotmj.div4 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x64]

cv.subrotmj.div4 a0, a1, a2
# CHECK-INSTR: cv.subrotmj.div4 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x64]

cv.subrotmj.div8 t0, t1, t2
# CHECK-INSTR: cv.subrotmj.div8 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x62,0x73,0x64]

cv.subrotmj.div8 a0, a1, a2
# CHECK-INSTR: cv.subrotmj.div8 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xe5,0xc5,0x64]

cv.add.div2 t0, t1, t2
# CHECK-INSTR: cv.add.div2 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x22,0x73,0x6c]

cv.add.div2 a0, a1, a2
# CHECK-INSTR: cv.add.div2 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xa5,0xc5,0x6c]

cv.add.div4 t0, t1, t2
# CHECK-INSTR: cv.add.div4 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x6c]

cv.add.div4 a0, a1, a2
# CHECK-INSTR: cv.add.div4 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x6c]

cv.add.div8 t0, t1, t2
# CHECK-INSTR: cv.add.div8 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x62,0x73,0x6c]

cv.add.div8 a0, a1, a2
# CHECK-INSTR: cv.add.div8 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xe5,0xc5,0x6c]

cv.sub.div2 t0, t1, t2
# CHECK-INSTR: cv.sub.div2 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x22,0x73,0x74]

cv.sub.div2 a0, a1, a2
# CHECK-INSTR: cv.sub.div2 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xa5,0xc5,0x74]

cv.sub.div4 t0, t1, t2
# CHECK-INSTR: cv.sub.div4 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x74]

cv.sub.div4 a0, a1, a2
# CHECK-INSTR: cv.sub.div4 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x74]

cv.sub.div8 t0, t1, t2
# CHECK-INSTR: cv.sub.div8 t0, t1, t2
# CHECK-ENCODING: [0xfb,0x62,0x73,0x74]

cv.sub.div8 a0, a1, a2
# CHECK-INSTR: cv.sub.div8 a0, a1, a2
# CHECK-ENCODING: [0x7b,0xe5,0xc5,0x74]


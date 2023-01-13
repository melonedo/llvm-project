; RUN: llc -O0 -mtriple=riscv32 -mattr=+m -mattr=+xcorevsimd -verify-machineinstrs < %s \
; RUN:   | FileCheck %s

declare i32 @llvm.riscv.cv.add.h(i32, i32)
define i32 @cv.add.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.add.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.add.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.add.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.add.b(i32, i32)
define i32 @cv.add.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.add.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.add.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.add.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.add.sc.h(i32, i32)
define i32 @cv.add.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.add.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.add.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.add.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.add.sc.b(i32, i32)
define i32 @cv.add.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.add.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.add.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.add.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.add.sci.h(i32, i32)
define i32 @cv.add.sci.h(i32 %a) {
; CHECK-LABEL: cv.add.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.add.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.add.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.add.sci.b(i32, i32)
define i32 @cv.add.sci.b(i32 %a) {
; CHECK-LABEL: cv.add.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.add.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.add.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sub.h(i32, i32)
define i32 @cv.sub.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sub.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sub.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sub.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sub.b(i32, i32)
define i32 @cv.sub.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sub.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sub.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sub.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sub.sc.h(i32, i32)
define i32 @cv.sub.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sub.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sub.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sub.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sub.sc.b(i32, i32)
define i32 @cv.sub.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sub.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sub.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sub.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sub.sci.h(i32, i32)
define i32 @cv.sub.sci.h(i32 %a) {
; CHECK-LABEL: cv.sub.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sub.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sub.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sub.sci.b(i32, i32)
define i32 @cv.sub.sci.b(i32 %a) {
; CHECK-LABEL: cv.sub.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sub.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sub.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.avg.h(i32, i32)
define i32 @cv.avg.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.avg.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.avg.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.avg.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.avg.b(i32, i32)
define i32 @cv.avg.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.avg.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.avg.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.avg.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.avg.sc.h(i32, i32)
define i32 @cv.avg.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.avg.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.avg.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.avg.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.avg.sc.b(i32, i32)
define i32 @cv.avg.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.avg.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.avg.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.avg.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.avg.sci.h(i32, i32)
define i32 @cv.avg.sci.h(i32 %a) {
; CHECK-LABEL: cv.avg.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.avg.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.avg.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.avg.sci.b(i32, i32)
define i32 @cv.avg.sci.b(i32 %a) {
; CHECK-LABEL: cv.avg.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.avg.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.avg.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.avgu.h(i32, i32)
define i32 @cv.avgu.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.avgu.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.avgu.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.avgu.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.avgu.b(i32, i32)
define i32 @cv.avgu.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.avgu.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.avgu.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.avgu.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.avgu.sc.h(i32, i32)
define i32 @cv.avgu.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.avgu.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.avgu.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.avgu.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.avgu.sc.b(i32, i32)
define i32 @cv.avgu.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.avgu.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.avgu.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.avgu.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.avgu.sci.h(i32, i32)
define i32 @cv.avgu.sci.h(i32 %a) {
; CHECK-LABEL: cv.avgu.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.avgu.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.avgu.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.avgu.sci.b(i32, i32)
define i32 @cv.avgu.sci.b(i32 %a) {
; CHECK-LABEL: cv.avgu.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.avgu.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.avgu.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.min.h(i32, i32)
define i32 @cv.min.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.min.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.min.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.min.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.min.b(i32, i32)
define i32 @cv.min.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.min.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.min.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.min.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.min.sc.h(i32, i32)
define i32 @cv.min.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.min.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.min.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.min.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.min.sc.b(i32, i32)
define i32 @cv.min.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.min.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.min.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.min.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.min.sci.h(i32, i32)
define i32 @cv.min.sci.h(i32 %a) {
; CHECK-LABEL: cv.min.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.min.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.min.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.min.sci.b(i32, i32)
define i32 @cv.min.sci.b(i32 %a) {
; CHECK-LABEL: cv.min.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.min.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.min.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.minu.h(i32, i32)
define i32 @cv.minu.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.minu.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.minu.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.minu.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.minu.b(i32, i32)
define i32 @cv.minu.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.minu.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.minu.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.minu.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.minu.sc.h(i32, i32)
define i32 @cv.minu.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.minu.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.minu.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.minu.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.minu.sc.b(i32, i32)
define i32 @cv.minu.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.minu.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.minu.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.minu.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.minu.sci.h(i32, i32)
define i32 @cv.minu.sci.h(i32 %a) {
; CHECK-LABEL: cv.minu.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.minu.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.minu.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.minu.sci.b(i32, i32)
define i32 @cv.minu.sci.b(i32 %a) {
; CHECK-LABEL: cv.minu.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.minu.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.minu.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.max.h(i32, i32)
define i32 @cv.max.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.max.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.max.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.max.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.max.b(i32, i32)
define i32 @cv.max.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.max.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.max.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.max.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.max.sc.h(i32, i32)
define i32 @cv.max.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.max.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.max.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.max.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.max.sc.b(i32, i32)
define i32 @cv.max.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.max.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.max.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.max.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.max.sci.h(i32, i32)
define i32 @cv.max.sci.h(i32 %a) {
; CHECK-LABEL: cv.max.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.max.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.max.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.max.sci.b(i32, i32)
define i32 @cv.max.sci.b(i32 %a) {
; CHECK-LABEL: cv.max.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.max.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.max.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.maxu.h(i32, i32)
define i32 @cv.maxu.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.maxu.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.maxu.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.maxu.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.maxu.b(i32, i32)
define i32 @cv.maxu.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.maxu.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.maxu.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.maxu.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.maxu.sc.h(i32, i32)
define i32 @cv.maxu.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.maxu.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.maxu.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.maxu.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.maxu.sc.b(i32, i32)
define i32 @cv.maxu.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.maxu.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.maxu.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.maxu.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.maxu.sci.h(i32, i32)
define i32 @cv.maxu.sci.h(i32 %a) {
; CHECK-LABEL: cv.maxu.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.maxu.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.maxu.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.maxu.sci.b(i32, i32)
define i32 @cv.maxu.sci.b(i32 %a) {
; CHECK-LABEL: cv.maxu.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.maxu.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.maxu.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.srl.h(i32, i32)
define i32 @cv.srl.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.srl.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.srl.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.srl.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.srl.b(i32, i32)
define i32 @cv.srl.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.srl.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.srl.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.srl.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.srl.sc.h(i32, i32)
define i32 @cv.srl.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.srl.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.srl.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.srl.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.srl.sc.b(i32, i32)
define i32 @cv.srl.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.srl.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.srl.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.srl.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.srl.sci.h(i32, i32)
define i32 @cv.srl.sci.h(i32 %a) {
; CHECK-LABEL: cv.srl.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.srl.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.srl.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.srl.sci.b(i32, i32)
define i32 @cv.srl.sci.b(i32 %a) {
; CHECK-LABEL: cv.srl.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.srl.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.srl.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sra.h(i32, i32)
define i32 @cv.sra.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sra.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sra.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sra.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sra.b(i32, i32)
define i32 @cv.sra.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sra.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sra.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sra.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sra.sc.h(i32, i32)
define i32 @cv.sra.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sra.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sra.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sra.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sra.sc.b(i32, i32)
define i32 @cv.sra.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sra.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sra.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sra.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sra.sci.h(i32, i32)
define i32 @cv.sra.sci.h(i32 %a) {
; CHECK-LABEL: cv.sra.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sra.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sra.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sra.sci.b(i32, i32)
define i32 @cv.sra.sci.b(i32 %a) {
; CHECK-LABEL: cv.sra.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sra.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sra.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sll.h(i32, i32)
define i32 @cv.sll.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sll.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sll.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sll.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sll.b(i32, i32)
define i32 @cv.sll.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sll.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sll.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sll.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sll.sc.h(i32, i32)
define i32 @cv.sll.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sll.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sll.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sll.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sll.sc.b(i32, i32)
define i32 @cv.sll.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sll.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sll.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sll.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sll.sci.h(i32, i32)
define i32 @cv.sll.sci.h(i32 %a) {
; CHECK-LABEL: cv.sll.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sll.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sll.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sll.sci.b(i32, i32)
define i32 @cv.sll.sci.b(i32 %a) {
; CHECK-LABEL: cv.sll.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sll.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sll.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.or.h(i32, i32)
define i32 @cv.or.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.or.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.or.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.or.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.or.b(i32, i32)
define i32 @cv.or.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.or.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.or.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.or.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.or.sc.h(i32, i32)
define i32 @cv.or.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.or.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.or.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.or.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.or.sc.b(i32, i32)
define i32 @cv.or.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.or.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.or.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.or.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.or.sci.h(i32, i32)
define i32 @cv.or.sci.h(i32 %a) {
; CHECK-LABEL: cv.or.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.or.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.or.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.or.sci.b(i32, i32)
define i32 @cv.or.sci.b(i32 %a) {
; CHECK-LABEL: cv.or.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.or.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.or.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.xor.h(i32, i32)
define i32 @cv.xor.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.xor.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.xor.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.xor.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.xor.b(i32, i32)
define i32 @cv.xor.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.xor.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.xor.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.xor.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.xor.sc.h(i32, i32)
define i32 @cv.xor.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.xor.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.xor.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.xor.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.xor.sc.b(i32, i32)
define i32 @cv.xor.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.xor.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.xor.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.xor.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.xor.sci.h(i32, i32)
define i32 @cv.xor.sci.h(i32 %a) {
; CHECK-LABEL: cv.xor.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.xor.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.xor.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.xor.sci.b(i32, i32)
define i32 @cv.xor.sci.b(i32 %a) {
; CHECK-LABEL: cv.xor.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.xor.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.xor.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.and.h(i32, i32)
define i32 @cv.and.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.and.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.and.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.and.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.and.b(i32, i32)
define i32 @cv.and.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.and.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.and.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.and.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.and.sc.h(i32, i32)
define i32 @cv.and.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.and.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.and.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.and.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.and.sc.b(i32, i32)
define i32 @cv.and.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.and.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.and.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.and.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.and.sci.h(i32, i32)
define i32 @cv.and.sci.h(i32 %a) {
; CHECK-LABEL: cv.and.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.and.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.and.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.and.sci.b(i32, i32)
define i32 @cv.and.sci.b(i32 %a) {
; CHECK-LABEL: cv.and.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.and.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.and.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.abs.h(i32)
define i32 @cv.abs.h(i32 %a) {
; CHECK-LABEL: cv.abs.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.abs.h a0, a0
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.abs.h(i32 %a)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.abs.b(i32)
define i32 @cv.abs.b(i32 %a) {
; CHECK-LABEL: cv.abs.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.abs.b a0, a0
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.abs.b(i32 %a)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.dotup.h(i32, i32)
define i32 @cv.dotup.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.dotup.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.dotup.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.dotup.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.dotup.b(i32, i32)
define i32 @cv.dotup.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.dotup.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.dotup.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.dotup.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.dotup.sc.h(i32, i32)
define i32 @cv.dotup.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.dotup.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.dotup.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.dotup.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.dotup.sc.b(i32, i32)
define i32 @cv.dotup.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.dotup.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.dotup.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.dotup.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.dotup.sci.h(i32, i32)
define i32 @cv.dotup.sci.h(i32 %a) {
; CHECK-LABEL: cv.dotup.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.dotup.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.dotup.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.dotup.sci.b(i32, i32)
define i32 @cv.dotup.sci.b(i32 %a) {
; CHECK-LABEL: cv.dotup.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.dotup.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.dotup.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.dotusp.h(i32, i32)
define i32 @cv.dotusp.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.dotusp.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.dotusp.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.dotusp.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.dotusp.b(i32, i32)
define i32 @cv.dotusp.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.dotusp.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.dotusp.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.dotusp.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.dotusp.sc.h(i32, i32)
define i32 @cv.dotusp.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.dotusp.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.dotusp.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.dotusp.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.dotusp.sc.b(i32, i32)
define i32 @cv.dotusp.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.dotusp.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.dotusp.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.dotusp.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.dotusp.sci.h(i32, i32)
define i32 @cv.dotusp.sci.h(i32 %a) {
; CHECK-LABEL: cv.dotusp.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.dotusp.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.dotusp.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.dotusp.sci.b(i32, i32)
define i32 @cv.dotusp.sci.b(i32 %a) {
; CHECK-LABEL: cv.dotusp.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.dotusp.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.dotusp.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.dotsp.h(i32, i32)
define i32 @cv.dotsp.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.dotsp.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.dotsp.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.dotsp.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.dotsp.b(i32, i32)
define i32 @cv.dotsp.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.dotsp.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.dotsp.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.dotsp.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.dotsp.sc.h(i32, i32)
define i32 @cv.dotsp.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.dotsp.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.dotsp.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.dotsp.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.dotsp.sc.b(i32, i32)
define i32 @cv.dotsp.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.dotsp.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.dotsp.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.dotsp.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.dotsp.sci.h(i32, i32)
define i32 @cv.dotsp.sci.h(i32 %a) {
; CHECK-LABEL: cv.dotsp.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.dotsp.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.dotsp.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.dotsp.sci.b(i32, i32)
define i32 @cv.dotsp.sci.b(i32 %a) {
; CHECK-LABEL: cv.dotsp.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.dotsp.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.dotsp.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sdotup.h(i32, i32)
define i32 @cv.sdotup.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sdotup.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sdotup.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sdotup.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sdotup.b(i32, i32)
define i32 @cv.sdotup.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sdotup.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sdotup.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sdotup.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sdotup.sc.h(i32, i32)
define i32 @cv.sdotup.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sdotup.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sdotup.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sdotup.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sdotup.sc.b(i32, i32)
define i32 @cv.sdotup.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sdotup.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sdotup.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sdotup.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sdotup.sci.h(i32, i32)
define i32 @cv.sdotup.sci.h(i32 %a) {
; CHECK-LABEL: cv.sdotup.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sdotup.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sdotup.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sdotup.sci.b(i32, i32)
define i32 @cv.sdotup.sci.b(i32 %a) {
; CHECK-LABEL: cv.sdotup.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sdotup.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sdotup.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sdotusp.h(i32, i32)
define i32 @cv.sdotusp.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sdotusp.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sdotusp.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sdotusp.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sdotusp.b(i32, i32)
define i32 @cv.sdotusp.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sdotusp.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sdotusp.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sdotusp.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sdotusp.sc.h(i32, i32)
define i32 @cv.sdotusp.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sdotusp.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sdotusp.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sdotusp.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sdotusp.sc.b(i32, i32)
define i32 @cv.sdotusp.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sdotusp.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sdotusp.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sdotusp.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sdotusp.sci.h(i32, i32)
define i32 @cv.sdotusp.sci.h(i32 %a) {
; CHECK-LABEL: cv.sdotusp.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sdotusp.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sdotusp.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sdotusp.sci.b(i32, i32)
define i32 @cv.sdotusp.sci.b(i32 %a) {
; CHECK-LABEL: cv.sdotusp.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sdotusp.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sdotusp.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sdotsp.h(i32, i32)
define i32 @cv.sdotsp.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sdotsp.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sdotsp.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sdotsp.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sdotsp.b(i32, i32)
define i32 @cv.sdotsp.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sdotsp.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sdotsp.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sdotsp.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sdotsp.sc.h(i32, i32)
define i32 @cv.sdotsp.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sdotsp.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sdotsp.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sdotsp.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sdotsp.sc.b(i32, i32)
define i32 @cv.sdotsp.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sdotsp.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sdotsp.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sdotsp.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sdotsp.sci.h(i32, i32)
define i32 @cv.sdotsp.sci.h(i32 %a) {
; CHECK-LABEL: cv.sdotsp.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sdotsp.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sdotsp.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sdotsp.sci.b(i32, i32)
define i32 @cv.sdotsp.sci.b(i32 %a) {
; CHECK-LABEL: cv.sdotsp.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sdotsp.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sdotsp.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.extract.h(i32, i32)
define i32 @cv.extract.h(i32 %a) {
; CHECK-LABEL: cv.extract.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.extract.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.extract.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.extract.b(i32, i32)
define i32 @cv.extract.b(i32 %a) {
; CHECK-LABEL: cv.extract.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.extract.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.extract.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.extractu.h(i32, i32)
define i32 @cv.extractu.h(i32 %a) {
; CHECK-LABEL: cv.extractu.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.extractu.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.extractu.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.extractu.b(i32, i32)
define i32 @cv.extractu.b(i32 %a) {
; CHECK-LABEL: cv.extractu.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.extractu.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.extractu.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.insert.h(i32, i32)
define i32 @cv.insert.h(i32 %a) {
; CHECK-LABEL: cv.insert.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.insert.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.insert.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.insert.b(i32, i32)
define i32 @cv.insert.b(i32 %a) {
; CHECK-LABEL: cv.insert.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.insert.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.insert.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.shuffle.h(i32, i32)
define i32 @cv.shuffle.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.shuffle.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.shuffle.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.shuffle.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.shuffle.b(i32, i32)
define i32 @cv.shuffle.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.shuffle.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.shuffle.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.shuffle.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.shuffle.sci.h(i32, i32)
define i32 @cv.shuffle.sci.h(i32 %a) {
; CHECK-LABEL: cv.shuffle.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.shuffle.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.shuffle.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.shuffleI0.sci.b(i32, i32)
define i32 @cv.shuffleI0.sci.b(i32 %a) {
; CHECK-LABEL: cv.shuffleI0.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.shuffleI0.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.shuffleI0.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.shuffleI1.sci.b(i32, i32)
define i32 @cv.shuffleI1.sci.b(i32 %a) {
; CHECK-LABEL: cv.shuffleI1.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.shuffleI1.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.shuffleI1.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.shuffleI2.sci.b(i32, i32)
define i32 @cv.shuffleI2.sci.b(i32 %a) {
; CHECK-LABEL: cv.shuffleI2.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.shuffleI2.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.shuffleI2.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.shuffleI3.sci.b(i32, i32)
define i32 @cv.shuffleI3.sci.b(i32 %a) {
; CHECK-LABEL: cv.shuffleI3.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.shuffleI3.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.shuffleI3.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.shuffle2.h(i32, i32)
define i32 @cv.shuffle2.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.shuffle2.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.shuffle2.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.shuffle2.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.shuffle2.b(i32, i32)
define i32 @cv.shuffle2.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.shuffle2.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.shuffle2.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.shuffle2.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.pack(i32, i32)
define i32 @cv.pack(i32 %a, i32 %b) {
; CHECK-LABEL: cv.pack:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.pack a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.pack(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.pack.h(i32, i32)
define i32 @cv.pack.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.pack.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.pack.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.pack.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.packhi.b(i32, i32)
define i32 @cv.packhi.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.packhi.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.packhi.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.packhi.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.packlo.b(i32, i32)
define i32 @cv.packlo.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.packlo.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.packlo.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.packlo.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpeq.h(i32, i32)
define i32 @cv.cmpeq.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpeq.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpeq.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpeq.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpeq.b(i32, i32)
define i32 @cv.cmpeq.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpeq.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpeq.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpeq.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpeq.sc.h(i32, i32)
define i32 @cv.cmpeq.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpeq.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpeq.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpeq.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpeq.sc.b(i32, i32)
define i32 @cv.cmpeq.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpeq.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpeq.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpeq.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpeq.sci.h(i32, i32)
define i32 @cv.cmpeq.sci.h(i32 %a) {
; CHECK-LABEL: cv.cmpeq.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpeq.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpeq.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpeq.sci.b(i32, i32)
define i32 @cv.cmpeq.sci.b(i32 %a) {
; CHECK-LABEL: cv.cmpeq.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpeq.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpeq.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpne.h(i32, i32)
define i32 @cv.cmpne.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpne.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpne.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpne.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpne.b(i32, i32)
define i32 @cv.cmpne.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpne.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpne.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpne.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpne.sc.h(i32, i32)
define i32 @cv.cmpne.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpne.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpne.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpne.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpne.sc.b(i32, i32)
define i32 @cv.cmpne.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpne.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpne.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpne.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpne.sci.h(i32, i32)
define i32 @cv.cmpne.sci.h(i32 %a) {
; CHECK-LABEL: cv.cmpne.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpne.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpne.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpne.sci.b(i32, i32)
define i32 @cv.cmpne.sci.b(i32 %a) {
; CHECK-LABEL: cv.cmpne.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpne.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpne.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpgt.h(i32, i32)
define i32 @cv.cmpgt.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpgt.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpgt.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpgt.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpgt.b(i32, i32)
define i32 @cv.cmpgt.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpgt.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpgt.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpgt.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpgt.sc.h(i32, i32)
define i32 @cv.cmpgt.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpgt.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpgt.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpgt.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpgt.sc.b(i32, i32)
define i32 @cv.cmpgt.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpgt.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpgt.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpgt.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpgt.sci.h(i32, i32)
define i32 @cv.cmpgt.sci.h(i32 %a) {
; CHECK-LABEL: cv.cmpgt.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpgt.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpgt.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpgt.sci.b(i32, i32)
define i32 @cv.cmpgt.sci.b(i32 %a) {
; CHECK-LABEL: cv.cmpgt.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpgt.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpgt.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpge.h(i32, i32)
define i32 @cv.cmpge.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpge.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpge.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpge.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpge.b(i32, i32)
define i32 @cv.cmpge.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpge.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpge.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpge.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpge.sc.h(i32, i32)
define i32 @cv.cmpge.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpge.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpge.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpge.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpge.sc.b(i32, i32)
define i32 @cv.cmpge.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpge.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpge.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpge.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpge.sci.h(i32, i32)
define i32 @cv.cmpge.sci.h(i32 %a) {
; CHECK-LABEL: cv.cmpge.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpge.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpge.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpge.sci.b(i32, i32)
define i32 @cv.cmpge.sci.b(i32 %a) {
; CHECK-LABEL: cv.cmpge.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpge.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpge.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmplt.h(i32, i32)
define i32 @cv.cmplt.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmplt.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmplt.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmplt.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmplt.b(i32, i32)
define i32 @cv.cmplt.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmplt.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmplt.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmplt.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmplt.sc.h(i32, i32)
define i32 @cv.cmplt.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmplt.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmplt.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmplt.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmplt.sc.b(i32, i32)
define i32 @cv.cmplt.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmplt.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmplt.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmplt.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmplt.sci.h(i32, i32)
define i32 @cv.cmplt.sci.h(i32 %a) {
; CHECK-LABEL: cv.cmplt.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmplt.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmplt.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmplt.sci.b(i32, i32)
define i32 @cv.cmplt.sci.b(i32 %a) {
; CHECK-LABEL: cv.cmplt.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmplt.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmplt.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmple.h(i32, i32)
define i32 @cv.cmple.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmple.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmple.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmple.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmple.b(i32, i32)
define i32 @cv.cmple.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmple.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmple.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmple.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmple.sc.h(i32, i32)
define i32 @cv.cmple.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmple.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmple.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmple.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmple.sc.b(i32, i32)
define i32 @cv.cmple.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmple.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmple.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmple.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmple.sci.h(i32, i32)
define i32 @cv.cmple.sci.h(i32 %a) {
; CHECK-LABEL: cv.cmple.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmple.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmple.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmple.sci.b(i32, i32)
define i32 @cv.cmple.sci.b(i32 %a) {
; CHECK-LABEL: cv.cmple.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmple.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmple.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpgtu.h(i32, i32)
define i32 @cv.cmpgtu.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpgtu.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpgtu.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpgtu.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpgtu.b(i32, i32)
define i32 @cv.cmpgtu.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpgtu.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpgtu.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpgtu.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpgtu.sc.h(i32, i32)
define i32 @cv.cmpgtu.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpgtu.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpgtu.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpgtu.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpgtu.sc.b(i32, i32)
define i32 @cv.cmpgtu.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpgtu.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpgtu.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpgtu.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpgtu.sci.h(i32, i32)
define i32 @cv.cmpgtu.sci.h(i32 %a) {
; CHECK-LABEL: cv.cmpgtu.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpgtu.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpgtu.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpgtu.sci.b(i32, i32)
define i32 @cv.cmpgtu.sci.b(i32 %a) {
; CHECK-LABEL: cv.cmpgtu.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpgtu.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpgtu.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpgeu.h(i32, i32)
define i32 @cv.cmpgeu.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpgeu.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpgeu.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpgeu.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpgeu.b(i32, i32)
define i32 @cv.cmpgeu.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpgeu.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpgeu.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpgeu.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpgeu.sc.h(i32, i32)
define i32 @cv.cmpgeu.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpgeu.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpgeu.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpgeu.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpgeu.sc.b(i32, i32)
define i32 @cv.cmpgeu.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpgeu.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpgeu.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpgeu.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpgeu.sci.h(i32, i32)
define i32 @cv.cmpgeu.sci.h(i32 %a) {
; CHECK-LABEL: cv.cmpgeu.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpgeu.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpgeu.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpgeu.sci.b(i32, i32)
define i32 @cv.cmpgeu.sci.b(i32 %a) {
; CHECK-LABEL: cv.cmpgeu.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpgeu.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpgeu.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpltu.h(i32, i32)
define i32 @cv.cmpltu.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpltu.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpltu.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpltu.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpltu.b(i32, i32)
define i32 @cv.cmpltu.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpltu.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpltu.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpltu.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpltu.sc.h(i32, i32)
define i32 @cv.cmpltu.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpltu.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpltu.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpltu.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpltu.sc.b(i32, i32)
define i32 @cv.cmpltu.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpltu.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpltu.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpltu.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpltu.sci.h(i32, i32)
define i32 @cv.cmpltu.sci.h(i32 %a) {
; CHECK-LABEL: cv.cmpltu.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpltu.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpltu.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpltu.sci.b(i32, i32)
define i32 @cv.cmpltu.sci.b(i32 %a) {
; CHECK-LABEL: cv.cmpltu.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpltu.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpltu.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpleu.h(i32, i32)
define i32 @cv.cmpleu.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpleu.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpleu.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpleu.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpleu.b(i32, i32)
define i32 @cv.cmpleu.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpleu.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpleu.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpleu.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpleu.sc.h(i32, i32)
define i32 @cv.cmpleu.sc.h(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpleu.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpleu.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpleu.sc.h(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpleu.sc.b(i32, i32)
define i32 @cv.cmpleu.sc.b(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cmpleu.sc.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpleu.sc.b a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpleu.sc.b(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpleu.sci.h(i32, i32)
define i32 @cv.cmpleu.sci.h(i32 %a) {
; CHECK-LABEL: cv.cmpleu.sci.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpleu.sci.h a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpleu.sci.h(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cmpleu.sci.b(i32, i32)
define i32 @cv.cmpleu.sci.b(i32 %a) {
; CHECK-LABEL: cv.cmpleu.sci.b:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cmpleu.sci.b a0, a0, 5
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cmpleu.sci.b(i32 %a, i32 5)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cplxmul.r(i32, i32)
define i32 @cv.cplxmul.r(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cplxmul.r:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cplxmul.r a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cplxmul.r(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cplxmul.i(i32, i32)
define i32 @cv.cplxmul.i(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cplxmul.i:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cplxmul.i a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cplxmul.i(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cplxmul.r.div2(i32, i32)
define i32 @cv.cplxmul.r.div2(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cplxmul.r.div2:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cplxmul.r.div2 a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cplxmul.r.div2(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cplxmul.i.div2(i32, i32)
define i32 @cv.cplxmul.i.div2(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cplxmul.i.div2:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cplxmul.i.div2 a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cplxmul.i.div2(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cplxmul.r.div4(i32, i32)
define i32 @cv.cplxmul.r.div4(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cplxmul.r.div4:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cplxmul.r.div4 a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cplxmul.r.div4(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cplxmul.i.div4(i32, i32)
define i32 @cv.cplxmul.i.div4(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cplxmul.i.div4:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cplxmul.i.div4 a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cplxmul.i.div4(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cplxmul.r.div8(i32, i32)
define i32 @cv.cplxmul.r.div8(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cplxmul.r.div8:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cplxmul.r.div8 a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cplxmul.r.div8(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cplxmul.i.div8(i32, i32)
define i32 @cv.cplxmul.i.div8(i32 %a, i32 %b) {
; CHECK-LABEL: cv.cplxmul.i.div8:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cplxmul.i.div8 a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cplxmul.i.div8(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.cplxconj(i32)
define i32 @cv.cplxconj(i32 %a) {
; CHECK-LABEL: cv.cplxconj:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.cplxconj a0, a0
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.cplxconj(i32 %a)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.subrotmj(i32, i32)
define i32 @cv.subrotmj(i32 %a, i32 %b) {
; CHECK-LABEL: cv.subrotmj:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.subrotmj a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.subrotmj(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.subrotmj.div2(i32, i32)
define i32 @cv.subrotmj.div2(i32 %a, i32 %b) {
; CHECK-LABEL: cv.subrotmj.div2:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.subrotmj.div2 a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.subrotmj.div2(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.subrotmj.div4(i32, i32)
define i32 @cv.subrotmj.div4(i32 %a, i32 %b) {
; CHECK-LABEL: cv.subrotmj.div4:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.subrotmj.div4 a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.subrotmj.div4(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.subrotmj.div8(i32, i32)
define i32 @cv.subrotmj.div8(i32 %a, i32 %b) {
; CHECK-LABEL: cv.subrotmj.div8:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.subrotmj.div8 a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.subrotmj.div8(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.add.div2(i32, i32)
define i32 @cv.add.div2(i32 %a, i32 %b) {
; CHECK-LABEL: cv.add.div2:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.add.div2 a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.add.div2(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.add.div4(i32, i32)
define i32 @cv.add.div4(i32 %a, i32 %b) {
; CHECK-LABEL: cv.add.div4:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.add.div4 a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.add.div4(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.add.div8(i32, i32)
define i32 @cv.add.div8(i32 %a, i32 %b) {
; CHECK-LABEL: cv.add.div8:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.add.div8 a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.add.div8(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sub.div2(i32, i32)
define i32 @cv.sub.div2(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sub.div2:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sub.div2 a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sub.div2(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sub.div4(i32, i32)
define i32 @cv.sub.div4(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sub.div4:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sub.div4 a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sub.div4(i32 %a, i32 %b)
  ret i32 %1
}

declare i32 @llvm.riscv.cv.sub.div8(i32, i32)
define i32 @cv.sub.div8(i32 %a, i32 %b) {
; CHECK-LABEL: cv.sub.div8:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.sub.div8 a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.sub.div8(i32 %a, i32 %b)
  ret i32 %1
}


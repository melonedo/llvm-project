; RUN: llc -O0 -mtriple=riscv32 -mattr=+m -mattr=+xcorevsimd -verify-machineinstrs < %s \
; RUN:   | FileCheck %s

; Will crash

declare i32 @llvm.riscv.cv.add.sc.h(i32, i16)

define i32 @test.cv.add.sc.h(i32 %a, i16 %b) {
; CHECK-LABEL: test.cv.add.sc.h:
; CHECK:       # %bb.0:
; CHECK-NEXT:    cv.add.sc.h a0, a0, a1
; CHECK-NEXT:    ret
  %1 = call i32 @llvm.riscv.cv.add.sc.h(i32 %a, i16 %b)
  ret i32 %1
}

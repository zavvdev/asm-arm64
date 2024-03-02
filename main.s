.global _start
.align 2
_start:
  b _print
  b _terminate

_print:
  mov x0, #1         // stdout
  adr x1, helloworld // address of string
  mov x2, #12        // length of string
  mov x16, #4        // write to stdout
  svc 0              // syscall

_terminate:
  mov x0, #0    // return 0
  mov x16, #1   // set syscall number for exit
  svc 0         // syscall

helloworld: .ascii "Hello World\n"

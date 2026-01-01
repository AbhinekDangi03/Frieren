section .data 
  dev_random db "/dev/urandom", 0

section .bss
  buffer resb 1

section .text
  global _start

_start: 
  mov rax,2
  mov rdi, dev_random
  mov rsi, 0
  syscall

  mov rdi, rax

  mov rax, 0
  mov rsi, buffer
  mov rdx, 1
  syscall

  mov rax, 1
  mov rdi, 1
  mov rsi, buffer
  mov rdx, 1
  syscall
  
  mov rax, 60
  xor rdi,rdi
  syscall



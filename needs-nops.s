.data
 arr:
 .word 1, 2
 .text
 
 main:
  auipc s0 , %hi(arr)
  nop
  nop
  addi s0 , s0 , %lo(arr)
  addi t0 , x0, 0
  addi t1 , x0, 2
  nop
  addi a0 , x0, 0
 loop:
  bge t0 , t1 , break
  lw s1, 0(s0)
  nop
  nop
  add a0 , a0 , s1
  addi s0 , s0 , 4
  addi t0 , t0 , 1
   jal x0, loop
 break:
   sw a0, 0(s0)

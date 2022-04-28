.thumb
.align

.global PiggybackASM
.type PiggybackASM, %function

PiggybackASM:
ldr r3,=#0x0203A80C
ldrb r1,[r3,#0x5]
mov r1,#0x0
strb r1,[r3,#0x5]
ldr r3,=#0x0203A80C
ldrb r1,[r3,#0x6]
mov r1,#0x0
strb r1,[r3,#0x6]
ldr r3,=#0x0203A80C
ldrb r1,[r3,#0x7]
mov r1,#0x0
strb r1,[r3,#0x7]
mov r0,#0x2
neg r0,r0
and r0,r1
mov r1,#0x3
ldr r3,=#0x080B9EB2|1
bx r3

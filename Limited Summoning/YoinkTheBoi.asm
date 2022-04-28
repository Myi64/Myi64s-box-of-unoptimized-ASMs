.thumb
.align

.global YoinkTheBoi
.type YoinkTheBoi, %function

YoinkTheBoi:
ldr r0,=#0x03004E50
ldr r0,[r0]
ldr r0,[r0]
ldrb r1,[r0,#0x4]
cmp r1,#0x18
beq Ewan
cmp r1,#0x1F
beq Knoll
cmp r1,#0x23
beq Leon

Ewan:
ldr r3,=#0x0203A80C
ldrb r1,[r3,#0x5]
add r1,#0x1
strb r1,[r3,#0x5]
b Ender

Knoll:
ldr r3,=#0x0203A80C
ldrb r1,[r3,#0x6]
add r1,#0x1
strb r1,[r3,#0x6]
b Ender

Leon:
ldr r3,=#0x0203A80C
ldrb r1,[r3,#0x7]
add r1,#0x1
strb r1,[r3,#0x7]
b Ender

Ender:
ldr r1,=#0x0895F5A4 
ldr r3,=#0x0807AD3E|1
bx r3

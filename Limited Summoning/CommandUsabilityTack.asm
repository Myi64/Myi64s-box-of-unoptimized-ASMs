.thumb
.align

.global CommandUseablityTack
.type CommandUseablityTack, %function


CommandUseablityTack:
ldr r2,[r5]
ldr r0,[r2,#0x0]
ldrb r0,[r0,#0x4]
ldrb r1,[r2,#0x14]
cmp r0,#0x18
beq Ewan
cmp r0,#0x1F
beq Knoll
cmp r0,#0x23
beq Leon
b FlagPass

Ewan:
ldr r0,=#0x0203A811
ldrb r0,[r0]
lsr r1,#0x1
cmp r0,r1
beq FlagFail
b FlagPass

Knoll:
ldr r0,=#0x0203A812
ldrb r0,[r0]
lsr r1,#0x1
cmp r0,r1
beq FlagFail
b FlagPass

Leon:
ldr r0,=#0x0203A813
ldrb r0,[r0]
lsr r1,#0x1
cmp r0,r1
beq FlagFail
b FlagPass

FlagPass:
ldr r0,[r2]
ldr r1,[r2,#0x4]
ldr r0, [r0, #0x28]
ldr r3,=#0x080243E4|1
bx r3

FlagFail:
ldr r3,=#0x080243E2|1
bx r3


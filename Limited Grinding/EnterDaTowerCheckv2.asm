.thumb
.align

.global EnterDaTowerCheckv2
.type EnterDaTowerCheckv2, %function


EnterDaTowerCheckv2:
ldr r1,=#0x082060B0
add r0,r0,r1
ldrb r0,[r0]
cmp r0,#0x3
bne Ender
mov r1,#0x0
ldr r0,=#0x0202BD18
ldrb r0,[r0]

NewChapterCheck:
ldr r3,=#0x030052B0
add r3,r1
ldrb r3,[r3]
cmp r3,#0x3
beq IsNewCh
add r1,#0x4
cmp r1,#0x74
bne NewChapterCheck
mov r0,#0x3
b TowerRuins

IsNewCh:
lsr r1,#0x2
cmp r1,r0
bgt ResetCount
b AccessCheck

ResetCount:
ldr r0,=#0x0202BD18
strb r1,[r0]
mov r1,#0x0
ldr r3,=#0x0202BD19
strb r1,[r3]
mov r1,#0x0
ldr r3,=#0x0202BD1A
strb r1,[r3]

AccessCheck:
ldr r3,=#0x0202BCFE
ldrb r3,[r3]
cmp r3,#0x24
beq TowerAccessCheck
ldr r3,=#0x0202BCFE
ldrb r3,[r3]
cmp r3,#0x2E
beq RuinsAccessCheck

TowerAccessCheck:
ldr r3,=#0x0202BD19
ldrb r3,[r3]
cmp r3,#0x3
beq NoMoreGrinding
b TowerRuins

RuinsAccessCheck:
ldr r3,=#0x0202BD1A
ldrb r3,[r3]
cmp r3,#0x3
beq NoMoreGrinding
b TowerRuins
NoMoreGrinding:
ldr r1,=#0x082060B0
mov r0,#0x0
b Ender

TowerRuins:
ldr r1,=#0x082060B0
mov r0,#0x3
b Ender

Ender:
ldr r3,=#0x080B92F8|1
cmp r0,#0x3
bx r3


.thumb
.align

.global AddTowerCount
.type AddTowerCount, %function

AddTowerCount:
ldr r3,=#0x0202BCFE
ldrb r3,[r3]
cmp r3,#0x24
beq UpdateTower
cmp r3,#0x2E
beq UpdateRuins
b Ender

UpdateTower:
ldr r3,=#0x0202BD19
ldrb r0,[r3]
add r0,#0x1
strb r0,[r3]
b Ender

UpdateRuins:
ldr r3,=#0x0202BD1A
ldrb r0,[r3]
add r0,#0x1
strb r0,[r3]
b Ender

Ender:
mov r0,#0x2
neg r0,r0
and r0,r1
mov r1,#0x3
ldr r3,=#0x080B9EB2|1
bx r3

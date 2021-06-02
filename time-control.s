# Code type C2
# Inject at 0x805355F8

.set controller_address, 0xXXXX

.set increase_button, 0xUUUU
.set decrease_button, 0xVVVV
.set increase_speed, 0xRR
.set decrease_speed, 0xSS

addi r0, r3, 0x0
lis r12, 0x8034
lhz r12, controller_address (r12)
cmpwi r12, increase_button
bne+ decrease
addi r0, r3, increase_speed

decrease:
cmpwi r12, decrease_button
bne+ end
subi r0, r3, decrease_speed

end:
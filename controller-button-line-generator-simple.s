# Fill in the symbol that represents the controller. Lowercase letters can also be used.
.set controller, ''
# W = Wii Wheel
# N = Nunchuk
# C = Classic Controller
# G = GCN Controller


# Fill in the symbol that represents the button states. Lowercase letters can also be used.
.set button_states, ''
# J = Just that buttons pressed
# L = At least that buttons pressed


# Fill in the symbol that represents the button. Lowercase letters can also be used.
.set button, ''
# N = Not press anything
# 3 = Up
# 4 = Down
# 5 = Left
# 6 = Right
# A = A
# B = B
# X = X
# Y = Y

# L = L
# R = R
# H = Home
# + = +
# - = -
# 1 = 1
# 2 = 2

# C = C (Nunchuk only)
# Z = Z (Nunchuk only)
# 7 = ZL (Classic only)
# 8 = ZR (Classic only)
# S = Start (GCN only)


#Set button states
.if    (button_states == 'J' || button_states == 'j') #Just that button(s) pressed
    .set button_blank, 0x0
.elseif (button_states == 'L' || button_states == 'l') #At least that button(s) pressed
    .set button_blank, 0xFFFF - button_address
.else #Invalid Region
        .abort
.endif

#Set controller and button
.if    (controller == 'W' || controller == 'w') #Wii Wheel
    .set controller_address, 0x5162

    .if    (button == 'N' || button == 'n') #Not press anything
        .set button_address, 0x0
    .elseif (button == '3') #Up
        .set button_address, 0x2
    .elseif (button == '4') #Down
        .set button_address, 0x1
    .elseif (button == '5') #Left
        .set button_address, 0x8
    .elseif (button == '6') #Right
        .set button_address, 0x4
    .elseif (button == 'A') #A
        .set button_address, 0x800
    .elseif (button == 'B') #B
        .set button_address, 0x400
    .elseif (button == '+') #Plus
        .set button_address, 0x10
    .elseif (button == '-') #Minus
        .set button_address, 0x1000
    .elseif (button == '1') #1
        .set button_address, 0x200
    .elseif (button == '2') #2
        .set button_address, 0x100
    .elseif (controller == 'H' || controller == 'h') #Home
        .set button_address, 0x8000
    .else # Invalid Region
        .abort
    .endif
.elseif    (controller == 'N' || controller == 'n') #Nunchuk
    .set controller_address, 0x5162

    .if    (button == 'N' || button == 'n') #Not press anything
        .set button_address, 0x0
    .elseif (button == '3') #Up
        .set button_address, 0x8
    .elseif (button == '4') #Down
        .set button_address, 0x4
    .elseif (button == '5') #Left
        .set button_address, 0x1
    .elseif (button == '6') #Right
        .set button_address, 0x2
    .elseif (button == 'A') #A
        .set button_address, 0x800
    .elseif (button == 'B') #B
        .set button_address, 0x400
    .elseif (button == '+') #Plus
        .set button_address, 0x10
    .elseif (button == '-') #Minus
        .set button_address, 0x1000
    .elseif (button == '1') #1
        .set button_address, 0x200
    .elseif (button == '2') #2
        .set button_address, 0x100
    .elseif (controller == 'C' || controller == 'c') #C
        .set button_address, 0x4000
    .elseif (controller == 'Z' || controller == 'z') #Z
        .set button_address, 0x2000
    .elseif (controller == 'H' || controller == 'h') #Home
        .set button_address, 0x8000
    .else # Invalid Region
        .abort
    .endif
.elseif (controller == 'C' || controller == 'c') #Classic Controller
    .set controller_address, 0x51C2
    
    .if    (button == 'N' || button == 'n') #Not press anything
        .set button_address, 0x0
    .elseif (button == '3') #Up
        .set button_address, 0x1
    .elseif (button == '4') #Down
        .set button_address, 0x4000
    .elseif (button == '5') #Left
        .set button_address, 0x2
    .elseif (button == '6') #Right
        .set button_address, 0x8000
    .elseif (controller == 'A' || controller == 'a') #A
        .set button_address, 0x10
    .elseif (controller == 'B' || controller == 'b') #B
        .set button_address, 0x40
    .elseif (controller == 'X' || controller == 'x') #X
        .set button_address, 0x8
    .elseif (controller == 'Y' || controller == 'y') #Y
        .set button_address, 0x20
    .elseif (button == '+') #Plus
        .set button_address, 0x400
    .elseif (button == '-') #Minus
        .set button_address, 0x1000
    .elseif (controller == 'L' || controller == 'l') #L
        .set button_address, 0x2000
    .elseif (controller == 'R' || controller == 'r') #R
        .set button_address, 0x200
    .elseif (controller == '7') #ZL
        .set button_address, 0x80
    .elseif (controller == '8') #ZR
        .set button_address, 0x4
    .elseif (controller == 'H' || controller == 'h') #Home
        .set button_address, 0x800
    .else # Invalid Region
        .abort
    .endif
.elseif (controller == 'G' || controller == 'g') #GCN Controller
    .set controller_address, 0x7B80
    
    .if    (button == 'N' || button == 'n') #Not press anything
        .set button_address, 0x0
    .elseif (button == '3') #Up
        .set button_address, 0x88
    .elseif (button == '4') #Down
        .set button_address, 0x84
    .elseif (button == '5') #Left
        .set button_address, 0x81
    .elseif (button == '6') #Right
        .set button_address, 0x82
    .elseif (controller == 'A' || controller == 'a') #A
        .set button_address, 0x180
    .elseif (controller == 'B' || controller == 'b') #B
        .set button_address, 0x280
    .elseif (controller == 'X' || controller == 'x') #X
        .set button_address, 0x480
    .elseif (controller == 'Y' || controller == 'y') #Y
        .set button_address, 0x880
    .elseif (controller == 'S' || controller == 's') #Start
        .set button_address, 0x400
    .elseif (controller == 'L' || controller == 'l') #L
        .set button_address, 0xC0
    .elseif (controller == 'R' || controller == 'r') #R
        .set button_address, 0xA0
    .elseif (controller == 'Z' || controller == 'z') #Z
        .set button_address, 0x80
    .else # Invalid Region
        .abort
    .endif
.else # Invalid Region
        .abort
.endif

.short 0x2834
.short controller_address
.short button_blank
.short button_address
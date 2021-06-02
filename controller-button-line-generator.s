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


# Fill in button address.
.set button_address, 0xXXXX + 0xYYYY + 0xZZZZ + ...
# https://mk-hacks.netlify.app/pages/code-values/


#Set button states
.if     (button_states == 'J' || button_states == 'j') #Just that button(s) pressed
    .set button_blank, 0x0
.elseif (button_states == 'L' || button_states == 'l') #At least that button(s) pressed
    .set button_blank, 0xFFFF - button_address
.else #Invalid Region
        .abort
.endif

#Set controller
.if     (controller == 'W' || controller == 'w') #Wii Wheel
    .set controller_address, 0x5162
.elseif (controller == 'N' || controller == 'n') #Nunchuk
    .set controller_address, 0x5162
.elseif (controller == 'C' || controller == 'c') #Classic Controller
    .set controller_address, 0x51C2
.elseif (controller == 'G' || controller == 'g') #GCN Controller
    .set controller_address, 0x7B80
.else # Invalid Region
        .abort
.endif

.short 0x2834
.short controller_address
.short button_blank
.short button_address
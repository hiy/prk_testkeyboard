# Wait until Keyboard class is ready
while !$mutex
  relinquish
end

# Initialize a Keyboard
kbd = Keyboard.new

kbd.init_pins(
  [6, 7],   # row0, row1
  [28, 27]  # col0, col1
)

kbd.add_layer :default, [
  %i(KC_A KC_B KC_C KC_D),    %i(A B C D)
]

kbd.start!

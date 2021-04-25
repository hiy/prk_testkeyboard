# Wait until Keyboard class is ready
while !$mutex
  relinquish
end

# Initialize a Keyboard
kbd = Keyboard.new

kbd.init_pins(
  [],   # row0, row1
  [15]  # col0, col1
)

kbd.add_layer :default, [
  %i(KC_A),    %i(A)
]

kbd.start!

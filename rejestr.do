restart -nowave -force
add wave *

force reset 0 0
force zegar 0 0, 1 {50ps} -r 100
force swe 0 0
force rwe 0110 0
force tryb 00 0
run 100
force reset 1 0
run 100
force reset 0 0
force swe 1 0
force tryb 00
run 150

run 10

force tryb 00 0
run 200

force tryb 01 0
run 250

force tryb 01 0
run 300

force tryb 10 0
run 350

force tryb 11 0
run 400

run


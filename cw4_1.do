restart -nowave -force
add wave -radix unsigned *

force a 10#8 0
force b 10#2 0
run
force b 10#4 0
run
force b 10#6 0
run
force b 10#8 0
run
force b 10#10 0
run


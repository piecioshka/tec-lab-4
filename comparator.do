restart -nowave -force
add wave -radix unsigned *

force a 10#10 1
force b 10#1 1
run

force a 10#4 1
force b 10#6 1
run

force a 10#5 1
force b 10#5 1
run

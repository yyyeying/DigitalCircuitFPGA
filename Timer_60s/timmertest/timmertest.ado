setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/FPGACode/Timer_60s/timmertest/timmertest.adf"]} { 
	design create timmertest "C:/FPGACode/Timer_60s"
  set newDesign 1
}
design open "C:/FPGACode/Timer_60s/timmertest"
cd "C:/FPGACode/Timer_60s"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/FPGACode/Timer_60s/timmertest/Segment_led.v"
addfile "C:/FPGACode/Timer_60s/timmertest/Debounce.v"
addfile "C:/FPGACode/Timer_60s/timmertest/Timer_60s.v"
addfile "C:/FPGACode/Timer_60s/timmertest/Timer_60s_tb.v"
vlib "C:/FPGACode/Timer_60s/timmertest/work"
set worklib work
adel -all
vlog -dbg -work work "C:/FPGACode/Timer_60s/timmertest/Segment_led.v"
vlog -dbg -work work "C:/FPGACode/Timer_60s/timmertest/Debounce.v"
vlog -dbg -work work "C:/FPGACode/Timer_60s/timmertest/Timer_60s.v"
vlog -dbg -work work "C:/FPGACode/Timer_60s/timmertest/Timer_60s_tb.v"
module Timer_60s_tb
vsim  +access +r Timer_60s_tb   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns

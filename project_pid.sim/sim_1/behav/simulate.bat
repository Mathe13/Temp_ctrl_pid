@echo off
set xv_path=D:\\Xilinx2016\\Vivado\\2016.1\\bin
call %xv_path%/xsim comparator_tb_behav -key {Behavioral:sim_1:Functional:comparator_tb} -tclbatch comparator_tb.tcl -view D:/Xilinx2016/Projetos_UERGS/Temp_ctrl_pid/comparator_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0

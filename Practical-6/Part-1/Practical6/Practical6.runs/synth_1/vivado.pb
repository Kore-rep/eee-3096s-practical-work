
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental D:/University/EEE3096S/eee-3096s-practical-work/Practical-6/Part-1/Practical6/Practical6.srcs/utils_1/imports/synth_1/tb_reg_mem.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2?
?D:/University/EEE3096S/eee-3096s-practical-work/Practical-6/Part-1/Practical6/Practical6.srcs/utils_1/imports/synth_1/tb_reg_mem.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
z
Command: %s
53*	vivadotcl2I
5synth_design -top tb_simple_CPU -part xc7k70tfbv676-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7k70t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7k70t2default:defaultZ17-349h px? 
?
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
181802default:defaultZ8-7075h px? 
?
%s*synth2?
rStarting Synthesize : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1253.797 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2!
tb_simple_CPU2default:default2
 2default:default2h
RD:/University/EEE3096S/eee-3096s-practical-work/Practical-6/Part-1/tb_simple_CPU.v2default:default2
32default:default8@Z8-6157h px? 
?
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2h
RD:/University/EEE3096S/eee-3096s-practical-work/Practical-6/Part-1/tb_simple_CPU.v2default:default2
132default:default8@Z8-4446h px? 
?
synthesizing module '%s'%s4497*oasys2

simple_cpu2default:default2
 2default:default2^
HD:/University/EEE3096S/eee-3096s-practical-work/Practical-6/Part-1/top.v2default:default2
32default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter ADDR_BITS bound to: 5 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter INSTR_WIDTH bound to: 20 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
alu2default:default2
 2default:default2^
HD:/University/EEE3096S/eee-3096s-practical-work/Practical-6/Part-1/alu.v2default:default2
12default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
alu2default:default2
 2default:default2
12default:default2
12default:default2^
HD:/University/EEE3096S/eee-3096s-practical-work/Practical-6/Part-1/alu.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
reg_mem2default:default2
 2default:default2a
KD:/University/EEE3096S/eee-3096s-practical-work/Practical-6/Part-1/RegMem.v2default:default2
32default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter ADDR_BITS bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
reg_mem2default:default2
 2default:default2
22default:default2
12default:default2a
KD:/University/EEE3096S/eee-3096s-practical-work/Practical-6/Part-1/RegMem.v2default:default2
32default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
addr2default:default2
52default:default2
reg_mem2default:default2^
HD:/University/EEE3096S/eee-3096s-practical-work/Practical-6/Part-1/top.v2default:default2
332default:default8@Z8-689h px? 
?
synthesizing module '%s'%s4497*oasys2
CU2default:default2
 2default:default2]
GD:/University/EEE3096S/eee-3096s-practical-work/Practical-6/Part-1/CU.v2default:default2
32default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter ADDR_BITS bound to: 5 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter INSTR_WIDTH bound to: 20 - type: integer 
2default:defaulth p
x
? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
instruction_reg2default:default2]
GD:/University/EEE3096S/eee-3096s-practical-work/Practical-6/Part-1/CU.v2default:default2
352default:default8@Z8-6014h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CU2default:default2
 2default:default2
32default:default2
12default:default2]
GD:/University/EEE3096S/eee-3096s-practical-work/Practical-6/Part-1/CU.v2default:default2
32default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

simple_cpu2default:default2
 2default:default2
42default:default2
12default:default2^
HD:/University/EEE3096S/eee-3096s-practical-work/Practical-6/Part-1/top.v2default:default2
32default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
tb_simple_CPU2default:default2
 2default:default2
52default:default2
12default:default2h
RD:/University/EEE3096S/eee-3096s-practical-work/Practical-6/Part-1/tb_simple_CPU.v2default:default2
32default:default8@Z8-6155h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
rst2default:default2
CU2default:defaultZ8-7129h px? 
?
%s*synth2?
rFinished Synthesize : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1253.797 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Constraint Validation : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1253.797 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7k70tfbv676-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1253.797 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
Loading part %s157*device2#
xc7k70tfbv676-12default:defaultZ21-403h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
CU2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                   RESET |                              000 |                             0000
2default:defaulth p
x
? 
?
%s
*synth2s
_                  DECODE |                              001 |                             0001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 EXECUTE |                              010 |                             0010
2default:defaulth p
x
? 
?
%s
*synth2s
_              MEM_ACCESS |                              011 |                             0100
2default:defaulth p
x
? 
?
%s
*synth2s
_              WRITE_BACK |                              100 |                             1000
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
CU2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1253.797 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    8 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
h
%s
*synth2P
<	              256 Bit	(32 X 8 bit)          RAMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 24    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 13    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/CU1/FSM_sequential_state_reg[2]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/CU1/FSM_sequential_state_reg[1]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/CU1/FSM_sequential_state_reg[0]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[0][7]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[0][6]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[0][5]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[0][4]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[0][3]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[0][2]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[0][1]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[0][0]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[1][7]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[1][6]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[1][5]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[1][4]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[1][3]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[1][2]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[1][1]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[1][0]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[2][7]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[2][6]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[2][5]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[2][4]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[2][3]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[2][2]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[2][1]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[2][0]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[3][7]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[3][6]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[3][5]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[3][4]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[3][3]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[3][2]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[3][1]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[3][0]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[4][7]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[4][6]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[4][5]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[4][4]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[4][3]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[4][2]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[4][1]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[4][0]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[5][7]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[5][6]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[5][5]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[5][4]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[5][3]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[5][2]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[5][1]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[5][0]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[6][7]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[6][6]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[6][5]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[6][4]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[6][3]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[6][2]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[6][1]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[6][0]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[7][7]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[7][6]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[7][5]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[7][4]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[7][3]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[7][2]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[7][1]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[7][0]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[8][7]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[8][6]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[8][5]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[8][4]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[8][3]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[8][2]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[8][1]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[8][0]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[9][7]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[9][6]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[9][5]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[9][4]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[9][3]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[9][2]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[9][1]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(SCPU_DUT/data_memory/mem_array_reg[9][0]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)SCPU_DUT/data_memory/mem_array_reg[10][7]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)SCPU_DUT/data_memory/mem_array_reg[10][6]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)SCPU_DUT/data_memory/mem_array_reg[10][5]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)SCPU_DUT/data_memory/mem_array_reg[10][4]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)SCPU_DUT/data_memory/mem_array_reg[10][3]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)SCPU_DUT/data_memory/mem_array_reg[10][2]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)SCPU_DUT/data_memory/mem_array_reg[10][1]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)SCPU_DUT/data_memory/mem_array_reg[10][0]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)SCPU_DUT/data_memory/mem_array_reg[11][7]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)SCPU_DUT/data_memory/mem_array_reg[11][6]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)SCPU_DUT/data_memory/mem_array_reg[11][5]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)SCPU_DUT/data_memory/mem_array_reg[11][4]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)SCPU_DUT/data_memory/mem_array_reg[11][3]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)SCPU_DUT/data_memory/mem_array_reg[11][2]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)SCPU_DUT/data_memory/mem_array_reg[11][1]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)SCPU_DUT/data_memory/mem_array_reg[11][0]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)SCPU_DUT/data_memory/mem_array_reg[12][7]2default:default2!
tb_simple_CPU2default:defaultZ8-3332h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33322default:default2
1002default:defaultZ17-14h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1253.797 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Timing Optimization : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1253.797 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
zFinished Technology Mapping : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1253.797 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
tFinished IO Insertion : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 1253.797 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 1253.797 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 1253.797 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 1253.797 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 1253.797 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Renaming Generated Nets : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 1253.797 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
=
%s*synth2%
+-+-----+------+
2default:defaulth px? 
=
%s*synth2%
| |Cell |Count |
2default:defaulth px? 
=
%s*synth2%
+-+-----+------+
2default:defaulth px? 
=
%s*synth2%
+-+-----+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
N
%s
*synth26
"|      |Instance |Module |Cells |
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
N
%s
*synth26
"|1     |top      |       |     0|
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 1253.797 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 264 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
}Synthesis Optimization Runtime : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 1253.797 ; gain = 0.000
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Complete : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 1253.797 ; gain = 0.000
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1253.7972default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1253.7972default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
35a308a02default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
262default:default2
1062default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:202default:default2
00:00:212default:default2
1253.7972default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
wD:/University/EEE3096S/eee-3096s-practical-work/Practical-6/Part-1/Practical6/Practical6.runs/synth_1/tb_simple_CPU.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
pExecuting : report_utilization -file tb_simple_CPU_utilization_synth.rpt -pb tb_simple_CPU_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Nov  5 23:00:27 20212default:defaultZ17-206h px? 


End Record
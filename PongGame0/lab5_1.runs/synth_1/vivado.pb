
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:062default:default2
00:00:072default:default2
1238.6482default:default2
0.0002default:defaultZ17-268h px? 
?
Command: %s
1870*	planAhead2?
read_checkpoint -auto_incremental -incremental C:/Users/JideO/Downloads/lab5_1/lab5_1.srcs/utils_1/imports/synth_1/game_top.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2d
PC:/Users/JideO/Downloads/lab5_1/lab5_1.srcs/utils_1/imports/synth_1/game_top.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
u
Command: %s
53*	vivadotcl2D
0synth_design -top game_tp -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
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
612682default:defaultZ8-7075h px? 
?
,redeclaration of ansi port %s is not allowed2611*oasys2
Winner2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
392default:default8@Z8-2611h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1238.648 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
game_tp2default:default2
 2default:default2]
GC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/game_top.v2default:default2
212default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	clk_wiz_02default:default2
 2default:default2?
lC:/Users/JideO/Downloads/PongGame0/lab5_1.runs/synth_1/.Xil/Vivado-2192-TrimlessPC/realtime/clk_wiz_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	clk_wiz_02default:default2
 2default:default2
12default:default2
12default:default2?
lC:/Users/JideO/Downloads/PongGame0/lab5_1.runs/synth_1/.Xil/Vivado-2192-TrimlessPC/realtime/clk_wiz_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
blkpos_y2default:default2]
GC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/game_top.v2default:default2
942default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
blkpos_x2default:default2]
GC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/game_top.v2default:default2
1002default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
blkpos_x2default:default2]
GC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/game_top.v2default:default2
1062default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
blkpos_y2default:default2]
GC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/game_top.v2default:default2
1122default:default8@Z8-6090h px? 
?
synthesizing module '%s'%s4497*oasys2
vga_out2default:default2
 2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/sources_1/new/vga.v2default:default2
222default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vga_out2default:default2
 2default:default2
22default:default2
12default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/sources_1/new/vga.v2default:default2
222default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	drawblock2default:default2
 2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
232default:default8@Z8-6157h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
moveDOWN2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
1692default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
moveUP2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
1732default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
moveDOWN2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
1772default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
moveUP2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
1812default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2

BallCurr_y2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
2012default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2

BallCurr_y2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
2042default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2

BallCurr_x2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
2072default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2

BallCurr_x2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
2102default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2

BallCurr_x2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
2132default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2

BallCurr_y2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
2142default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
moveUP2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
2172default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
moveDOWN2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
2172default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
moveLEFT2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
2172default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	moveRIGHT2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
2172default:default8@Z8-6090h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2 
CrazyCNT_reg2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
922default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
BallPrev_y_reg2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
1962default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
BallPrev_x_reg2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
1972default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	aSeg1_reg2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
2632default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	aSeg0_reg2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
2672default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	bSeg1_reg2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
2722default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	bSeg0_reg2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
2762default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	cSeg1_reg2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
2812default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	cSeg0_reg2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
2852default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	dSeg1_reg2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
2902default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	dSeg0_reg2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
2942default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	eSeg1_reg2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
2992default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	eSeg0_reg2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
3032default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	fSeg1_reg2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
3082default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	fSeg0_reg2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
3122default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	gSeg1_reg2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
3172default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	gSeg0_reg2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
3212default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
bg_b_reg2default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
3292default:default8@Z8-6014h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	drawblock2default:default2
 2default:default2
32default:default2
12default:default2_
IC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/drawingcon.v2default:default2
232default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
12default:default2
Winner2default:default2
32default:default2
	drawblock2default:default2]
GC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/game_top.v2default:default2
1442default:default8@Z8-689h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
game_tp2default:default2
 2default:default2
42default:default2
12default:default2]
GC:/Users/JideO/Downloads/PongGame0/lab5_1.srcs/sources_1/new/game_top.v2default:default2
212default:default8@Z8-6155h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 1238.648 ; gain = 0.000
2default:defaulth px? 
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 1238.648 ; gain = 0.000
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
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 1238.648 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0152default:default2
1238.6482default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2}
gc:/Users/JideO/Downloads/PongGame0/lab5_1.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default2
inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2}
gc:/Users/JideO/Downloads/PongGame0/lab5_1.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default2
inst	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2
led1_B2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2
322default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led2_B2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2
332default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led1_R2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2
342default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led2_R2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2
352default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led1_G2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2
362default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led2_G2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2
372default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
a2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2
592default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
b2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2
602default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
c2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2
612default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
d2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2
622default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
e2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2
632default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
f2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2
642default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
g2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2
652default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[0]2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2
692default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[1]2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2
702default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[2]2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2
712default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[3]2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2
722default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[4]2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2
732default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[5]2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2
742default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[6]2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2
752default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[7]2default:default2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2
762default:default8@Z12-584h px?
?
Finished Parsing XDC File [%s]
178*designutils2X
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default8Z20-178h px? 
?
?One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2V
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2-
.Xil/game_tp_propImpl.xdc2default:defaultZ1-498h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2V
BC:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc2default:default2-
.Xil/game_tp_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1271.3402default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0082default:default2
1271.3402default:default2
0.0002default:defaultZ17-268h px? 
?
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1271.340 ; gain = 32.691
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
K
%s
*synth23
Loading part: xc7a100tcsg324-1
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1271.340 ; gain = 32.691
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
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1271.340 ; gain = 32.691
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
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1271.340 ; gain = 32.691
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
,	   2 Input   32 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   32 Bit       Adders := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   21 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   12 Bit       Adders := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit       Adders := 11    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit       Adders := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 1     
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
.	               21 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
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
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
? 
?
%s
*synth2'
+---Multipliers : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	               5x27  Multipliers := 1     
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
,	   2 Input   21 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit        Muxes := 21    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 8     
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
,	   2 Input    2 Bit        Muxes := 26    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    2 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 2     
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
y
%s
*synth2a
MDSP Report: Generating DSP CrazySpinCNT2, operation Mode is: (A:0x196e6b)*B.
2default:defaulth p
x
? 
s
%s
*synth2[
GDSP Report: operator CrazySpinCNT2 is absorbed into DSP CrazySpinCNT2.
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
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:25 ; elapsed = 00:00:25 . Memory (MB): peak = 1271.340 ; gain = 32.691
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
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
?
%s*synth2p
\
DSP: Preliminary Mapping Report (see note below. The ' indicates corresponding REG is set)
2default:defaulth px? 
?
%s*synth2?
+------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name | DSP Mapping    | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
+------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|drawblock   | (A:0x196e6b)*B | 21     | 6      | -      | -      | 27     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?+------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
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
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1282.941 ; gain = 44.293
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
}Finished Timing Optimization : Time (s): cpu = 00:00:42 ; elapsed = 00:00:42 . Memory (MB): peak = 1385.484 ; gain = 146.836
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
|Finished Technology Mapping : Time (s): cpu = 00:00:42 ; elapsed = 00:00:43 . Memory (MB): peak = 1397.000 ; gain = 158.352
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
vFinished IO Insertion : Time (s): cpu = 00:00:48 ; elapsed = 00:00:49 . Memory (MB): peak = 1397.000 ; gain = 158.352
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:48 ; elapsed = 00:00:49 . Memory (MB): peak = 1397.000 ; gain = 158.352
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:48 ; elapsed = 00:00:49 . Memory (MB): peak = 1397.000 ; gain = 158.352
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:48 ; elapsed = 00:00:49 . Memory (MB): peak = 1397.000 ; gain = 158.352
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:48 ; elapsed = 00:00:49 . Memory (MB): peak = 1397.000 ; gain = 158.352
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:48 ; elapsed = 00:00:49 . Memory (MB): peak = 1397.000 ; gain = 158.352
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
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|1     |clk_wiz_0     |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s*synth2-
|      |Cell    |Count |
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s*synth2-
|1     |clk_wiz |     1|
2default:defaulth px? 
E
%s*synth2-
|2     |BUFG    |     1|
2default:defaulth px? 
E
%s*synth2-
|3     |CARRY4  |   122|
2default:defaulth px? 
E
%s*synth2-
|4     |DSP48E1 |     1|
2default:defaulth px? 
E
%s*synth2-
|5     |LUT1    |    72|
2default:defaulth px? 
E
%s*synth2-
|6     |LUT2    |   259|
2default:defaulth px? 
E
%s*synth2-
|7     |LUT3    |   100|
2default:defaulth px? 
E
%s*synth2-
|8     |LUT4    |   201|
2default:defaulth px? 
E
%s*synth2-
|9     |LUT5    |   100|
2default:defaulth px? 
E
%s*synth2-
|10    |LUT6    |   152|
2default:defaulth px? 
E
%s*synth2-
|11    |MUXF7   |     1|
2default:defaulth px? 
E
%s*synth2-
|12    |FDRE    |   183|
2default:defaulth px? 
E
%s*synth2-
|13    |FDSE    |    12|
2default:defaulth px? 
E
%s*synth2-
|14    |IBUF    |     5|
2default:defaulth px? 
E
%s*synth2-
|15    |OBUF    |    14|
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:48 ; elapsed = 00:00:49 . Memory (MB): peak = 1397.000 ; gain = 158.352
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:38 ; elapsed = 00:00:46 . Memory (MB): peak = 1397.000 ; gain = 125.660
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:49 ; elapsed = 00:00:49 . Memory (MB): peak = 1397.000 ; gain = 158.352
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
00:00:00.0242default:default2
1404.7812default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1242default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
g
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
12default:defaultZ31-140h px? 
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
00:00:00.0012default:default2
1413.4342default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
fc5327702default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
282default:default2
632default:default2
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
00:00:532default:default2
00:00:552default:default2
1413.4342default:default2
174.7852default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2V
BC:/Users/JideO/Downloads/PongGame0/lab5_1.runs/synth_1/game_tp.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2x
dExecuting : report_utilization -file game_tp_utilization_synth.rpt -pb game_tp_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Apr  1 23:35:29 20222default:defaultZ17-206h px? 


End Record
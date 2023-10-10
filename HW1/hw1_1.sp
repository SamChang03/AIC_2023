*** 110030039 Homework 1
*** Part I
*** Analyze with Diode Connected Structure

.protect
.lib `cic018.l' ff
.unprotect
.option post

**** source ****
**Suppose Vdd=1.8V, temperature=25°C
vdd vdd gnd 1.8

**** Variable parameters / devices ****

.param len=.18u
M vd vd gnd gnd n_18 w=len*3 l=len m=1
I Vdd vd 30u


**** Analisis ****
** sweep the channel length of Mthn and Mthp from 0.18μm to 10μm with a step of 0.01μm
.dc len .18u 10u .01u

** probe the following parameters of Mthn and Mthp with respect to the channel length
.probe dc
+ vth(m)                ** (1) Threshold voltage Vth
+ gmo(m)                ** (2) Transconductance gm
+ gdso(m)               ** (3) Output conductance gds
+ vdsat(m)              ** (4) Saturation drain voltage Vdsat
+ ` gmo(m) / gdso(m)  ' ** (5) Intrinsic gain gm*rO
+ ` gmo(m) / id(m)    ' ** (6) Power efficiency gm/ID
+ ` gmo(m) / cggbo(m) ' ** (7) Speed gm/Cg

.alter

M vd vd vdd vdd p_18 w=len*3 l=len m=1
I vd gnd 30u

.end

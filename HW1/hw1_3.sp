*** 110030039 Homework 1
*** Part III
*** Body Effect

.protect
.lib `cic018.l' tt
.unprotect
.option post

****Source****
vdd vdd 0 1.8
vg vg 0 0.7
vs vs 0 0
vb vb 0 0

**** Variable parameters / devices ****

.param l=10u
.param n=1.6

Mn vdd vg vs vb n_18 w=l*n l=l m=1


**** Analisis ****
** sweep Vs from 0V to 1V with the step 0.1mV
.dc vs 0 1 .1m
**.meas number find par(n) when id(Mn)=30u

** probe the following parameters of Mthn and Mthp with respect to the channel length
.probe dc 
+id(Mn)
+vth(Mn)
+gmo(Mn)

**connect Source to Body
.alter

Mn vdd vg vs vs n_18 w=l*n l=l m=1

.end

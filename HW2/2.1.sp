*** 110030039 Homework 2
*** Part I
*** Common Source Amplifier

.protect
.lib `cic018.l' tt
.unprotect
.option post

****Source****
vdd vdd 0 1.8
vin vin 0 0.8
vs vs 0 0
vb vb 0 0
r vdd vout 30k

**** Variable parameters / devices ****

.param l=1u
.param n=1.15

Mn vout vin vs vb n_18 w=l*n l=l m=1


**** Analisis ****
.dc vin .7 .9 .0001
.probe deriv('v(vout)')
.tf v(vout) vin
.op
.end

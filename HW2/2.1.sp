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

**** Variable parameters / devices ****

.param l=1u
.param n=1

Mn vdd vg vs vb n_18 w=l*n l=l m=1


**** Analisis ****
.dc vin 0 1.8 .00001
.probe deriv('v(vout)')
.tf v(vout) vin

.end

*** 110030039 Homework 2
*** Part I
*** Common Source Amplifier

.protect
.lib `cic018.l' tt
.unprotect
.option post
+ post
+ captab
+  ABSTOL=1e-7 RELTOL=1e-7 ACCURATE=1

****Source****
vdd vdd 0 1.8
vin vin 0 0.8
vs vs 0 0
vb vb 0 0
r vdd vout 35.5k

**** Variable parameters / devices ****

.param l=1u
.param n=1.3

Mn vout vin vs vb n_18 w=l*n l=l m=1


**** Analisis ****
.dc vin .7 .9 .01
.probe deriv('v(vout)')
.tf v(vout) vin
.op
.end

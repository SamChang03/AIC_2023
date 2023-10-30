*** 110030039 Homework 2
*** Part II
*** Common Gate

.protect
.lib `cic018.l' tt
.unprotect
.option post
+ post
+ captab
+  ABSTOL=1e-7 RELTOL=1e-7 ACCURATE=1

****Source****
vdd vdd 0 1.8
vin vin 0 .16
vs vs 0 0
vb vb 0 0.6

r vdd vout 88k

**** Variable parameters / devices ****

.param l=1u
.param n=10

Mn vout vb vin vin n_18 w=l*n l=l m=1


**** Analisis ****
.dc vin .1 .2 .001
.probe deriv('v(vout)')
.tf v(vout) vin
.op
.end






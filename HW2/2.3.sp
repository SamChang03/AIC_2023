*** 110030039 Homework 2
*** Part III
*** Source Follower

.protect
.lib `cic018.l' tt
.unprotect
.option post
+ post
+ captab
+  ABSTOL=1e-7 RELTOL=1e-7 ACCURATE=1

****Source****
vdd vdd 0 1.8
vin vin 0 1.6


r vout 0 30k

**** Variable parameters / devices ****

.param l=1u
.param n=1.2

Mn vdd vin vout vout n_18 w=l*n l=l m=1


**** Analisis ****
.dc vin 1.5 1.7 .001
.probe deriv('v(vout)')
.tf v(vout) vin
.op
.end

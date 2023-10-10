*** 110030039 Homework 1
*** Part II
*** Drian Current ID

.protect
.lib `cic018.l' tt
.unprotect
.option post

**** source ****
**Suppose 𝑉𝐷𝐷=1.8V, temperature=25°C
vdd vdd 0 1.8
vg vg 0 vg

**** Variable parameters / devices ****

.param len=1.8u
.param vg=0

M vdd vg 0 0 n_18 w=len*3 l=len m=1


**** Analisis ****

.dc vg 0 1.8 .01 sweep len 1.8u 10u 1.8u

.probe id(m)

.alter

M 0 vg vdd vdd p_18 w=len*3 l=len m=1

.end

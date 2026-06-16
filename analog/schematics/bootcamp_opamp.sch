v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -160 -70 -140 -70 {lab=GND}
N -220 -70 -200 -70 {lab=VGS}
N -160 -120 -160 -100 {lab=VDD}
N -160 -40 -160 -20 {lab=GND}
N -270 -180 -270 -160 {lab=VGS}
N -270 -100 -270 -80 {lab=GND}
N -100 -260 -100 -240 {lab=VDD}
N -100 -180 -100 -160 {lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -180 -70 0 0 {name=M1
L=1
W=2
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} -140 -70 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -160 -120 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} -100 -210 0 0 {name=VDD value=0.9 savecurrent=true}
C {devices/vsource.sym} -270 -130 0 0 {value=0 name=VGS2 savecurrent=false}
C {devices/vdd.sym} -100 -260 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} -100 -160 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} -270 -80 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} -220 -70 0 0 {name=VGS lab=VGS}
C {devices/vdd.sym} -270 -180 0 0 {name=VGS1 lab=VGS}
C {devices/code_shown.sym} -40 -290 0 0 {name=s1 only_toplevel=false 
value=
"
.option scale=1u
.dc VGS2 0 1.8 0.01
.control
  save all @m.xm1.msky130_fd_pr__nfet_01v8[gm] @m.xm1.msky130_fd_pr__nfet_01v8[vth]
  run
  print @m.xm1.msky130_fd_pr__nfet_01v8[vth]
  print @m.xm1.msky130_fd_pr__nfet_01v8[gm]
  print i(VDD)
  plot i(VDD)
.endc
"}
C {sky130_fd_pr/corner.sym} -50 -90 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/gnd.sym} -160 -20 0 0 {name=l1 lab=GND}

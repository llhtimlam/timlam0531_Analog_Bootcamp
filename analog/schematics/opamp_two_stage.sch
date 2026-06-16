v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Vbn} -60 60 0 0 0.4 0.4 {}
T {Vi} -50 -170 0 0 0.4 0.4 {}
N -340 -60 -320 -60 {lab=VIN_P}
N -80 -60 -60 -60 {lab=VIN_N}
N 200 -60 220 -60 {lab=vout}
N -160 90 160 90 {lab=#net1}
N -200 120 -200 160 {lab=VSS}
N -200 160 -0 160 {lab=VSS}
N 200 120 200 160 {lab=VSS}
N -0 160 200 160 {lab=VSS}
N 200 -180 200 60 {lab=vout}
N 190 -100 200 -100 {lab=vout}
N 110 -100 130 -100 {lab=#net2}
N 40 -100 50 -100 {lab=#net3}
N 40 -140 40 -100 {lab=#net3}
N -120 -140 40 -140 {lab=#net3}
N -120 -180 -120 -90 {lab=#net3}
N 40 -210 40 -140 {lab=#net3}
N 40 -210 160 -210 {lab=#net3}
N 200 -280 200 -240 {lab=VDD}
N -120 -280 -120 -240 {lab=VDD}
N -280 -280 -280 -240 {lab=VDD}
N -280 -280 200 -280 {lab=VDD}
N -0 -280 0 -260 {lab=VDD}
N -0 -200 0 90 {lab=#net1}
N -200 20 -200 60 {lab=#net4}
N -120 -30 -120 20 {lab=#net4}
N -280 -30 -280 20 {lab=#net4}
N -280 20 -120 20 {lab=#net4}
N -280 -180 -280 -90 {lab=#net5}
N -240 -210 -160 -210 {lab=#net5}
N -280 -140 -200 -140 {lab=#net5}
N -200 -210 -200 -140 {lab=#net5}
N -120 -210 -50 -210 {lab=VDD}
N -50 -280 -50 -210 {lab=VDD}
N -360 -210 -280 -210 {lab=VDD}
N -360 -280 -360 -210 {lab=VDD}
N -360 -280 -280 -280 {lab=VDD}
N 200 -210 280 -210 {lab=VDD}
N 280 -280 280 -210 {lab=VDD}
N 200 -280 280 -280 {lab=VDD}
N -280 -60 -120 -60 {lab=VSS}
N -240 90 -200 90 {lab=VSS}
N -240 -60 -240 90 {lab=VSS}
N -240 90 -240 160 {lab=VSS}
N -240 160 -200 160 {lab=VSS}
N 200 90 280 90 {lab=VSS}
N 280 90 280 160 {lab=VSS}
N 200 160 280 160 {lab=VSS}
N -0 160 0 180 {lab=VSS}
N -0 -300 -0 -280 {lab=VDD}
N -20 -230 -20 160 {lab=VSS}
N 80 -120 80 160 {lab=VSS}
N -0 150 -0 160 {lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -100 -60 0 1 {name=M1
L=0.3
W=2
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -300 -60 0 0 {name=M2
L=0.3
W=2
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -140 -210 0 0 {name=M3
L=0.3
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -260 -210 0 1 {name=M4
L=0.3
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 180 -210 0 0 {name=M5
L=0.3
W=2
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 180 90 0 0 {name=M6
L=1
W=2
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -180 90 0 1 {name=M7
L=1
W=2
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/res_high_po.sym} 80 -100 1 0 {name=R1
W=1
L=1
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 160 -100 1 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {devices/ipin.sym} -340 -60 0 0 {name=VIN_P lab=VIN_P}
C {devices/ipin.sym} -60 -60 0 1 {name=VIN_N lab=VIN_N}
C {devices/opin.sym} 220 -60 0 0 {name=vout lab=vout}
C {devices/ipin.sym} 0 -300 1 0 {name=VDD lab=VDD}
C {devices/ipin.sym} 0 180 3 0 {name=VSS lab=VSS}
C {sky130_fd_pr/res_high_po.sym} 0 -230 0 0 {name=R2
W=1
L=1
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} 0 120 0 0 {name=R3
W=1
L=1
model=res_high_po
spiceprefix=X
mult=1}

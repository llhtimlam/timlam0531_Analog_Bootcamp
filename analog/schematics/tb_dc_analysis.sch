v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -140 0 -120 {lab=GND}
N 0 -220 0 -200 {lab=VDD}
N 0 120 -0 140 {lab=VSS}
N -80 20 -60 20 {lab=#net1}
N -160 -20 -140 -20 {lab=#net2}
N -80 -20 -60 -20 {lab=#net3}
N -350 -20 -330 -20 {lab=GND}
N -270 -20 -160 -20 {lab=#net2}
N -220 -20 -220 -10 {lab=#net2}
N -220 50 -140 50 {lab=#net4}
N -140 20 -140 50 {lab=#net4}
N -0 200 0 220 {lab=GND}
N -0 -60 0 -40 {lab=VDD}
N -0 40 -0 60 {lab=VSS}
N 60 0 80 0 {lab=vout}
C {devices/vsource.sym} 0 -170 0 0 {value=1.8 name=VDD savecurrent=false}
C {devices/vsource.sym} 0 170 0 0 {value=0 name=VSS savecurrent=false}
C {devices/vdd.sym} 0 -210 0 0 {name=VDD1 lab=VDD}
C {devices/gnd.sym} 0 -120 0 0 {name=GND1 lab=GND}
C {devices/gnd.sym} 0 220 0 0 {name=GND lab=GND}
C {devices/gnd.sym} 0 120 2 0 {name=VSS1 lab=VSS}
C {devices/vsource.sym} -300 -20 1 0 {name=VCM value=0.9 savecurrent=false}
C {devices/gnd.sym} -350 -20 1 0 {name=GND2 lab=GND}
C {devices/vsource.sym} -220 20 0 0 {value=0 name=VDIFF savecurrent=false}
C {devices/code_shown.sym} 110 -180 0 0 {name=s1 only_toplevel=false
value="
.option scale=1u
.dc VDIFF -50m 50m 0.1m
.control
  run
  plot v(vout)
.endc
"
}
C {sky130_fd_pr/corner.sym} 100 80 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vdd.sym} 0 -60 0 0 {name=VDD2 lab=VDD}
C {devices/gnd.sym} 0 60 0 0 {name=VSS2 lab=VSS}
C {devices/opin.sym} 80 0 0 0 {name=vout lab=vout}
C {opamp_two_stage.sym} 0 0 0 0 {name=x1}
C {devices/res.sym} -110 -20 1 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -110 20 1 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}

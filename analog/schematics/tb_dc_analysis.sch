v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 180 -50 180 -30 {lab=GND}
N 180 30 180 50 {lab=VSS}
N -380 0 -360 0 {lab=GND}
N 180 110 180 130 {lab=GND}
N -0 -60 0 -40 {lab=VDD}
N -0 40 -0 60 {lab=VSS}
N 60 0 80 0 {lab=vout}
N -300 0 -280 0 {lab=#net1}
N -280 -80 -280 80 {lab=#net1}
N -100 -80 -60 -80 {lab=#net2}
N -80 -140 -80 -80 {lab=#net2}
N -80 -140 -30 -140 {lab=#net2}
N 30 -140 70 -140 {lab=vout}
N 70 -140 70 0 {lab=vout}
N -80 200 -80 240 {lab=GND}
N -80 80 -80 140 {lab=#net3}
N -100 80 -60 80 {lab=#net3}
N -200 80 -160 80 {lab=#net4}
N -280 80 -260 80 {lab=#net1}
N -60 20 -60 80 {lab=#net3}
N -60 -80 -60 -20 {lab=#net2}
N -280 -80 -160 -80 {lab=#net1}
N -220 80 -200 80 {lab=#net4}
N 180 -130 180 -110 {lab=VDD}
C {devices/vsource.sym} 180 -80 0 0 {value=1.8 name=VDD savecurrent=false}
C {devices/vsource.sym} 180 80 0 0 {value=0 name=VSS savecurrent=false}
C {devices/vdd.sym} 180 -130 0 0 {name=VDD1 lab=VDD}
C {devices/gnd.sym} 180 -30 0 0 {name=GND1 lab=GND}
C {devices/gnd.sym} 180 130 0 0 {name=GND lab=GND}
C {devices/gnd.sym} 180 30 2 0 {name=VSS1 lab=VSS}
C {devices/vsource.sym} -330 0 1 0 {name=VCM value=0.9 savecurrent=false}
C {devices/gnd.sym} -380 0 1 0 {name=GND2 lab=GND}
C {devices/vsource.sym} -230 80 1 1 {value=0 name=VDIFF savecurrent=false}
C {devices/code_shown.sym} 220 -160 0 0 {name=s1 only_toplevel=false
value="
.option scale=1u
.dc VDIFF 0.44695935 0.44695937 0.0000001m
.control
  run
  plot v(vout)
print v(x1.net1)
.endc
"
}
C {sky130_fd_pr/corner.sym} 220 40 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vdd.sym} 0 -60 0 0 {name=VDD2 lab=VDD}
C {devices/gnd.sym} 0 60 0 0 {name=VSS2 lab=VSS}
C {devices/opin.sym} 80 0 0 0 {name=vout lab=vout}
C {devices/res.sym} -130 -80 1 0 {name=R1
value=5000k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -130 80 1 0 {name=R2
value=5000k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -80 240 0 0 {name=GND3 lab=GND}
C {devices/res.sym} -80 170 2 0 {name=R3
value=5000k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 0 -140 3 0 {name=R4
value=5000k
footprint=1206
device=resistor
m=1}
C {opamp_two_stage.sym} 0 0 0 0 {name=x1}

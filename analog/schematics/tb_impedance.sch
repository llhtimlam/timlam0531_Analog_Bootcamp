v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -140 0 -120 {lab=GND}
N 0 -220 0 -200 {lab=VDD}
N 0 120 -0 140 {lab=VSS}
N -80 20 -60 20 {lab=vout}
N -80 -20 -60 -20 {lab=#net1}
N -0 200 0 220 {lab=GND}
N -0 -60 0 -40 {lab=VDD}
N -0 40 -0 60 {lab=VSS}
N -160 -20 -140 -20 {lab=GND}
N -160 20 -140 20 {lab=GND}
N 60 -0 80 0 {lab=vout}
N 140 0 160 0 {lab=GND}
N 70 0 70 90 {lab=vout}
N -60 90 70 90 {lab=vout}
N -60 20 -60 90 {lab=vout}
C {devices/vsource.sym} 0 -170 0 0 {value=1.8 name=VDD savecurrent=false}
C {devices/vsource.sym} 0 170 0 0 {value=0 name=VSS savecurrent=false}
C {devices/vdd.sym} 0 -210 0 0 {name=VDD1 lab=VDD}
C {devices/gnd.sym} 0 -120 0 0 {name=GND1 lab=GND}
C {devices/gnd.sym} 0 220 0 0 {name=GND lab=GND}
C {devices/gnd.sym} 0 120 2 0 {name=VSS1 lab=VSS}
C {devices/code_shown.sym} 180 -190 0 0 {name=s1 only_toplevel=false
value="
.option scale=1u
.ac dec 10 1 100meg
.control
  run
  
  * Plot Input Impedance magnitude (1 Volt AC / Input Source Current)
  let zin = 1 / mag(i(VIN_P))
  plot zin
  
  * Plot Output Impedance magnitude (Output AC Voltage / Output Current Source)
  let zout = mag(v(vout))
  plot zout
.endc
"
}
C {sky130_fd_pr/corner.sym} 100 80 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vdd.sym} 0 -60 0 0 {name=VDD2 lab=VDD}
C {devices/gnd.sym} 0 60 0 0 {name=VSS2 lab=VSS}
C {devices/opin.sym} 70 0 3 0 {name=vout lab=vout}
C {opamp_two_stage.sym} 0 0 0 0 {name=x1}
C {devices/vsource.sym} -110 20 1 0 {value=0.9 name=VIN_N savecurrent=false}
C {devices/gnd.sym} -160 -20 1 0 {name=GND2 lab=GND}
C {devices/gnd.sym} -160 20 1 0 {name=GND3 lab=GND}
C {devices/isource.sym} 110 0 3 1 {name=I1 value="dc 0 ac 1"}
C {devices/gnd.sym} 160 0 3 1 {name=GND4 lab=GND}
C {devices/vsource.sym} -110 -20 1 0 {value="dc 0.9 ac 1" name=VIN_P savecurrent=false}

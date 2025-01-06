v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 260 30 260 200 {lab=VDD}
N 260 380 260 480 {lab=#net1}
N 160 350 220 350 {lab=vbias1}
N 110 30 110 90 {lab=vbias2}
N 30 410 260 410 {lab=#net1}
N -180 410 -30 410 {lab=vin}
N -100 230 -30 230 {lab=vin}
N -100 230 -100 410 {lab=vin}
N -180 470 20 470 {lab=ibias}
N 20 470 20 480 {lab=ibias}
N 20 470 100 470 {lab=ibias}
N 100 470 100 510 {lab=ibias}
N 60 510 100 510 {lab=ibias}
N 100 510 220 510 {lab=ibias}
N 260 540 260 630 {lab=GND}
N 260 510 300 510 {lab=GND}
N 300 510 300 570 {lab=GND}
N 260 570 300 570 {lab=GND}
N -30 510 20 510 {lab=GND}
N -30 570 260 570 {lab=GND}
N -30 510 -30 570 {lab=GND}
N 20 540 20 570 {lab=GND}
N 260 230 300 230 {lab=GND}
N 260 350 300 350 {lab=GND}
N -600 340 -600 380 {lab=VDD}
N -550 340 -550 380 {lab=vin}
N -550 440 -550 470 {lab=GND}
N -600 440 -600 470 {lab=GND}
N -650 440 -650 470 {lab=GND}
N -710 440 -710 470 {lab=GND}
N -480 340 -480 380 {lab=VDD}
N -480 440 -480 470 {lab=ibias}
N -650 340 -650 380 {lab=vbias2}
N -710 340 -710 380 {lab=vbias1}
N 30 230 220 230 {lab=#net2}
N 110 150 110 230 {lab=#net2}
N 260 260 260 320 {lab=vout}
N 300 350 300 510 {lab=GND}
N 300 230 300 350 {lab=GND}
N -380 440 -380 470 {lab=GND}
N -380 340 -380 380 {lab=vout}
N 260 290 350 290 {lab=vout}
C {devices/code.sym} -760 60 0 0 {name=MF20_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/SOI_CMOS"
spice_ignore=false}
C {devices/vsource.sym} -710 410 0 0 {name=vbias1 value=2.0 savecurrent=false}
C {devices/vsource.sym} -650 410 0 0 {name=vbias2 value=3.3 savecurrent=false}
C {devices/vsource.sym} -600 410 0 0 {name=VDD value=3.3 savecurrent=false}
C {devices/vsource.sym} -550 410 0 0 {name=vin value="DC 1.65 AC 1" savecurrent=false}
C {devices/lab_pin.sym} 110 30 0 0 {name=p1 sig_type=std_logic lab=vbias2}
C {devices/lab_pin.sym} 160 350 0 0 {name=p2 sig_type=std_logic lab=vbias1}
C {devices/lab_pin.sym} -180 470 0 0 {name=p4 sig_type=std_logic lab=ibias}
C {devices/lab_pin.sym} -180 410 0 0 {name=p5 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 350 290 0 1 {name=p6 sig_type=std_logic lab=vout}
C {devices/vdd.sym} 260 30 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 260 630 0 0 {name=l2 lab=GND}
C {devices/isource.sym} -480 410 0 0 {name=ibias value=1000u}
C {devices/code_shown.sym} -580 70 0 0 {name=ngspice only_toplevel=false value=".option savecurrent
.control
save all

ac dec 20 1e6 1e8
plot vdb(vout)
.endc"}
C {devices/gnd.sym} -600 470 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -550 470 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -710 470 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} -650 470 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} -600 340 0 0 {name=l7 lab=VDD}
C {devices/vdd.sym} -480 340 0 0 {name=l8 lab=VDD}
C {devices/lab_pin.sym} -550 340 0 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -480 470 0 0 {name=p7 sig_type=std_logic lab=ibias}
C {devices/lab_pin.sym} -710 340 0 0 {name=p8 sig_type=std_logic lab=vbias1}
C {devices/lab_pin.sym} -650 340 0 0 {name=p9 sig_type=std_logic lab=vbias2}
C {NMOS_MIN.sym} 220 230 0 0 {name=M1 model=nch w=10u l=10u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 220 350 0 0 {name=M2 model=nch w=10u l=10u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 220 510 0 0 {name=M3 model=nch w=10u l=10u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 60 510 0 1 {name=M4 model=nch w=10u l=10u as=0 ps=0 ad=0 pd=0 m=1}
C {devices/capa-2.sym} 0 410 3 1 {name=C4
m=1
value=3.312p
footprint=1206
device=polarized_capacitor}
C {devices/res.sym} 110 120 0 0 {name=R1
value=28.8k
footprint=1206
device=resistor
m=1}
C {devices/capa-2.sym} -380 410 0 0 {name=C1
m=1
value=10f
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} -380 470 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -380 340 0 1 {name=p10 sig_type=std_logic lab=vout}
C {devices/capa-2.sym} 0 230 3 1 {name=C11
m=1
value=3.312p
footprint=1206
device=polarized_capacitor}

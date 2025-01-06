v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 260 30 260 200 {lab=VDD}
N 260 260 260 320 {lab=vout}
N 260 380 260 480 {lab=#net1}
N 160 350 220 350 {lab=vbias1}
N 30 230 220 230 {lab=#net2}
N 110 150 110 230 {lab=#net2}
N 30 410 260 410 {lab=#net1}
N -180 410 -30 410 {lab=Vin}
N -100 230 -30 230 {lab=Vin_dummy}
N -180 470 20 470 {lab=ibias}
N 20 470 20 480 {lab=ibias}
N 20 470 100 470 {lab=ibias}
N 100 470 100 510 {lab=ibias}
N 60 510 100 510 {lab=ibias}
N 100 510 220 510 {lab=ibias}
N 260 540 260 630 {lab=VSS}
N 260 510 300 510 {lab=VSS}
N 300 510 300 570 {lab=VSS}
N 260 570 300 570 {lab=VSS}
N -30 510 20 510 {lab=VSS}
N -30 570 260 570 {lab=VSS}
N -30 510 -30 570 {lab=VSS}
N 20 540 20 570 {lab=VSS}
N 260 230 300 230 {lab=VSS}
N 260 350 290 350 {lab=VSS}
N 290 350 290 410 {lab=VSS}
N 290 410 290 510 {lab=VSS}
N 290 350 300 350 {lab=VSS}
N 300 230 300 350 {lab=VSS}
N 260 290 440 290 {lab=vout}
N 110 60 110 90 {lab=vbias2}
N -180 230 -100 230 {lab=Vin_dummy}
C {iopin.sym} 110 60 0 1 {name=p0 lab=vbias2
}
C {iopin.sym} -180 470 2 0 {name=p2 lab=ibias
}
C {iopin.sym} 260 30 0 1 {name=p3 lab=VDD
}
C {iopin.sym} -180 410 0 1 {name=p4 lab=Vin
}
C {mosfets.sym} -120 -20 0 0 {name=x1}
C {resisters.sym} 200 -20 0 0 {name=x3}
C {RES_MIN.sym} 110 90 0 0 {name=R1
value=28.8k
footprint=1206
device=resistor
m=1}
C {CAP_MIN.sym} -30 230 3 1 {name=C1
m=1
value=3.312p
footprint=1206
device=ceramic}
C {CAP_MIN.sym} -30 410 3 1 {name=C2
m=1
value=3.312p
footprint=1206
device=ceramic}
C {iopin.sym} 260 630 0 1 {name=p1 lab=VSS
}
C {iopin.sym} 160 350 2 0 {name=p5 lab=vbias1
}
C {iopin.sym} 440 290 0 0 {name=p6 lab=vout
}
C {NMOS_MIN.sym} 220 230 0 0 {name=M1 model=nch w=10u l=10u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 220 350 0 0 {name=M2 model=nch w=10u l=10u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 220 510 0 0 {name=M3 model=nch w=10u l=10u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 60 510 0 1 {name=M4 model=nch w=10u l=10u as=0 ps=0 ad=0 pd=0 m=1}
C {iopin.sym} -180 230 0 1 {name=p7 lab=Vin_dummy
}

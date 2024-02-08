* File: /home/012/k/kt/ktd170030/cad/gf65/NOR2_PEX/nor2.pex.sp
* Created: Thu Oct 26 14:25:12 2023
* Program "Calibre xRC"
* Version "v2013.2_18.13"
* 
.include "/home/012/k/kt/ktd170030/cad/gf65/NOR2_PEX/nor2.pex.sp.pex"
.subckt nor2  VSS OUT VDD A B
* 
* B	B
* A	A
* VDD	VDD
* OUT	OUT
* VSS	VSS
XD0_noxref N_VSS_D0_noxref_pos N_VDD_D0_noxref_neg DIODENWX  AREA=4.75065e-12
+ PERIM=8.832e-06
XMMN0 N_OUT_MMN0_d N_A_MMN0_g N_VSS_MMN0_s N_VSS_D0_noxref_pos NFET L=6.5e-08
+ W=5.6e-07 AD=1.246e-13 AS=1.3552e-13 PD=1.005e-06 PS=1.604e-06 NRD=0.178571
+ NRS=0.178571 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=2.42e-07
+ SB=7.41e-07 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=2.99e-15
+ PANW7=1.3e-14 PANW8=1.3e-14 PANW9=7.41e-15 PANW10=0
XMMN2 N_OUT_MMN0_d N_B_MMN2_g N_VSS_MMN2_s N_VSS_D0_noxref_pos NFET L=6.5e-08
+ W=5.6e-07 AD=1.246e-13 AS=1.2936e-13 PD=1.005e-06 PS=1.582e-06 NRD=0.616071
+ NRS=0.196429 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=7.52e-07
+ SB=2.31e-07 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=2.99e-15
+ PANW7=1.3e-14 PANW8=1.3e-14 PANW9=7.41e-15 PANW10=0
XMMP0 NET16 N_A_MMP0_g N_VDD_MMP0_s N_VDD_D0_noxref_neg PFET L=6.5e-08
+ W=9.6e-07 AD=2.136e-13 AS=2.3232e-13 PD=1.405e-06 PS=2.404e-06 NRD=0.231771
+ NRS=0.104167 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=2.42e-07
+ SB=7.41e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.885e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=1.802e-14 PANW7=6.388e-14 PANW8=1.3e-14 PANW9=9.4965e-14 PANW10=3.9e-14
XMMP1 N_OUT_MMP1_d N_B_MMP1_g NET16 N_VDD_D0_noxref_neg PFET L=6.5e-08
+ W=9.6e-07 AD=2.2176e-13 AS=2.136e-13 PD=2.382e-06 PS=1.405e-06 NRD=0.114583
+ NRS=0.231771 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=7.52e-07
+ SB=2.31e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.885e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=7.54e-14 PANW8=1.3e-14 PANW9=9.4965e-14 PANW10=3.9e-14
c_123 NET16 0 1.35129e-19
*
.include "/home/012/k/kt/ktd170030/cad/gf65/NOR2_PEX/nor2.pex.sp.NOR2.pxi"
*
.ends
*
*

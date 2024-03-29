* File: /home/012/k/kt/ktd170030/cad/gf65/NAND2_PEX/nand2.pex.sp
* Created: Thu Oct 26 19:57:26 2023
* Program "Calibre xRC"
* Version "v2013.2_18.13"
* 
.include "/home/012/k/kt/ktd170030/cad/gf65/NAND2_PEX/nand2.pex.sp.pex"
.subckt nand2  OUT VSS VDD A B
* 
* B	B
* A	A
* VDD	VDD
* VSS	VSS
* OUT	OUT
XD0_noxref N_VSS_D0_noxref_pos N_VDD_D0_noxref_neg DIODENWX  AREA=4.97372e-12
+ PERIM=8.928e-06
XMMN2 N_OUT_MMN2_d N_A_MMN2_g NET5 N_VSS_D0_noxref_pos NFET L=6.5e-08 W=5.6e-07
+ AD=1.8984e-13 AS=1.106e-13 PD=1.798e-06 PS=9.55e-07 NRD=0.317857 NRS=0.352679
+ M=1 NF=1 CNR_SWITCH=1 PCCRIT=0 PAR=1 PTWELL=0 SA=3.39e-07 SB=7.34e-07 SD=0
+ PANW1=6.175e-15 PANW2=3.25e-15 PANW3=3.25e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.0725e-14 PANW8=0 PANW9=0 PANW10=0
XMMN3 NET5 N_B_MMN3_g N_VSS_MMN3_s N_VSS_D0_noxref_pos NFET L=6.5e-08
+ W=5.6e-07 AD=1.106e-13 AS=1.5344e-13 PD=9.55e-07 PS=1.668e-06 NRD=0.352679
+ NRS=0.289286 M=1 NF=1 CNR_SWITCH=1 PCCRIT=0 PAR=1 PTWELL=0 SA=7.99e-07
+ SB=2.74e-07 SD=0 PANW1=6.175e-15 PANW2=3.25e-15 PANW3=3.25e-15 PANW4=3.25e-15
+ PANW5=3.25e-15 PANW6=6.5e-15 PANW7=1.0725e-14 PANW8=0 PANW9=0 PANW10=0
XMMP0 N_OUT_MMP0_d N_A_MMP0_g N_VDD_MMP0_s N_VDD_D0_noxref_neg PFET L=6.5e-08
+ W=9.6e-07 AD=1.896e-13 AS=3.2544e-13 PD=1.355e-06 PS=2.598e-06 NRD=0.194792
+ NRS=0.185417 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=3.39e-07
+ SB=7.34e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.885e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.78e-14 PANW8=7.1185e-14 PANW9=1.09915e-13
+ PANW10=3.5815e-14
XMMP1 N_VDD_MMP1_d N_B_MMP1_g N_OUT_MMP0_d N_VDD_D0_noxref_neg PFET L=6.5e-08
+ W=9.6e-07 AD=2.6304e-13 AS=1.896e-13 PD=2.468e-06 PS=1.355e-06 NRD=0.16875
+ NRS=0.216667 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=7.99e-07
+ SB=2.74e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.885e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=7.5985e-14 PANW9=1.09915e-13
+ PANW10=3.5815e-14
*
.include "/home/012/k/kt/ktd170030/cad/gf65/NAND2_PEX/nand2.pex.sp.NAND2.pxi"
*
.ends
*
*

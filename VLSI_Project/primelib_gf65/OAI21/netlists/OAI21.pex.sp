* File: /home/012/k/kt/ktd170030/cad/gf65/OAI21_PEX/OAI21.pex.sp
* Created: Thu Oct 26 18:46:15 2023
* Program "Calibre xRC"
* Version "v2013.2_18.13"
* 
.include "/home/012/k/kt/ktd170030/cad/gf65/OAI21_PEX/OAI21.pex.sp.pex"
.subckt OAI21  VSS OUT VDD A B C
* 
* C	C
* B	B
* A	A
* VDD	VDD
* OUT	OUT
* VSS	VSS
XD0_noxref N_VSS_D0_noxref_pos N_VDD_D0_noxref_neg DIODENWX  AREA=5.43875e-12
+ PERIM=9.33e-06
XMMN2 N_NET14_MMN2_d N_A_MMN2_g N_VSS_MMN2_s N_VSS_D0_noxref_pos NFET
+ L=6.5e-08 W=5.6e-07 AD=1.3552e-13 AS=1.246e-13 PD=1.604e-06 PS=1.005e-06
+ NRD=0.191071 NRS=0.605357 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0
+ SA=2.42e-07 SB=1.261e-06 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0
+ PANW6=3.12e-15 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=7.28e-15 PANW10=0
XMMN1 N_NET14_MMN1_d N_B_MMN1_g N_VSS_MMN2_s N_VSS_D0_noxref_pos NFET
+ L=6.5e-08 W=5.6e-07 AD=1.274e-13 AS=1.246e-13 PD=1.015e-06 PS=1.005e-06
+ NRD=0.414286 NRS=0.189286 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0
+ SA=7.52e-07 SB=7.51e-07 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0
+ PANW6=3.12e-15 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=7.28e-15 PANW10=0
XMMN0 N_OUT_MMN0_d N_C_MMN0_g N_NET14_MMN1_d N_VSS_D0_noxref_pos NFET L=6.5e-08
+ W=5.6e-07 AD=1.2936e-13 AS=1.274e-13 PD=1.582e-06 PS=1.015e-06 NRD=0.196429
+ NRS=0.398214 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=1.272e-06
+ SB=2.31e-07 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=3.12e-15
+ PANW7=1.3e-14 PANW8=1.3e-14 PANW9=7.28e-15 PANW10=0
XMMP7 NET20 N_A_MMP7_g N_VDD_MMP7_s N_VDD_D0_noxref_neg PFET L=6.5e-08
+ W=9.6e-07 AD=2.136e-13 AS=2.3232e-13 PD=1.405e-06 PS=2.404e-06 NRD=0.231771
+ NRS=0.104167 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=2.42e-07
+ SB=1.261e-06 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=1.2235e-14
+ PANW7=6.7715e-14 PANW8=2.6e-14 PANW9=5.2e-14 PANW10=9.165e-14
XMMP4 N_OUT_MMP4_d N_B_MMP4_g NET20 N_VDD_D0_noxref_neg PFET L=6.5e-08
+ W=9.6e-07 AD=2.184e-13 AS=2.136e-13 PD=1.415e-06 PS=1.405e-06 NRD=0.260417
+ NRS=0.231771 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=7.52e-07
+ SB=7.51e-07 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=7.15e-16
+ PANW7=1.6835e-14 PANW8=2.6e-14 PANW9=1.768e-13 PANW10=2.925e-14
XMMP0 N_OUT_MMP4_d N_C_MMP0_g N_VDD_MMP0_s N_VDD_D0_noxref_neg PFET L=6.5e-08
+ W=9.6e-07 AD=2.184e-13 AS=2.2176e-13 PD=1.415e-06 PS=2.382e-06 NRD=0.213542
+ NRS=0.1125 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=1.272e-06
+ SB=2.31e-07 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=7.15e-16
+ PANW7=7.9235e-14 PANW8=2.6e-14 PANW9=5.2e-14 PANW10=9.165e-14
*
.include "/home/012/k/kt/ktd170030/cad/gf65/OAI21_PEX/OAI21.pex.sp.OAI21.pxi"
*
.ends
*
*

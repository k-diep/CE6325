* File: /home/012/k/kt/ktd170030/cad/gf65/AOI22_PEX/AOI22.pex.sp
* Created: Thu Oct 26 19:01:12 2023
* Program "Calibre xRC"
* Version "v2013.2_18.13"
* 
.include "/home/012/k/kt/ktd170030/cad/gf65/AOI22_PEX/AOI22.pex.sp.pex"
.subckt AOI22  VSS OUT VDD A B C D
* 
* D	D
* C	C
* B	B
* A	A
* VDD	VDD
* OUT	OUT
* VSS	VSS
XD0_noxref N_VSS_D0_noxref_pos N_VDD_D0_noxref_neg DIODENWX  AREA=9.24901e-12
+ PERIM=1.2386e-05
XMMN0 NET024 N_A_MMN0_g N_VSS_MMN0_s N_VSS_D0_noxref_pos NFET L=6.5e-08
+ W=5.6e-07 AD=1.246e-13 AS=1.3552e-13 PD=1.005e-06 PS=1.604e-06 NRD=0.397321
+ NRS=0.178571 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=2.42e-07
+ SB=1.969e-06 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=3.12e-15
+ PANW7=1.3e-14 PANW8=1.3e-14 PANW9=7.28e-15 PANW10=0
XMMN1 N_OUT_MMN1_d N_B_MMN1_g NET024 N_VSS_D0_noxref_pos NFET L=6.5e-08
+ W=5.6e-07 AD=1.274e-13 AS=1.246e-13 PD=1.015e-06 PS=1.005e-06 NRD=0.285714
+ NRS=0.397321 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=7.52e-07
+ SB=1.459e-06 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=3.12e-15
+ PANW7=1.3e-14 PANW8=1.3e-14 PANW9=7.28e-15 PANW10=0
XMMN3 N_OUT_MMN1_d N_C_MMN3_g NET023 N_VSS_D0_noxref_pos NFET L=6.5e-08
+ W=5.6e-07 AD=1.274e-13 AS=1.792e-13 PD=1.015e-06 PS=1.2e-06 NRD=0.526786
+ NRS=0.571429 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=1.272e-06
+ SB=9.39e-07 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=3.12e-15
+ PANW7=1.3e-14 PANW8=1.3e-14 PANW9=7.28e-15 PANW10=0
XMMN2 NET023 N_D_MMN2_g N_VSS_MMN2_s N_VSS_D0_noxref_pos NFET L=6.5e-08
+ W=5.6e-07 AD=1.792e-13 AS=1.3104e-13 PD=1.2e-06 PS=1.588e-06 NRD=0.571429
+ NRS=0.178571 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=1.977e-06
+ SB=2.34e-07 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=3.12e-15
+ PANW7=1.3e-14 PANW8=1.3e-14 PANW9=7.28e-15 PANW10=0
XMMP0 N_NET3_MMP0_d N_A_MMP0_g N_VDD_MMP0_s N_VDD_D0_noxref_neg PFET L=6.5e-08
+ W=9.6e-07 AD=2.5824e-13 AS=2.136e-13 PD=2.458e-06 PS=1.405e-06 NRD=0.129167
+ NRS=0.201042 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=2.69e-07
+ SB=1.969e-06 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=0
+ PANW7=9.36e-15 PANW8=8.203e-14 PANW9=5.2e-14 PANW10=4.381e-14
XMMP4 N_NET3_MMP4_d N_B_MMP4_g N_VDD_MMP0_s N_VDD_D0_noxref_neg PFET L=6.5e-08
+ W=9.6e-07 AD=2.184e-13 AS=2.136e-13 PD=1.415e-06 PS=1.405e-06 NRD=0.213542
+ NRS=0.2625 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=7.79e-07
+ SB=1.459e-06 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=0
+ PANW7=9.36e-15 PANW8=1.963e-14 PANW9=1.144e-13 PANW10=4.381e-14
XMMP5 N_OUT_MMP5_d N_C_MMP5_g N_NET3_MMP4_d N_VDD_D0_noxref_neg PFET L=6.5e-08
+ W=9.6e-07 AD=3.072e-13 AS=2.184e-13 PD=1.6e-06 PS=1.415e-06 NRD=0.114583
+ NRS=0.260417 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=1.299e-06
+ SB=9.39e-07 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=0
+ PANW7=9.36e-15 PANW8=1.963e-14 PANW9=5.2e-14 PANW10=1.6861e-13
XMMP7 N_OUT_MMP5_d N_D_MMP7_g N_NET3_MMP7_s N_VDD_D0_noxref_neg PFET L=6.5e-08
+ W=9.6e-07 AD=3.072e-13 AS=2.2464e-13 PD=1.6e-06 PS=2.388e-06 NRD=0.552083
+ NRS=0.104167 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=2.004e-06
+ SB=2.34e-07 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=0
+ PANW7=9.36e-15 PANW8=1.963e-14 PANW9=1.144e-13 PANW10=4.381e-14
*
.include "/home/012/k/kt/ktd170030/cad/gf65/AOI22_PEX/AOI22.pex.sp.AOI22.pxi"
*
.ends
*
*

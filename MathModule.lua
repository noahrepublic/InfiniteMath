local Number = {
	
}
Number.__index = Number

----- Private variables -----
local THRESHOLD = 10
local suffixes = {'K','M','B','T','Q','QN','S','SP','O','N','D','UD','DD','TD','QD','QND','SD','SPD','OD','ND','V','UV','DV','TV','QV','QNT','SV','SPV','OV','NV','TG','UTG','DTG','TTG','QTG','QNTG','STG','SPTG','OTG','NTG','QG','UQG','DQG','TQG','QQG','QNQG','SQG','SPQG','OQG','NQG','QQ','UQQ','DQQ','TQQ','QQQ','QNQQ','SQQ','SPQQ','OQQ','NQQ','SX','USX','DSX','TSX','QSX','QNSX','SSX','SPSX','OSX','NSX','SG','USG','DSG','TSG','QSG','QNSG','SSG','SPSG','OSG','NSG','OG','UOG','DOG','TOG','QOG','QNOG','SOG','SPOG','OOG','NOG','NG','UNG','DNG','TNG','QNG','QNNG','SNG','SPNG','ONG','NNG','C','UC','DC','TC','QC','QNC','SC','SPC','OC','NC','DN','UDN','DDN','TDN','QDN','QNDN','SDN','SPDN','ODN','NDN','VC','UVC','DVC','TVC','QVC','QNVC','SVC','SPVC','OVC','NVC','TN','UTN','DTN','TTN','QTN','QNTN','STN','SPTN','OTN','NTN','QT','UQT','DQT','TQT','QQT','QNQT','SQT','SPQT','OQT','NQT','QL','UQL','DQL','TQL','QQL','QNQL','SQL','SPQL','OQL','NQL','SN','USN','DSN','TSN','QSN','QNSN','SSN','SPSN','OSN','NSN','ST','UST','DST','TST','QST','QNST','SST','SPST','OST','NST','ON','UON','DON','TON','QON','QNON','SON','SPON','OON','NON','NN','UNN','DNN','TNN','QNN','QNNN','SNN','SPNN','ONN','NNN','DT','UDT','DDT','TDT','QDT','QNDT','SDT','SPDT','ODT','NDT','DL','UDL','DDL','TDL','QDL','QNDL','SDL','SPDL','ODL','NDL','VD','UVD','DVD','TVD','QVD','QNVD','SVD','SPVD','OVD','NVD','TT','UTT','DTT','TTT','QTT','QNTT','STT','SPTT','OTT','NTT','QU','UQU','DQU','TQU','QQU','QNQU','SQU','SPQU','OQU','NQU','QI','UQI','DQI','TQI','QQI','QNQI','SQI','SPQI','OQI','NQI','SL','USL','DSL','TSL','QSL','QNSL','SSL','SPSL','OSL','NSL','SE','USE','DSE','TSE','QSE','QNSE','SSE','SPSE','OSE','NSE','OT','UOT','DOT','TOT','QOT','QNOT','SOT','SPOT','OOT','NOT','NT','UNT','DNT','TNT','QNT','QNNT','SNT','SPNT','ONT','NNT','TR','UTR','DTR','TTR','QTR','QNTR','STR','SPTR','OTR','NTR','DR','UDR','DDR','TDR','QDR','QNDR','SDR','SPDR','ODR','NDR','VT','UVT','DVT','TVT','QVT','QNVT','SVT','SPVT','OVT','NVT','TL','UTL','DTL','TTL','QTL','QNTL','STL','SPTL','OTL','NTL','QA','UQA','DQA','TQA','QQA','QNQA','SQA','SPQA','OQA','NQA','QE','UQE','DQE','TQE','QQE','QNQE','SQE','SPQE','OQE','NQE','SR','USR','DSR','TSR','QSR','QNSR','SSR','SPSR','OSR','NSR','SU','USU','DSU','TSU','QSU','QNSU','SSU','SPSU','OSU','NSU','OR','UOR','DOR','TOR','QOR','QNOR','SOR','SPOR','OOR','NOR','NR','UNR','DNR','TNR','QNR','QNNR','SNR','SPNR','ONR','NNR','QR','UQR','DQR','TQR','QQR','QNQR','SQR','SPQR','OQR','NQR','DQ','UDQ','DDQ','TDQ','QDQ','QNDQ','SDQ','SPDQ','ODQ','NDQ','VQ','UVQ','DVQ','TVQ','QVQ','QNVQ','SVQ','SPVQ','OVQ','NVQ','TQ','UTQ','DTQ','TTQ','QTQ','QNTQ','STQ','SPTQ','OTQ','NTQ','QO','UQO','DQO','TQO','QQO','QNQO','SQO','SPQO','OQO','NQO','QQD','UQQD','DQQD','TQQD','QQQD','QNQQD','SQQD','SPQQD','OQQD','NQQD','SQ','USQ','DSQ','TSQ','QSQ','QNSQ','SSQ','SPSQ','OSQ','NSQ','SA','USA','DSA','TSA','QSA','QNSA','SSA','SPSA','OSA','NSA','OQ','UOQ','DOQ','TOQ','QOQ','QNOQ','SOQ','SPOQ','OOQ','NOQ','NQ','UNQ','DNQ','TNQ','QNQ','QNNQ','SNQ','SPNQ','ONQ','NNQ','QGN','UQGN','DQGN','TQGN','QQGN','QNQGN','SQGN','SPQGN','OQGN','NQGN','DG','UDG','DDG','TDG','QDG','QNDG','SDG','SPDG','ODG','NDG','VG','UVG','DVG','TVG','QVG','QNVG','SVG','SPVG','OVG','NVG','TI','UTI','DTI','TTI','QTI','QNTI','STI','SPTI','OTI','NTI','QDQ','UQDQ','DQDQ','TQDQ','QQDQ','QNQDQ','SQDQ','SPQDQ','OQDQ','NQDQ','QGQ','UQGQ','DQGQ','TQGQ','QQGQ','QNQGQ','SQGQ','SPQGQ','OQGQ','NQGQ','SI','USI','DSI','TSI','QSI','QNSI','SSI','SPSI','OSI','NSI','SO','USO','DSO','TSO','QSO','QNSO','SSO','SPSO','OSO','NSO','OL','UOL','DOL','TOL','QOL','QNOL','SOL','SPOL','OOL','NOL','NL','UNL','DNL','TNL','QNL','QNNL','SNL','SPNL','ONL','NNL','SS','USS','DSS','TSS','QSS','QNSS','SSS','SPSS','OSS','NSS','DS','UDS','DDS','TDS','QDS','QNDS','SDS','SPDS','ODS','NDS','VS','UVS','DVS','TVS','QVS','QNVS','SVS','SPVS','OVS','NVS','TS','UTS','DTS','TTS','QTS','QNTS','STS','SPTS','OTS','NTS','QS','UQS','DQS','TQS','QQS','QNQS','SQS','SPQS','OQS','NQS','QGS','UQGS','DQGS','TQGS','QQGS','QNQGS','SQGS','SPQGS','OQGS','NQGS','SXS','USXS','DSXS','TSXS','QSXS','QNSXS','SSXS','SPSXS','OSXS','NSXS','SPS','USPS','DSPS','TSPS','QSPS','QNSPS','SSPS','SPSPS','OSPS','NSPS','OS','UOS','DOS','TOS','QOS','QNOS','SOS','SPOS','OOS','NOS','NS','UNS','DNS','TNS','QNS','QNNS','SNS','SPNS','ONS','NNS','SPG','USPG','DSPG','TSPG','QSPG','QNSPG','SSPG','SPSPG','OSPG','NSPG','DP','UDP','DDP','TDP','QDP','QNDP','SDP','SPDP','ODP','NDP','VP','UVP','DVP','TVP','QVP','QNVP','SVP','SPVP','OVP','NVP','TP','UTP','DTP','TTP','QTP','QNTP','STP','SPTP','OTP','NTP','QP','UQP','DQP','TQP','QQP','QNQP','SQP','SPQP','OQP','NQP','QGP','UQGP','DQGP','TQGP','QQGP','QNQGP','SQGP','SPQGP','OQGP','NQGP','SGS','USGS','DSGS','TSGS','QSGS','QNSGS','SSGS','SPSGS','OSGS','NSGS','SSP','USSP','DSSP','TSSP','QSSP','QNSSP','SSSP','SPSSP','OSSP','NSSP','OP','UOP','DOP','TOP','QOP','QNOP','SOP','SPOP','OOP','NOP','NP','UNP','DNP','TNP','QNP','QNNP','SNP','SPNP','ONP','NNP','OI','UOI','DOI','TOI','QOI','QNOI','SOI','SPOI','OOI','NOI','DO','UDO','DDO','TDO','QDO','QNDO','SDO','SPDO','ODO','NDO','VO','UVO','DVO','TVO','QVO','QNVO','SVO','SPVO','OVO','NVO','TO','UTO','DTO','TTO','QTO','QNTO','STO','SPTO','OTO','NTO','QGO','UQGO','DQGO','TQGO','QQGO','QNQGO','SQGO','SPQGO','OQGO','NQGO','QOC','UQOC','DQOC','TQOC','QQOC','QNQOC','SQOC','SPQOC','OQOC','NQOC','SXO','USXO','DSXO','TSXO','QSXO','QNSXO','SSXO','SPSXO','OSXO','NSXO','SPO','USPO','DSPO','TSPO','QSPO','QNSPO','SSPO','SPSPO','OSPO','NSPO','OO','UOO','DOO','TOO','QOO','QNOO','SOO','SPOO','OOO','NOO','NO','UNO','DNO','TNO','QNO','QNNO','SNO','SPNO','ONO','NNO','NE','UNE','DNE','TNE','QNE','QNNE','SNE','SPNE','ONE','NNE','DE','UDE','DDE','TDE','QDE','QNDE','SDE','SPDE','ODE','NDE','VN','UVN','DVN','TVN','QVN','QNVN','SVN','SPVN','OVN','NVN','TE','UTE','DTE','TTE','QTE','QNTE','STE','SPTE','OTE','NTE','QGG','UQGG','DQGG','TQGG','QQGG','QNQGG','SQGG','SPQGG','OQGG','NQGG','QQN','UQQN','DQQN','TQQN','QQQN','QNQQN','SQQN','SPQQN','OQQN','NQQN','SXN','USXN','DSXN','TSXN','QSXN','QNSXN','SSXN','SPSXN','OSXN','NSXN','SPN','USPN','DSPN','TSPN','QSPN','QNSPN','SSPN','SPSPN','OSPN','NSPN','OE','UOE','DOE','TOE','QOE','QNOE','SOE','SPOE','OOE','NOE','NA','UNA','DNA','TNA','QNA','QNNA','SNA','SPNA','ONA','NNA','MN','MM','MB','MT','MQ','MQN','MS','MSP','MO','MNN','MD','MUD','MDD','MTD','MQD','MQND','MSD','MSPD','MOD','MND','MV','MUV','MDV','MTV','MQV','MQNT','MSV','MSPV','MOV','MNV','MTG','MUTG','MDTG','MTTG','MQTG','MQNTG','MSTG','MSPTG','MOTG','MNTG','MQG','MUQG','MDQG','MTQG','MQQG','MQNQG','MSQG','MSPQG','MOQG','MNQG','MQQ','MUQQ','MDQQ','MTQQ','MQQQ','MQNQQ','MSQQ','MSPQQ','MOQQ','MNQQ','MSX','MUSX','MDSX','MTSX','MQSX','MQNSX','MSSX','MSPSX','MOSX','MNSX','MSG','MUSG','MDSG','MTSG','MQSG','MQNSG','MSSG','MSPSG','MOSG','MNSG','MOG','MUOG','MDOG','MTOG','MQOG','MQNOG','MSOG','MSPOG','MOOG','MNOG','MNG','MUNG','MDNG','MTNG','MQNG','MQNNG','MSNG','MSPNG','MONG','MNNG','MC','MUC','MDC','MTC','MQC','MQNC','MSC','MSPC','MOC','MNC','MDN','MUDN','MDDN','MTDN','MQDN','MQNDN','MSDN','MSPDN','MODN','MNDN','MVC','MUVC','MDVC','MTVC','MQVC','MQNVC','MSVC','MSPVC','MOVC','MNVC','MTN','MUTN','MDTN','MTTN','MQTN','MQNTN','MSTN','MSPTN','MOTN','MNTN','MQT','MUQT','MDQT','MTQT','MQQT','MQNQT','MSQT','MSPQT','MOQT','MNQT','MQL','MUQL','MDQL','MTQL','MQQL','MQNQL','MSQL','MSPQL','MOQL','MNQL','MSN','MUSN','MDSN','MTSN','MQSN','MQNSN','MSSN','MSPSN','MOSN','MNSN','MST','MUST','MDST','MTST','MQST','MQNST','MSST','MSPST','MOST','MNST','MON','MUON','MDON','MTON','MQON','MQNON','MSON','MSPON','MOON','MNON','MNNC','MUNNC','MDNNC','MTNNC','MQNNC','MQNNNC','MSNNC','MSPNNC','MONNC','MNNNC','MDT','MUDT','MDDT','MTDT','MQDT','MQNDT','MSDT','MSPDT','MODT','MNDT','MDL','MUDL','MDDL','MTDL','MQDL','MQNDL','MSDL','MSPDL','MODL','MNDL','MVD','MUVD','MDVD','MTVD','MQVD','MQNVD','MSVD','MSPVD','MOVD','MNVD','MTT','MUTT','MDTT','MTTT','MQTT','MQNTT','MSTT','MSPTT','MOTT','MNTT','MQU','MUQU','MDQU','MTQU','MQQU','MQNQU','MSQU','MSPQU','MOQU','MNQU','MQI','MUQI','MDQI','MTQI','MQQI','MQNQI','MSQI','MSPQI','MOQI','MNQI','MSL','MUSL','MDSL','MTSL','MQSL','MQNSL','MSSL','MSPSL','MOSL','MNSL','MSE','MUSE','MDSE','MTSE','MQSE','MQNSE','MSSE','MSPSE','MOSE','MNSE','MOT','MUOT','MDOT','MTOT','MQOT','MQNOT','MSOT','MSPOT','MOOT','MNOT','MNT','MUNT','MDNT','MTNT','MQNT','MQNNT','MSNT','MSPNT','MONT','MNNT','MTR','MUTR','MDTR','MTTR','MQTR','MQNTR','MSTR','MSPTR','MOTR','MNTR','MDR','MUDR','MDDR','MTDR','MQDR','MQNDR','MSDR','MSPDR','MODR','MNDR','MVT','MUVT','MDVT','MTVT','MQVT','MQNVT','MSVT','MSPVT','MOVT','MNVT','MTL','MUTL','MDTL','MTTL','MQTL','MQNTL','MSTL','MSPTL','MOTL','MNTL','MQA','MUQA','MDQA','MTQA','MQQA','MQNQA','MSQA','MSPQA','MOQA','MNQA','MQE','MUQE','MDQE','MTQE','MQQE','MQNQE','MSQE','MSPQE','MOQE','MNQE','MSR','MUSR','MDSR','MTSR','MQSR','MQNSR','MSSR','MSPSR','MOSR','MNSR','MSU','MUSU','MDSU','MTSU','MQSU','MQNSU','MSSU','MSPSU','MOSU','MNSU','MOR','MUOR','MDOR','MTOR','MQOR','MQNOR','MSOR','MSPOR','MOOR','MNOR','MNR','MUNR','MDNR','MTNR','MQNR','MQNNR','MSNR','MSPNR','MONR','MNNR','MQR','MUQR','MDQR','MTQR','MQQR','MQNQR','MSQR','MSPQR','MOQR','MNQR','MDQ','MUDQ','MDDQ','MTDQ','MQDQ','MQNDQ','MSDQ','MSPDQ','MODQ','MNDQ','MVQ','MUVQ','MDVQ','MTVQ','MQVQ','MQNVQ','MSVQ','MSPVQ','MOVQ','MNVQ','MTQ','MUTQ','MDTQ','MTTQ','MQTQ','MQNTQ','MSTQ','MSPTQ','MOTQ','MNTQ','MQO','MUQO','MDQO','MTQO','MQQO','MQNQO','MSQO','MSPQO','MOQO','MNQO','MQQD','MUQQD','MDQQD','MTQQD','MQQQD','MQNQQD','MSQQD','MSPQQD','MOQQD','MNQQD','MSQ','MUSQ','MDSQ','MTSQ','MQSQ','MQNSQ','MSSQ','MSPSQ','MOSQ','MNSQ','MSA','MUSA','MDSA','MTSA','MQSA','MQNSA','MSSA','MSPSA','MOSA','MNSA','MOQ','MUOQ','MDOQ','MTOQ','MQOQ','MQNOQ','MSOQ','MSPOQ','MOOQ','MNOQ','MNQ','MUNQ','MDNQ','MTNQ','MQNQ','MQNNQ','MSNQ','MSPNQ','MONQ','MNNQ','MQGN','MUQGN','MDQGN','MTQGN','MQQGN','MQNQGN','MSQGN','MSPQGN','MOQGN','MNQGN','MDG','MUDG','MDDG','MTDG','MQDG','MQNDG','MSDG','MSPDG','MODG','MNDG','MVG','MUVG','MDVG','MTVG','MQVG','MQNVG','MSVG','MSPVG','MOVG','MNVG','MTI','MUTI','MDTI','MTTI','MQTI','MQNTI','MSTI','MSPTI','MOTI','MNTI','MQDQ','MUQDQ','MDQDQ','MTQDQ','MQQDQ','MQNQDQ','MSQDQ','MSPQDQ','MOQDQ','MNQDQ','MQGQ','MUQGQ','MDQGQ','MTQGQ','MQQGQ','MQNQGQ','MSQGQ','MSPQGQ','MOQGQ','MNQGQ','MSI','MUSI','MDSI','MTSI','MQSI','MQNSI','MSSI','MSPSI','MOSI','MNSI','MSO','MUSO','MDSO','MTSO','MQSO','MQNSO','MSSO','MSPSO','MOSO','MNSO','MOL','MUOL','MDOL','MTOL','MQOL','MQNOL','MSOL','MSPOL','MOOL','MNOL','MNL','MUNL','MDNL','MTNL','MQNL','MQNNL','MSNL','MSPNL','MONL','MNNL','MSS','MUSS','MDSS','MTSS','MQSS','MQNSS','MSSS','MSPSS','MOSS','MNSS','MDS','MUDS','MDDS','MTDS','MQDS','MQNDS','MSDS','MSPDS','MODS','MNDS','MVS','MUVS','MDVS','MTVS','MQVS','MQNVS','MSVS','MSPVS','MOVS','MNVS','MTS','MUTS','MDTS','MTTS','MQTS','MQNTS','MSTS','MSPTS','MOTS','MNTS','MQS','MUQS','MDQS','MTQS','MQQS','MQNQS','MSQS','MSPQS','MOQS','MNQS','MQGS','MUQGS','MDQGS','MTQGS','MQQGS','MQNQGS','MSQGS','MSPQGS','MOQGS','MNQGS','MSXS','MUSXS','MDSXS','MTSXS','MQSXS','MQNSXS','MSSXS','MSPSXS','MOSXS','MNSXS','MSPS','MUSPS','MDSPS','MTSPS','MQSPS','MQNSPS','MSSPS','MSPSPS','MOSPS','MNSPS','MOS','MUOS','MDOS','MTOS','MQOS','MQNOS','MSOS','MSPOS','MOOS','MNOS','MNS','MUNS','MDNS','MTNS','MQNS','MQNNS','MSNS','MSPNS','MONS','MNNS','MSPG','MUSPG','MDSPG','MTSPG','MQSPG','MQNSPG','MSSPG','MSPSPG','MOSPG','MNSPG','MDP','MUDP','MDDP','MTDP','MQDP','MQNDP','MSDP','MSPDP','MODP','MNDP','MVP','MUVP','MDVP','MTVP','MQVP','MQNVP','MSVP','MSPVP','MOVP','MNVP','MTP','MUTP','MDTP','MTTP','MQTP','MQNTP','MSTP','MSPTP','MOTP','MNTP','MQP','MUQP','MDQP','MTQP','MQQP','MQNQP','MSQP','MSPQP','MOQP','MNQP','MQGP','MUQGP','MDQGP','MTQGP','MQQGP','MQNQGP','MSQGP','MSPQGP','MOQGP','MNQGP','MSGS','MUSGS','MDSGS','MTSGS','MQSGS','MQNSGS','MSSGS','MSPSGS','MOSGS','MNSGS','MSSP','MUSSP','MDSSP','MTSSP','MQSSP','MQNSSP','MSSSP','MSPSSP','MOSSP','MNSSP','MOP','MUOP','MDOP','MTOP','MQOP','MQNOP','MSOP','MSPOP','MOOP','MNOP','MNP','MUNP','MDNP','MTNP','MQNP','MQNNP','MSNP','MSPNP','MONP','MNNP','MOI','MUOI','MDOI','MTOI','MQOI','MQNOI','MSOI','MSPOI','MOOI','MNOI','MDO','MUDO','MDDO','MTDO','MQDO','MQNDO','MSDO','MSPDO','MODO','MNDO','MVO','MUVO','MDVO','MTVO','MQVO','MQNVO','MSVO','MSPVO','MOVO','MNVO','MTO','MUTO','MDTO','MTTO','MQTO','MQNTO','MSTO','MSPTO','MOTO','MNTO','MQGO','MUQGO','MDQGO','MTQGO','MQQGO','MQNQGO','MSQGO','MSPQGO','MOQGO','MNQGO','MQOC','MUQOC','MDQOC','MTQOC','MQQOC','MQNQOC','MSQOC','MSPQOC','MOQOC','MNQOC','MSXO','MUSXO','MDSXO','MTSXO','MQSXO','MQNSXO','MSSXO','MSPSXO','MOSXO','MNSXO','MSPO','MUSPO','MDSPO','MTSPO','MQSPO','MQNSPO','MSSPO','MSPSPO','MOSPO','MNSPO','MOO','MUOO','MDOO','MTOO','MQOO','MQNOO','MSOO','MSPOO','MOOO','MNOO','MNO','MUNO','MDNO','MTNO','MQNO','MQNNO','MSNO','MSPNO','MONO','MNNO','MNE','MUNE','MDNE','MTNE','MQNE','MQNNE','MSNE','MSPNE','MONE','MNNE','MDE','MUDE','MDDE','MTDE','MQDE','MQNDE','MSDE','MSPDE','MODE','MNDE','MVN','MUVN','MDVN','MTVN','MQVN','MQNVN','MSVN','MSPVN','MOVN','MNVN','MTE','MUTE','MDTE','MTTE','MQTE','MQNTE','MSTE','MSPTE','MOTE','MNTE','MQGG','MUQGG','MDQGG','MTQGG','MQQGG','MQNQGG','MSQGG','MSPQGG','MOQGG','MNQGG','MQQN','MUQQN','MDQQN','MTQQN','MQQQN','MQNQQN','MSQQN','MSPQQN','MOQQN','MNQQN','MSXN','MUSXN','MDSXN','MTSXN','MQSXN','MQNSXN','MSSXN','MSPSXN','MOSXN','MNSXN','MSPN','MUSPN','MDSPN','MTSPN','MQSPN','MQNSPN','MSSPN','MSPSPN','MOSPN','MNSPN','MOE','MUOE','MDOE','MTOE','MQOE','MQNOE','MSOE','MSPOE','MOOE','MNOE','MNA','MUNA','MDNA','MTNA','MQNA','MQNNA','MSNA','MSPNA','MONA','MNNA','BN','BM','BB','BT','BQ','BQN','BS','BSP','BO','BNN','BD','BUD','BDD','BTD','BQD','BQND','BSD','BSPD','BOD','BND','BV','BUV','BDV','BTV','BQV','BQNT','BSV','BSPV','BOV','BNV','BTG','BUTG','BDTG','BTTG','BQTG','BQNTG','BSTG','BSPTG','BOTG','BNTG','BQG','BUQG','BDQG','BTQG','BQQG','BQNQG','BSQG','BSPQG','BOQG','BNQG','BQQ','BUQQ','BDQQ','BTQQ','BQQQ','BQNQQ','BSQQ','BSPQQ','BOQQ','BNQQ','BSX','BUSX','BDSX','BTSX','BQSX','BQNSX','BSSX','BSPSX','BOSX','BNSX','BSG','BUSG','BDSG','BTSG','BQSG','BQNSG','BSSG','BSPSG','BOSG','BNSG','BOG','BUOG','BDOG','BTOG','BQOG','BQNOG','BSOG','BSPOG','BOOG','BNOG','BNG','BUNG','BDNG','BTNG','BQNG','BQNNG','BSNG','BSPNG','BONG','BNNG','BC','BUC','BDC','BTC','BQC','BQNC','BSC','BSPC','BOC','BNC','BDN','BUDN','BDDN','BTDN','BQDN','BQNDN','BSDN','BSPDN','BODN','BNDN','BVC','BUVC','BDVC','BTVC','BQVC','BQNVC','BSVC','BSPVC','BOVC','BNVC','BTN','BUTN','BDTN','BTTN','BQTN','BQNTN','BSTN','BSPTN','BOTN','BNTN','BQT','BUQT','BDQT','BTQT','BQQT','BQNQT','BSQT','BSPQT','BOQT','BNQT','BQL','BUQL','BDQL','BTQL','BQQL','BQNQL','BSQL','BSPQL','BOQL','BNQL','BSN','BUSN','BDSN','BTSN','BQSN','BQNSN','BSSN','BSPSN','BOSN','BNSN','BST','BUST','BDST','BTST','BQST','BQNST','BSST','BSPST','BOST','BNST','BON','BUON','BDON','BTON','BQON','BQNON','BSON','BSPON','BOON','BNON','BNNC','BUNNC','BDNNC','BTNNC','BQNNC','BQNNNC','BSNNC','BSPNNC','BONNC','BNNNC','BDT','BUDT','BDDT','BTDT','BQDT','BQNDT','BSDT','BSPDT','BODT','BNDT','BDL','BUDL','BDDL','BTDL','BQDL','BQNDL','BSDL','BSPDL','BODL','BNDL','BVD','BUVD','BDVD','BTVD','BQVD','BQNVD','BSVD','BSPVD','BOVD','BNVD','BTT','BUTT','BDTT','BTTT','BQTT','BQNTT','BSTT','BSPTT','BOTT','BNTT','BQU','BUQU','BDQU','BTQU','BQQU','BQNQU','BSQU','BSPQU','BOQU','BNQU','BQI','BUQI','BDQI','BTQI','BQQI','BQNQI','BSQI','BSPQI','BOQI','BNQI','BSL','BUSL','BDSL','BTSL','BQSL','BQNSL','BSSL','BSPSL','BOSL','BNSL','BSE','BUSE','BDSE','BTSE','BQSE','BQNSE','BSSE','BSPSE','BOSE','BNSE','BOT','BUOT','BDOT','BTOT','BQOT','BQNOT','BSOT','BSPOT','BOOT','BNOT','BNT','BUNT','BDNT','BTNT','BQNT','BQNNT','BSNT','BSPNT','BONT','BNNT','BTR','BUTR','BDTR','BTTR','BQTR','BQNTR','BSTR','BSPTR','BOTR','BNTR','BDR','BUDR','BDDR','BTDR','BQDR','BQNDR','BSDR','BSPDR','BODR','BNDR','BVT','BUVT','BDVT','BTVT','BQVT','BQNVT','BSVT','BSPVT','BOVT','BNVT','BTL','BUTL','BDTL','BTTL','BQTL','BQNTL','BSTL','BSPTL','BOTL','BNTL','BQA','BUQA','BDQA','BTQA','BQQA','BQNQA','BSQA','BSPQA','BOQA','BNQA','BQE','BUQE','BDQE','BTQE','BQQE','BQNQE','BSQE','BSPQE','BOQE','BNQE','BSR','BUSR','BDSR','BTSR','BQSR','BQNSR','BSSR','BSPSR','BOSR','BNSR','BSU','BUSU','BDSU','BTSU','BQSU','BQNSU','BSSU','BSPSU','BOSU','BNSU','BOR','BUOR','BDOR','BTOR','BQOR','BQNOR','BSOR','BSPOR','BOOR','BNOR','BNR','BUNR','BDNR','BTNR','BQNR','BQNNR','BSNR','BSPNR','BONR','BNNR','BQR','BUQR','BDQR','BTQR','BQQR','BQNQR','BSQR','BSPQR','BOQR','BNQR','BDQ','BUDQ','BDDQ','BTDQ','BQDQ','BQNDQ','BSDQ','BSPDQ','BODQ','BNDQ','BVQ','BUVQ','BDVQ','BTVQ','BQVQ','BQNVQ','BSVQ','BSPVQ','BOVQ','BNVQ','BTQ','BUTQ','BDTQ','BTTQ','BQTQ','BQNTQ','BSTQ','BSPTQ','BOTQ','BNTQ','BQO','BUQO','BDQO','BTQO','BQQO','BQNQO','BSQO','BSPQO','BOQO','BNQO','BQQD','BUQQD','BDQQD','BTQQD','BQQQD','BQNQQD','BSQQD','BSPQQD','BOQQD','BNQQD','BSQ','BUSQ','BDSQ','BTSQ','BQSQ','BQNSQ','BSSQ','BSPSQ','BOSQ','BNSQ','BSA','BUSA','BDSA','BTSA','BQSA','BQNSA','BSSA','BSPSA','BOSA','BNSA','BOQ','BUOQ','BDOQ','BTOQ','BQOQ','BQNOQ','BSOQ','BSPOQ','BOOQ','BNOQ','BNQ','BUNQ','BDNQ','BTNQ','BQNQ','BQNNQ','BSNQ','BSPNQ','BONQ','BNNQ','BQGN','BUQGN','BDQGN','BTQGN','BQQGN','BQNQGN','BSQGN','BSPQGN','BOQGN','BNQGN','BDG','BUDG','BDDG','BTDG','BQDG','BQNDG','BSDG','BSPDG','BODG','BNDG','BVG','BUVG','BDVG','BTVG','BQVG','BQNVG','BSVG','BSPVG','BOVG','BNVG','BTI','BUTI','BDTI','BTTI','BQTI','BQNTI','BSTI','BSPTI','BOTI','BNTI','BQDQ','BUQDQ','BDQDQ','BTQDQ','BQQDQ','BQNQDQ','BSQDQ','BSPQDQ','BOQDQ','BNQDQ','BQGQ','BUQGQ','BDQGQ','BTQGQ','BQQGQ','BQNQGQ','BSQGQ','BSPQGQ','BOQGQ','BNQGQ','BSI','BUSI','BDSI','BTSI','BQSI','BQNSI','BSSI','BSPSI','BOSI','BNSI','BSO','BUSO','BDSO','BTSO','BQSO','BQNSO','BSSO','BSPSO','BOSO','BNSO','BOL','BUOL','BDOL','BTOL','BQOL','BQNOL','BSOL','BSPOL','BOOL','BNOL','BNL','BUNL','BDNL','BTNL','BQNL','BQNNL','BSNL','BSPNL','BONL','BNNL','BSS','BUSS','BDSS','BTSS','BQSS','BQNSS','BSSS','BSPSS','BOSS','BNSS','BDS','BUDS','BDDS','BTDS','BQDS','BQNDS','BSDS','BSPDS','BODS','BNDS','BVS','BUVS','BDVS','BTVS','BQVS','BQNVS','BSVS','BSPVS','BOVS','BNVS','BTS','BUTS','BDTS','BTTS','BQTS','BQNTS','BSTS','BSPTS','BOTS','BNTS','BQS','BUQS','BDQS','BTQS','BQQS','BQNQS','BSQS','BSPQS','BOQS','BNQS','BQGS','BUQGS','BDQGS','BTQGS','BQQGS','BQNQGS','BSQGS','BSPQGS','BOQGS','BNQGS','BSXS','BUSXS','BDSXS','BTSXS','BQSXS','BQNSXS','BSSXS','BSPSXS','BOSXS','BNSXS','BSPS','BUSPS','BDSPS','BTSPS','BQSPS','BQNSPS','BSSPS','BSPSPS','BOSPS','BNSPS','BOS','BUOS','BDOS','BTOS','BQOS','BQNOS','BSOS','BSPOS','BOOS','BNOS','BNS','BUNS','BDNS','BTNS','BQNS','BQNNS','BSNS','BSPNS','BONS','BNNS','BSPG','BUSPG','BDSPG','BTSPG','BQSPG','BQNSPG','BSSPG','BSPSPG','BOSPG','BNSPG','BDP','BUDP','BDDP','BTDP','BQDP','BQNDP','BSDP','BSPDP','BODP','BNDP','BVP','BUVP','BDVP','BTVP','BQVP','BQNVP','BSVP','BSPVP','BOVP','BNVP','BTP','BUTP','BDTP','BTTP','BQTP','BQNTP','BSTP','BSPTP','BOTP','BNTP','BQP','BUQP','BDQP','BTQP','BQQP','BQNQP','BSQP','BSPQP','BOQP','BNQP','BQGP','BUQGP','BDQGP','BTQGP','BQQGP','BQNQGP','BSQGP','BSPQGP','BOQGP','BNQGP','BSGS','BUSGS','BDSGS','BTSGS','BQSGS','BQNSGS','BSSGS','BSPSGS','BOSGS','BNSGS','BSSP','BUSSP','BDSSP','BTSSP','BQSSP','BQNSSP','BSSSP','BSPSSP','BOSSP','BNSSP','BOP','BUOP','BDOP','BTOP','BQOP','BQNOP','BSOP','BSPOP','BOOP','BNOP','BNP','BUNP','BDNP','BTNP','BQNP','BQNNP','BSNP','BSPNP','BONP','BNNP','BOI','BUOI','BDOI','BTOI','BQOI','BQNOI','BSOI','BSPOI','BOOI','BNOI','BDO','BUDO','BDDO','BTDO','BQDO','BQNDO','BSDO','BSPDO','BODO','BNDO','BVO','BUVO','BDVO','BTVO','BQVO','BQNVO','BSVO','BSPVO','BOVO','BNVO','BTO','BUTO','BDTO','BTTO','BQTO','BQNTO','BSTO','BSPTO','BOTO','BNTO','BQGO','BUQGO','BDQGO','BTQGO','BQQGO','BQNQGO','BSQGO','BSPQGO','BOQGO','BNQGO','BQOC','BUQOC','BDQOC','BTQOC','BQQOC','BQNQOC','BSQOC','BSPQOC','BOQOC','BNQOC','BSXO','BUSXO','BDSXO','BTSXO','BQSXO','BQNSXO','BSSXO','BSPSXO','BOSXO','BNSXO','BSPO','BUSPO','BDSPO','BTSPO','BQSPO','BQNSPO','BSSPO','BSPSPO','BOSPO','BNSPO','BOO','BUOO','BDOO','BTOO','BQOO','BQNOO','BSOO','BSPOO','BOOO','BNOO','BNO','BUNO','BDNO','BTNO','BQNO','BQNNO','BSNO','BSPNO','BONO','BNNO','BNE','BUNE','BDNE','BTNE','BQNE','BQNNE','BSNE','BSPNE','BONE','BNNE','BDE','BUDE','BDDE','BTDE','BQDE','BQNDE','BSDE','BSPDE','BODE','BNDE','BVN','BUVN','BDVN','BTVN','BQVN','BQNVN','BSVN','BSPVN','BOVN','BNVN','BTE','BUTE','BDTE','BTTE','BQTE','BQNTE','BSTE','BSPTE','BOTE','BNTE','BQGG','BUQGG','BDQGG','BTQGG','BQQGG','BQNQGG','BSQGG','BSPQGG','BOQGG','BNQGG','BQQN','BUQQN','BDQQN','BTQQN','BQQQN','BQNQQN','BSQQN','BSPQQN','BOQQN','BNQQN','BSXN','BUSXN','BDSXN','BTSXN','BQSXN','BQNSXN','BSSXN','BSPSXN','BOSXN','BNSXN','BSPN','BUSPN','BDSPN','BTSPN','BQSPN','BQNSPN','BSSPN','BSPSPN','BOSPN','BNSPN','BOE','BUOE','BDOE','BTOE','BQOE','BQNOE','BSOE','BSPOE','BOOE','BNOE','BNA','BUNA','BDNA','BTNA','BQNA','BQNNA','BSNA','BSPNA','BONA','BNNA','TRN','TRM','TRB','TRT','TRQ','TRQN','TRS','TRSP','TRO','TRNN','TRD','TRUD','TRDD','TRTD','TRQD','TRQND','TRSD','TRSPD','TROD','TRND','TRV','TRUV','TRDV','TRTV','TRQV','TRQNT','TRSV','TRSPV','TROV','TRNV','TRTG','TRUTG','TRDTG','TRTTG','TRQTG','TRQNTG','TRSTG','TRSPTG','TROTG','TRNTG','TRQG','TRUQG','TRDQG','TRTQG','TRQQG','TRQNQG','TRSQG','TRSPQG','TROQG','TRNQG','TRQQ','TRUQQ','TRDQQ','TRTQQ','TRQQQ','TRQNQQ','TRSQQ','TRSPQQ','TROQQ','TRNQQ','TRSX','TRUSX','TRDSX','TRTSX','TRQSX','TRQNSX','TRSSX','TRSPSX','TROSX','TRNSX','TRSG','TRUSG','TRDSG','TRTSG','TRQSG','TRQNSG','TRSSG','TRSPSG','TROSG','TRNSG','TROG','TRUOG','TRDOG','TRTOG','TRQOG','TRQNOG','TRSOG','TRSPOG','TROOG','TRNOG','TRNG','TRUNG','TRDNG','TRTNG','TRQNG','TRQNNG','TRSNG','TRSPNG','TRONG','TRNNG','TRC','TRUC','TRDC','TRTC','TRQC','TRQNC','TRSC','TRSPC','TROC','TRNC','TRDN','TRUDN','TRDDN','TRTDN','TRQDN','TRQNDN','TRSDN','TRSPDN','TRODN','TRNDN','TRVC','TRUVC','TRDVC','TRTVC','TRQVC','TRQNVC','TRSVC','TRSPVC','TROVC','TRNVC','TRTN','TRUTN','TRDTN','TRTTN','TRQTN','TRQNTN','TRSTN','TRSPTN','TROTN','TRNTN','TRQT','TRUQT','TRDQT','TRTQT','TRQQT','TRQNQT','TRSQT','TRSPQT','TROQT','TRNQT','TRQL','TRUQL','TRDQL','TRTQL','TRQQL','TRQNQL','TRSQL','TRSPQL','TROQL','TRNQL','TRSN','TRUSN','TRDSN','TRTSN','TRQSN','TRQNSN','TRSSN','TRSPSN','TROSN','TRNSN','TRST','TRUST','TRDST','TRTST','TRQST','TRQNST','TRSST','TRSPST','TROST','TRNST','TRON','TRUON','TRDON','TRTON','TRQON','TRQNON','TRSON','TRSPON','TROON','TRNON','TRNNC','TRUNNC','TRDNNC','TRTNNC','TRQNNC','TRQNNNC','TRSNNC','TRSPNNC','TRONNC','TRNNNC','TRDT','TRUDT','TRDDT','TRTDT','TRQDT','TRQNDT','TRSDT','TRSPDT','TRODT','TRNDT','TRDL','TRUDL','TRDDL','TRTDL','TRQDL','TRQNDL','TRSDL','TRSPDL','TRODL','TRNDL','TRVD','TRUVD','TRDVD','TRTVD','TRQVD','TRQNVD','TRSVD','TRSPVD','TROVD','TRNVD','TRTT','TRUTT','TRDTT','TRTTT','TRQTT','TRQNTT','TRSTT','TRSPTT','TROTT','TRNTT','TRQU','TRUQU','TRDQU','TRTQU','TRQQU','TRQNQU','TRSQU','TRSPQU','TROQU','TRNQU','TRQI','TRUQI','TRDQI','TRTQI','TRQQI','TRQNQI','TRSQI','TRSPQI','TROQI','TRNQI','TRSL','TRUSL','TRDSL','TRTSL','TRQSL','TRQNSL','TRSSL','TRSPSL','TROSL','TRNSL','TRSE','TRUSE','TRDSE','TRTSE','TRQSE','TRQNSE','TRSSE','TRSPSE','TROSE','TRNSE','TROT','TRUOT','TRDOT','TRTOT','TRQOT','TRQNOT','TRSOT','TRSPOT','TROOT','TRNOT','TRNT','TRUNT','TRDNT','TRTNT','TRQNT','TRQNNT','TRSNT','TRSPNT','TRONT','TRNNT','TRTR','TRUTR','TRDTR','TRTTR','TRQTR','TRQNTR','TRSTR','TRSPTR','TROTR','TRNTR','TRDR','TRUDR','TRDDR','TRTDR','TRQDR','TRQNDR','TRSDR','TRSPDR','TRODR','TRNDR','TRVT','TRUVT','TRDVT','TRTVT','TRQVT','TRQNVT','TRSVT','TRSPVT','TROVT','TRNVT','TRTL','TRUTL','TRDTL','TRTTL','TRQTL','TRQNTL','TRSTL','TRSPTL','TROTL','TRNTL','TRQA','TRUQA','TRDQA','TRTQA','TRQQA','TRQNQA','TRSQA','TRSPQA','TROQA','TRNQA','TRQE','TRUQE','TRDQE','TRTQE','TRQQE','TRQNQE','TRSQE','TRSPQE','TROQE','TRNQE','TRSR','TRUSR','TRDSR','TRTSR','TRQSR','TRQNSR','TRSSR','TRSPSR','TROSR','TRNSR','TRSU','TRUSU','TRDSU','TRTSU','TRQSU','TRQNSU','TRSSU','TRSPSU','TROSU','TRNSU','TROR','TRUOR','TRDOR','TRTOR','TRQOR','TRQNOR','TRSOR','TRSPOR','TROOR','TRNOR','TRNR','TRUNR','TRDNR','TRTNR','TRQNR','TRQNNR','TRSNR','TRSPNR','TRONR','TRNNR','TRQR','TRUQR','TRDQR','TRTQR','TRQQR','TRQNQR','TRSQR','TRSPQR','TROQR','TRNQR','TRDQ','TRUDQ','TRDDQ','TRTDQ','TRQDQ','TRQNDQ','TRSDQ','TRSPDQ','TRODQ','TRNDQ','TRVQ','TRUVQ','TRDVQ','TRTVQ','TRQVQ','TRQNVQ','TRSVQ','TRSPVQ','TROVQ','TRNVQ','TRTQ','TRUTQ','TRDTQ','TRTTQ','TRQTQ','TRQNTQ','TRSTQ','TRSPTQ','TROTQ','TRNTQ','TRQO','TRUQO','TRDQO','TRTQO','TRQQO','TRQNQO','TRSQO','TRSPQO','TROQO','TRNQO','TRQQD','TRUQQD','TRDQQD','TRTQQD','TRQQQD','TRQNQQD','TRSQQD','TRSPQQD','TROQQD','TRNQQD','TRSQ','TRUSQ','TRDSQ','TRTSQ','TRQSQ','TRQNSQ','TRSSQ','TRSPSQ','TROSQ','TRNSQ','TRSA','TRUSA','TRDSA','TRTSA','TRQSA','TRQNSA','TRSSA','TRSPSA','TROSA','TRNSA','TROQ','TRUOQ','TRDOQ','TRTOQ','TRQOQ','TRQNOQ','TRSOQ','TRSPOQ','TROOQ','TRNOQ','TRNQ','TRUNQ','TRDNQ','TRTNQ','TRQNQ','TRQNNQ','TRSNQ','TRSPNQ','TRONQ','TRNNQ','TRQGN','TRUQGN','TRDQGN','TRTQGN','TRQQGN','TRQNQGN','TRSQGN','TRSPQGN','TROQGN','TRNQGN','TRDG','TRUDG','TRDDG','TRTDG','TRQDG','TRQNDG','TRSDG','TRSPDG','TRODG','TRNDG','TRVG','TRUVG','TRDVG','TRTVG','TRQVG','TRQNVG','TRSVG','TRSPVG','TROVG','TRNVG','TRTI','TRUTI','TRDTI','TRTTI','TRQTI','TRQNTI','TRSTI','TRSPTI','TROTI','TRNTI','TRQDQ','TRUQDQ','TRDQDQ','TRTQDQ','TRQQDQ','TRQNQDQ','TRSQDQ','TRSPQDQ','TROQDQ','TRNQDQ','TRQGQ','TRUQGQ','TRDQGQ','TRTQGQ','TRQQGQ','TRQNQGQ','TRSQGQ','TRSPQGQ','TROQGQ','TRNQGQ','TRSI','TRUSI','TRDSI','TRTSI','TRQSI','TRQNSI','TRSSI','TRSPSI','TROSI','TRNSI','TRSO','TRUSO','TRDSO','TRTSO','TRQSO','TRQNSO','TRSSO','TRSPSO','TROSO','TRNSO','TROL','TRUOL','TRDOL','TRTOL','TRQOL','TRQNOL','TRSOL','TRSPOL','TROOL','TRNOL','TRNL','TRUNL','TRDNL','TRTNL','TRQNL','TRQNNL','TRSNL','TRSPNL','TRONL','TRNNL','TRSS','TRUSS','TRDSS','TRTSS','TRQSS','TRQNSS','TRSSS','TRSPSS','TROSS','TRNSS','TRDS','TRUDS','TRDDS','TRTDS','TRQDS','TRQNDS','TRSDS','TRSPDS','TRODS','TRNDS','TRVS','TRUVS','TRDVS','TRTVS','TRQVS','TRQNVS','TRSVS','TRSPVS','TROVS','TRNVS','TRTS','TRUTS','TRDTS','TRTTS','TRQTS','TRQNTS','TRSTS','TRSPTS','TROTS','TRNTS','TRQS','TRUQS','TRDQS','TRTQS','TRQQS','TRQNQS','TRSQS','TRSPQS','TROQS','TRNQS','TRQGS','TRUQGS','TRDQGS','TRTQGS','TRQQGS','TRQNQGS','TRSQGS','TRSPQGS','TROQGS','TRNQGS','TRSXS','TRUSXS','TRDSXS','TRTSXS','TRQSXS','TRQNSXS','TRSSXS','TRSPSXS','TROSXS','TRNSXS','TRSPS','TRUSPS','TRDSPS','TRTSPS','TRQSPS','TRQNSPS','TRSSPS','TRSPSPS','TROSPS','TRNSPS','TROS','TRUOS','TRDOS','TRTOS','TRQOS','TRQNOS','TRSOS','TRSPOS','TROOS','TRNOS','TRNS','TRUNS','TRDNS','TRTNS','TRQNS','TRQNNS','TRSNS','TRSPNS','TRONS','TRNNS','TRSPG','TRUSPG','TRDSPG','TRTSPG','TRQSPG','TRQNSPG','TRSSPG','TRSPSPG','TROSPG','TRNSPG','TRDP','TRUDP','TRDDP','TRTDP','TRQDP','TRQNDP','TRSDP','TRSPDP','TRODP','TRNDP','TRVP','TRUVP','TRDVP','TRTVP','TRQVP','TRQNVP','TRSVP','TRSPVP','TROVP','TRNVP','TRTP','TRUTP','TRDTP','TRTTP','TRQTP','TRQNTP','TRSTP','TRSPTP','TROTP','TRNTP','TRQP','TRUQP','TRDQP','TRTQP','TRQQP','TRQNQP','TRSQP','TRSPQP','TROQP','TRNQP','TRQGP','TRUQGP','TRDQGP','TRTQGP','TRQQGP','TRQNQGP','TRSQGP','TRSPQGP','TROQGP','TRNQGP','TRSGS','TRUSGS','TRDSGS','TRTSGS','TRQSGS','TRQNSGS','TRSSGS','TRSPSGS','TROSGS','TRNSGS','TRSSP','TRUSSP','TRDSSP','TRTSSP','TRQSSP','TRQNSSP','TRSSSP','TRSPSSP','TROSSP','TRNSSP','TROP','TRUOP','TRDOP','TRTOP','TRQOP','TRQNOP','TRSOP','TRSPOP','TROOP','TRNOP','TRNP','TRUNP','TRDNP','TRTNP','TRQNP','TRQNNP','TRSNP','TRSPNP','TRONP','TRNNP','TROI','TRUOI','TRDOI','TRTOI','TRQOI','TRQNOI','TRSOI','TRSPOI','TROOI','TRNOI','TRDO','TRUDO','TRDDO','TRTDO','TRQDO','TRQNDO','TRSDO','TRSPDO','TRODO','TRNDO','TRVO','TRUVO','TRDVO','TRTVO','TRQVO','TRQNVO','TRSVO','TRSPVO','TROVO','TRNVO','TRTO','TRUTO','TRDTO','TRTTO','TRQTO','TRQNTO','TRSTO','TRSPTO','TROTO','TRNTO','TRQGO','TRUQGO','TRDQGO','TRTQGO','TRQQGO','TRQNQGO','TRSQGO','TRSPQGO','TROQGO','TRNQGO','TRQOC','TRUQOC','TRDQOC','TRTQOC','TRQQOC','TRQNQOC','TRSQOC','TRSPQOC','TROQOC','TRNQOC','TRSXO','TRUSXO','TRDSXO','TRTSXO','TRQSXO','TRQNSXO','TRSSXO','TRSPSXO','TROSXO','TRNSXO','TRSPO','TRUSPO','TRDSPO','TRTSPO','TRQSPO','TRQNSPO','TRSSPO','TRSPSPO','TROSPO','TRNSPO','TROO','TRUOO','TRDOO','TRTOO','TRQOO','TRQNOO','TRSOO','TRSPOO','TROOO','TRNOO','TRNO','TRUNO','TRDNO','TRTNO','TRQNO','TRQNNO','TRSNO','TRSPNO','TRONO','TRNNO','TRNE','TRUNE','TRDNE','TRTNE','TRQNE','TRQNNE','TRSNE','TRSPNE','TRONE','TRNNE','TRDE','TRUDE','TRDDE','TRTDE','TRQDE','TRQNDE','TRSDE','TRSPDE','TRODE','TRNDE','TRVN','TRUVN','TRDVN','TRTVN','TRQVN','TRQNVN','TRSVN','TRSPVN','TROVN','TRNVN','TRTE','TRUTE','TRDTE','TRTTE','TRQTE','TRQNTE','TRSTE','TRSPTE','TROTE','TRNTE','TRQGG','TRUQGG','TRDQGG','TRTQGG','TRQQGG','TRQNQGG','TRSQGG','TRSPQGG','TROQGG','TRNQGG','TRQQN','TRUQQN','TRDQQN','TRTQQN','TRQQQN','TRQNQQN','TRSQQN','TRSPQQN','TROQQN','TRNQQN','TRSXN','TRUSXN','TRDSXN','TRTSXN','TRQSXN','TRQNSXN','TRSSXN','TRSPSXN','TROSXN','TRNSXN','TRSPN','TRUSPN','TRDSPN','TRTSPN','TRQSPN','TRQNSPN','TRSSPN','TRSPSPN','TROSPN','TRNSPN','TROE','TRUOE','TRDOE','TRTOE','TRQOE','TRQNOE','TRSOE','TRSPOE','TROOE','TRNOE','TRNA','TRUNA','TRDNA','TRTNA','TRQNA','TRQNNA','TRSNA','TRSPNA','TRONA','TRNNA'}

----- Private functions -----
local function fixNumber(first, second)
	first = tonumber(first)
	second = tonumber(second)
	
	if first == 0 then
		return first, 0
	elseif second < 0 then
		local sign = if first < 0 then -1 else 1
		
		local x = math.abs(first)

		if second > -4 then
			for i = 1, math.abs(second) do
				x /= 10
				second += 1
			end
		else
			for i = 1, 4 do
				x /= 10
				second += 1
			end
		end

		x *= sign

		return x, 0
		
	elseif second == 0 and first < 1 then
		return first, 0
	elseif second == 0 and first == 0 then
		return 0,0
	else
		local x = math.abs(first)
		local sign = if first < 0 then -1 else 1
		
		if math.floor(math.log10(x)) ~= 0 then -- Check if exponent is 0 then
			second += math.floor(math.log10(x))
			x /= 10^math.floor(math.log10(x))
		end
		return x*sign, second
	end
end

local function convert(number)
	-- get string representation
	local numberStr = tostring(number)
	
	local first
	local second = #numberStr - 1
	
	if numberStr:match("e") then
		second = numberStr:split("+")[2]
		first = numberStr:split("e")[1]
	elseif numberStr:match("inf") then
		second = "inf"
		first = "inf"
	elseif numberStr:match("nan") then
		second = "nan"
		first = "nan"
	elseif second >= 1 then
		first = numberStr:sub(1, 1).."."..numberStr:sub(2, THRESHOLD)
	else
		first = number
	end

	return `{first},{second}`
end

local function checkNumbers(a, b)
	if typeof(a) == 'number' then
		a = Number.new(convert(a))
	end
	
	if typeof(b) == 'number' then
		b = Number.new(convert(b))
	end
	
	return a, b
end

-- math metamethods:
function Number.__add(a, b)
	a, b =  checkNumbers(a, b)
	
	local first1, second1 = fixNumber(table.unpack(a.val:split(',')))
	local first2, second2 = fixNumber(table.unpack(b.val:split(',')))
	if math.abs(second1 - second2) > THRESHOLD then -- Check if difference in exponents is greater than threshold
		if math.max(second1, second2) == second1 then
			return Number.new(`{first1},{second1}`)
		end
		
		return Number.new(`{first2},{second2}`)
	end
	
	local difference = second1 - second2
	first2 *= (10^-difference)
	
	first1, second1 = fixNumber(first1 + first2, second1)
	
	return Number.new(`{first1},{second1}`)
end

function Number.__sub(a, b)
	a, b =  checkNumbers(a, b)
	
	local first1, second1 = fixNumber(table.unpack(a.val:split(',')))
	local first2, second2 = fixNumber(table.unpack(b.val:split(',')))
	if math.abs(second1 - second2) > THRESHOLD then -- Check if difference in exponents is greater than threshold
		if math.max(second1, second2) == second1 then
			return Number.new(`{first1},{second1}`)
		end

		return Number.new(`{first2},{second2}`)
	end
	
	local difference = second1 - second2
	first2 *= (10^-difference)

	first1, second1 = fixNumber(first1 - first2, second1)
	return Number.new(`{first1},{second1}`)
end

function Number.__mul(a, b)
	a, b =  checkNumbers(a, b)
	
	local first1, second1 = fixNumber(table.unpack(a.val:split(',')))
	local first2, second2 = fixNumber(table.unpack(b.val:split(',')))
	
	first1, second1 = fixNumber(first1 * first2, second1 + second2)
	
	return Number.new(`{first1},{second1}`)
end

function Number.__div(a, b)
	a, b =  checkNumbers(a, b)
	
	local first1, second1 = fixNumber(table.unpack(a.val:split(',')))
	local first2, second2 = fixNumber(table.unpack(b.val:split(',')))

	first1, second1 = fixNumber(first1/first2, second1 - second2)

	return Number.new(`{first1},{second1}`)
end

-- TODO: make this compatible with other numbers of class 'Number'
function Number.__pow(a, power)
	local first, second = fixNumber(table.unpack(a.val:split(',')))
	
	if power > 1 then
		local orig = first
		for i = 1, power - 1 do
			first *= orig
		end
		second *= power
	end
	
	first, second = fixNumber(first, second)
	return Number.new(`{first},{second}`)
end

function Number.__eq(a, b)
	return a.val == b.val
end

function Number.__lt(a, b)
	a, b =  checkNumbers(a, b)
	local first1, second1 = fixNumber(table.unpack(a.val:split(',')))
	local first2, second2 = fixNumber(table.unpack(b.val:split(',')))

	if second1 == second2 then
		return first1 < first2
	end

	return second1 < second2 and first1 >= 0
end

function Number.__le(a, b)
	a, b =  checkNumbers(a, b)
	local first1, second1 = fixNumber(table.unpack(a.val:split(',')))
	local first2, second2 = fixNumber(table.unpack(b.val:split(',')))
	
	if second1 == second2 then
		return first1 <= first2
	end

	return second1 < second2 and first1 >= 0
end


---- Class methods -----
function Number.new(val)
	-- fix up val for evaluation
	if typeof(val) ~= 'string' or #val:split(',') ~= 2 then
		val = convert(val)
	end
	
	return setmetatable({
		val = val
	}, Number)
end

function Number:GetZeroes()
	return self.val:split(',')[2]
end

function Number:Reverse()
	local numbers =  self.val:split(',')
	return math.floor(numbers[1].."e+"..numbers[2])
end

function Number:ScientificNotation()
	local numbers =  self.val:split(',')
	local first, second = numbers[1], numbers[2]

	return numbers[1]:sub(0, 4).."e+"..numbers[2]
end

function Number:GetSuffix()
	local numbers =  self.val:split(',')
	local first, second = numbers[1], numbers[2]

	if second ~= 0 then
		first, second = fixNumber(first, second)
	end
	first = tostring(first)
	
	local stringed = nil

	if second == 0 then
		if #first > 5 then
			repeat
				first = first:sub(0, -2)
			until #first <= 5
		end

		local firsts = first:split(".")

		if firsts[2] ~= nil then
			stringed = firsts[1].."."..firsts[2]
		else
			stringed = first
		end
	elseif second == 1 or second == -1 then
		local firsts = first:split(".")

		if firsts[2] ~= nil then
			local firstsub = firsts[2]:sub(0, 1)
			stringed = firsts[1]..firstsub
		else
			stringed = first.."0"
		end
	elseif second == 2 or second == -2 then
		local firsts = first:split(".")

		if firsts[2] ~= nil then
			local firstsub = firsts[2]:sub(0, 2)
			local secondsub = string.sub(firsts[2], 2)
			stringed = firsts[1]..firstsub
			
			if #secondsub == 0 then
				stringed ..= "0"
			end
		else
			stringed = first.."00"
		end
	else
		if string.len(tostring(first)) > 5 then
			repeat
				first = tonumber(tostring(first):sub(0, -2))
			until string.len(tostring(first)) <= 5
		end

		local chosen = suffixes[math.floor(second / 3)]

		if chosen ~= nil then
			local firsts = string.split(first, ".")

			if firsts[2] ~= nil then
				if string.len(firsts[2]) > 3 then
					repeat
						firsts[2] = tonumber(tostring(firsts[2]):sub(0, -2))
					until string.len(firsts[2]) <= 3
				end
			end

			if second / 3 == math.floor(second / 3) then
				if firsts[2] ~= nil then
					local firstsub = string.sub(firsts[2], 0, 3)
					if string.len(firstsub) == 0 then
						stringed = firsts[1]..chosen
					else
						stringed = firsts[1].."."..firstsub..chosen
					end
				else
					stringed = first..""..chosen
				end
			elseif (second + 1) / 3 == math.floor((second + 1) / 3) then
				if firsts[2] ~= nil then
					local firstsub = string.sub(firsts[2], 0, 2)
					local secondsub = string.sub(firsts[2], 2)
					if string.len(secondsub) == 0 then
						stringed = firsts[1]..firstsub.."0"..chosen
					elseif string.len(secondsub) == 2 then
						stringed = firsts[1]..firstsub.."."..secondsub..chosen
					else
						stringed = firsts[1]..firstsub.."."..secondsub..chosen
					end
				else
					if string.len(firsts[1]) == 1 then
						stringed = first.."00"..chosen
					else
						stringed = first.."0"..chosen
					end
				end
			elseif (second + 2) / 3 == math.floor((second + 2) / 3) then
				if firsts[2] ~= nil then
					local firstsub = string.sub(firsts[2], 0, 1)
					local secondsub = string.sub(firsts[2], 2)
					if string.len(secondsub) == 0 then
						stringed = firsts[1]..firstsub..chosen
					else
						stringed = firsts[1]..firstsub.."."..secondsub..chosen
					end
				else
					if string.len(firsts[1]) == 1 then
						stringed = first.."0"..chosen
					else
						stringed = first..""..chosen
					end
				end
			end
		end
	end

	if stringed == nil then
		local firstsub = string.sub(first, 0, 4)
		stringed = firstsub.."e+"..second
	end

	return stringed
end

return Number

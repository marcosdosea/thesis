library(effsize)
library(readxl)
library(graphics)

#RQ1 Qalingo 
qalingo <- read_excel("C:/Dropbox/Doutorado/Dados/RQ1/RQ1-15-web-qalingo.xlsx", sheet = "qalingo")

#Qalingo-LOC LARGE CONTROLLER=422 EXCEPTION=15
qalingo_LOC1=qalingo[qalingo[2]=="CONTROLLER" | qalingo[2]=="EXCEPTION",];
cliff_qalingo_LOC1 = cliff.delta(qalingo_LOC1$LOC,qalingo_LOC1$`Design Role`,return.dm=TRUE);
print(cliff_qalingo_LOC1);

#Qalingo-LOC MEDIUM UNDEFINED=485 ABSTRACTMESSAGEJMS=34
qalingo_LOC2=qalingo[qalingo[2]=="UNDEFINED" | qalingo[2]=="ABSTRACTMESSAGEJMS",];
cliff_qalingo_LOC2 = cliff.delta(qalingo_LOC2$LOC,qalingo_LOC2$`Design Role`,return.dm=TRUE);
print(cliff_qalingo_LOC2);

#Qalingo-cC LARGE CONTROLLER=422 EXCEPTION=15
qalingo_CC1=qalingo[qalingo[2]=="CONTROLLER" | qalingo[2]=="EXCEPTION",];
cliff_qalingo_CC1 = cliff.delta(qalingo_CC1$CC,qalingo_CC1$`Design Role`,return.dm=TRUE);
print(cliff_qalingo_CC1);

#Qalingo-cC MEDIUM PERSISTENCE=526 TEST=83
qalingo_CC2=qalingo[qalingo[2]=="PERSISTENCE" | qalingo[2]=="TEST",];
cliff_qalingo_CC2 = cliff.delta(qalingo_CC2$CC,qalingo_CC2$`Design Role`,return.dm=TRUE);
print(cliff_qalingo_CC2);

#Qalingo-Efferent LARGE CONTROLLER=422 EXCEPTION=15
qalingo_EFF1=qalingo[qalingo[2]=="CONTROLLER" | qalingo[2]=="EXCEPTION",];
cliff_qalingo_EFF1 = cliff.delta(qalingo_EFF1$Efferent,qalingo_EFF1$`Design Role`,return.dm=TRUE);
print(cliff_qalingo_EFF1);

#Qalingo-Efferent LARGE SERVICE=1458 ABSTRACTMESSAGEJMS=34
qalingo_EFF2=qalingo[qalingo[2]=="SERVICE" | qalingo[2]=="ABSTRACTMESSAGEJMS",];
cliff_qalingo_EFF2 = cliff.delta(qalingo_EFF2$Efferent,qalingo_EFF2$`Design Role`,return.dm=TRUE);
print(cliff_qalingo_EFF2);

#Qalingo-NOP LARGE [HANDLERINTERCEPTOR]=36 TEST=83
qalingo_NOP1=qalingo[qalingo[2]=="[HANDLERINTERCEPTOR]" | qalingo[2]=="TEST",];
cliff_qalingo_NOP1 = cliff.delta(qalingo_NOP1$NOP,qalingo_NOP1$`Design Role`,return.dm=TRUE);
print(cliff_qalingo_NOP1);

#Qalingo-NOP LARGE CONTROLLER=422 UNDEFINED=485
qalingo_NOP2=qalingo[qalingo[2]=="CONTROLLER" | qalingo[2]=="UNDEFINED",];
cliff_qalingo_NOP2 = cliff.delta(qalingo_NOP2$NOP,qalingo_NOP2$`Design Role`,return.dm=TRUE);
print(cliff_qalingo_NOP2);


#RQ1 OpenMRS 
openmrs <- read_excel("C:/Dropbox/Doutorado/Dados/RQ1/RQ1-14-web-openmrs.xlsx", sheet = "openmrs")

#OpenMRS-LOC LARGE URLCLASSLOADER=56 BASEOPENMRSOBJECT=2056
openmrs_LOC1=openmrs[openmrs[2]=="URLCLASSLOADER" | openmrs[2]=="BASEOPENMRSOBJECT",];
cliff_openmrs_LOC1 = cliff.delta(openmrs_LOC1$LOC,openmrs_LOC1$`Design Role`,return.dm=TRUE);
print(cliff_openmrs_LOC1);

#OpenMRS-LOC LARGE [SAVEHANDLER]=15 [DOSINGINTRUCTIONS]=36
openmrs_LOC2=openmrs[openmrs[2]=="[SAVEHANDLER]" | openmrs[2]=="[DOSINGINSTRUCTIONS]",];
cliff_openmrs_LOC2 = cliff.delta(openmrs_LOC2$LOC,openmrs_LOC2$`Design Role`,return.dm=TRUE);
print(cliff_openmrs_LOC2);

#OpenMRS-CC LARGE [SAVEHANDLER]=15 TEST=4088   
openmrs_CC1=openmrs[openmrs[2]=="[SAVEHANDLER]" | openmrs[2]=="TEST",];
cliff_openmrs_CC1 = cliff.delta(openmrs_CC1$CC,openmrs_CC1$`Design Role`,return.dm=TRUE);
print(cliff_openmrs_CC1);

#OpenMRS-CC LARGE [METHODBEFOREADVICE]=11 [DOSINGINSTRUCTIONS]=36   
openmrs_CC2=openmrs[openmrs[2]=="[METHODBEFOREADVICE]" | openmrs[2]=="[DOSINGINSTRUCTIONS]",];
cliff_openmrs_CC2 = cliff.delta(openmrs_CC2$CC,openmrs_CC2$`Design Role`,return.dm=TRUE);
print(cliff_openmrs_CC2);

#OpenMRS-Efferent LARGE [VOIDHANDLER]=5 BASEOPENMRSOBJECT=2056
openmrs_EF1=openmrs[openmrs[2]=="[VOIDHANDLER]" | openmrs[2]=="BASEOPENMRSOBJECT",];
cliff_openmrs_EF1 = cliff.delta(openmrs_EF1$Efferent,openmrs_EF1$`Design Role`,return.dm=TRUE);
print(cliff_openmrs_EF1);

#OpenMRS-Efferent LARGE [VALIDATOR]=105 TYPESAFEMATCHER=20
openmrs_EF2=openmrs[openmrs[2]=="[VALIDATOR]" | openmrs[2]=="TYPESAFEMATCHER",];
cliff_openmrs_EF2 = cliff.delta(openmrs_EF2$Efferent,openmrs_EF2$`Design Role`,return.dm=TRUE);
print(cliff_openmrs_EF2);

#OpenMRS-NOP LARGE [SAVEHANDLER]=15  [TRANSFORMOPERATOR]=7
openmrs_NOP1=openmrs[openmrs[2]=="[SAVEHANDLER]" | openmrs[2]=="[TRANSFORMOPERATOR]",];
cliff_openmrs_NOP1 = cliff.delta(openmrs_NOP1$NOP,openmrs_NOP1$`Design Role`,return.dm=TRUE);
print(cliff_openmrs_NOP1);

#OpenMRS-NOP LARGE [COMPARATOR]=59  ABSTRACTTASK=18
openmrs_NOP2=openmrs[openmrs[2]=="[COMPARATOR]" | openmrs[2]=="ABSTRACTTASK",];
cliff_openmrs_NOP2 = cliff.delta(openmrs_NOP2$NOP,openmrs_NOP2$`Design Role`,return.dm=TRUE);
print(cliff_openmrs_NOP2);


#RQ1 libreplan 
libreplan <- read_excel("C:/Dropbox/Doutorado/Dados/RQ1/RQ1-13-web-libreplan.xlsx", sheet = "libreplan")

#libreplan-LOC LARGE TEST=2217 JRABSTRACTSCRIPTLET=25
libreplan_LOC1=libreplan[libreplan[2]=="TEST" | libreplan[2]=="JRABSTRACTSCRIPTLET",];
cliff_libreplan_LOC1 = cliff.delta(libreplan_LOC1$LOC,libreplan_LOC1$`Design Role`,return.dm=TRUE);
print(cliff_libreplan_LOC1);

#libreplan-LOC LARGE MODEL=116 CRITERIONREQUIREMENTHANDLER=54
libreplan_LOC2=libreplan[libreplan[2]=="MODEL" | libreplan[2]=="CRITERIONREQUIREMENTHANDLER",];
cliff_libreplan_LOC2 = cliff.delta(libreplan_LOC2$LOC,libreplan_LOC2$`Design Role`,return.dm=TRUE);
print(cliff_libreplan_LOC2);

#libreplan-CC LARGE [IPREDICATE]=125 HOURSGROUPHANDLER=14
libreplan_CC1=libreplan[libreplan[2]=="[IPREDICATE]" | libreplan[2]=="HOURSGROUPHANDLER",];
cliff_libreplan_CC1 = cliff.delta(libreplan_CC1$CC,libreplan_CC1$`Design Role`,return.dm=TRUE);
print(cliff_libreplan_CC1);

#libreplan-CC MEDIUM MODEL=126 JRABSTRACTSCRIPTLET=25
libreplan_CC2=libreplan[libreplan[2]=="MODEL" | libreplan[2]=="JRABSTRACTSCRIPTLET",];
cliff_libreplan_CC2 = cliff.delta(libreplan_CC2$CC,libreplan_CC2$`Design Role`,return.dm=TRUE);
print(cliff_libreplan_CC2);

#libreplan-Efferent LARGE [IPREDICATE]=125 JRABSTRACTSCRIPTLET=25
libreplan_EFF1=libreplan[libreplan[2]=="[IPREDICATE]" | libreplan[2]=="JRABSTRACTSCRIPTLET",];
cliff_libreplan_EFF1 = cliff.delta(libreplan_EFF1$Efferent,libreplan_EFF1$`Design Role`,return.dm=TRUE);
print(cliff_libreplan_EFF1);

#libreplan-Efferent MEDIUM view=24 [COMPARATOR]=14
libreplan_EFF2=libreplan[libreplan[2]=="VIEW" | libreplan[2]=="[COMPARATOR]",];
cliff_libreplan_EFF2 = cliff.delta(libreplan_EFF2$Efferent,libreplan_EFF2$`Design Role`,return.dm=TRUE);
print(cliff_libreplan_EFF2);

#libreplan-NOP LARGE [IPREDICATE]=125 JRABSTRACTSCRIPTLET=25
libreplan_NOP1=libreplan[libreplan[2]=="[IPREDICATE]" | libreplan[2]=="JRABSTRACTSCRIPTLET",];
cliff_libreplan_NOP1 = cliff.delta(libreplan_NOP1$NOP,libreplan_NOP1$`Design Role`,return.dm=TRUE);
print(cliff_libreplan_NOP1);

#libreplan-NOP LARGE MODEL=116 TASK=36
libreplan_NOP2=libreplan[libreplan[2]=="MODEL" | libreplan[2]=="TASK",];
cliff_libreplan_NOP2 = cliff.delta(libreplan_NOP2$NOP,libreplan_NOP2$`Design Role`,return.dm=TRUE);
print(cliff_libreplan_NOP2);

#RQ1 heritrix 
heritrix <- read_excel("C:/Dropbox/Doutorado/Dados/RQ1/RQ1-12-web-heritrix.xlsx", sheet = "heritrix")

#heritrix-LOC LARGE DIALOG=12 [PROPERTYEDITOR]=24
heritrix_LOC1=heritrix[heritrix[2]=="DIALOG" | heritrix[2]=="[PROPERTYEDITOR]",];
cliff_heritrix_LOC1 = cliff.delta(heritrix_LOC1$LOC,heritrix_LOC1$`Design Role`,return.dm=TRUE);
print(cliff_heritrix_LOC1);

#heritrix-LOC LARGE RESOURCE=59 BASERULE=24
heritrix_LOC2=heritrix[heritrix[2]=="RESOURCE" | heritrix[2]=="BASERULE",];
cliff_heritrix_LOC2 = cliff.delta(heritrix_LOC2$LOC,heritrix_LOC2$`Design Role`,return.dm=TRUE);
print(cliff_heritrix_LOC2);

#heritrix-CC LARGE RECRAWLDATASCHEMABASE=6 [PROPERTYEDITOR]=24
heritrix_CC1=heritrix[heritrix[2]=="RECRAWLDATASCHEMABASE" | heritrix[2]=="[PROPERTYEDITOR]",];
cliff_heritrix_CC1 = cliff.delta(heritrix_CC1$CC,heritrix_CC1$`Design Role`,return.dm=TRUE);
print(cliff_heritrix_CC1);

#heritrix-CC MEDIUM [VALIDATOR]=7 DECIDERULE=234
heritrix_CC2=heritrix[heritrix[2]=="[VALIDATOR]" | heritrix[2]=="DECIDERULE",];
cliff_heritrix_CC2 = cliff.delta(heritrix_CC2$CC,heritrix_CC2$`Design Role`,return.dm=TRUE);
print(cliff_heritrix_CC2);

#heritrix-Efferent LARGE RECRAWLDATASCHEMABASE=6 [PROPERTYEDITOR]=24
heritrix_EFF1=heritrix[heritrix[2]=="RECRAWLDATASCHEMABASE" | heritrix[2]=="[PROPERTYEDITOR]",];
cliff_heritrix_EFF1 = cliff.delta(heritrix_EFF1$Efferent,heritrix_EFF1$`Design Role`,return.dm=TRUE);
print(cliff_heritrix_EFF1);

#heritrix-Efferent LARGE DIALOG=12 SERVERCACHE=20
heritrix_EFF2=heritrix[heritrix[2]=="DIALOG" | heritrix[2]=="SERVERCACHE",];
cliff_heritrix_EFF2 = cliff.delta(heritrix_EFF2$Efferent,heritrix_EFF2$`Design Role`,return.dm=TRUE);
print(cliff_heritrix_EFF2);

#heritrix-NOP LARGE [VALIDATOR]=6 TREEMAP=24
heritrix_NOP1=heritrix[heritrix[2]=="[VALIDATOR]" | heritrix[2]=="TREEMAP",];
cliff_heritrix_NOP1 = cliff.delta(heritrix_NOP1$NOP,heritrix_NOP1$`Design Role`,return.dm=TRUE);
print(cliff_heritrix_NOP1);

#heritrix-NOP MEDIUM DIALOG=12 ABSTRACTPROFILE=15
heritrix_NOP2=heritrix[heritrix[2]=="DIALOG" | heritrix[2]=="ABSTRACTPROFILE",];
cliff_heritrix_NOP2 = cliff.delta(heritrix_NOP2$NOP,heritrix_NOP2$`Design Role`,return.dm=TRUE);
print(cliff_heritrix_NOP2);

#RQ1 bigbluebutton 
bigbluebutton <- read_excel("C:/Dropbox/Doutorado/Dados/RQ1/RQ1-11-web-bigbluebutton.xlsx", sheet = "bigbluebutton")

#bigbluebutton-LOC LARGE CUMULATIVEPROTOCOLDECODER=20 RAW=28
bigbluebutton_LOC1=bigbluebutton[bigbluebutton[2]=="CUMULATIVEPROTOCOLDECODER" | bigbluebutton[2]=="RAW",];
cliff_bigbluebutton_LOC1 = cliff.delta(bigbluebutton_LOC1$LOC,bigbluebutton_LOC1$`Design Role`,return.dm=TRUE);
print(cliff_bigbluebutton_LOC1);

#bigbluebutton-LOC LARGE [CLOSEABLE]=46 [FLASHTOSIPTRANSCODER]=20
bigbluebutton_LOC2=bigbluebutton[bigbluebutton[2]=="[CLOSEABLE]" | bigbluebutton[2]=="[FLASHTOSIPTRANSCODER]",];
cliff_bigbluebutton_LOC2 = cliff.delta(bigbluebutton_LOC2$LOC,bigbluebutton_LOC2$`Design Role`,return.dm=TRUE);
print(cliff_bigbluebutton_LOC2);

#bigbluebutton-CC LARGE [CLOSEABLE]=46 VOICECONFERENCERECORDEVENT=26
bigbluebutton_CC1=bigbluebutton[bigbluebutton[2]=="[CLOSEABLE]" | bigbluebutton[2]=="VOICECONFERENCERECORDEVENT",];
cliff_bigbluebutton_CC1 = cliff.delta(bigbluebutton_CC1$CC,bigbluebutton_CC1$`Design Role`,return.dm=TRUE);
print(cliff_bigbluebutton_CC1);

#bigbluebutton-CC LARGE SERVERENGINE=47 [TRANSCODER]=26
bigbluebutton_CC2=bigbluebutton[bigbluebutton[2]=="SERVERENGINE" | bigbluebutton[2]=="[TRANSCODER]",];
cliff_bigbluebutton_CC2 = cliff.delta(bigbluebutton_CC2$CC,bigbluebutton_CC2$`Design Role`,return.dm=TRUE);
print(cliff_bigbluebutton_CC2);

#bigbluebutton-Efferent LARGE CUMULATIVEPROTOCOLDECODER=20 HEADER=260
bigbluebutton_EFF1=bigbluebutton[bigbluebutton[2]=="CUMULATIVEPROTOCOLDECODER" | bigbluebutton[2]=="HEADER",];
cliff_bigbluebutton_EFF1 = cliff.delta(bigbluebutton_EFF1$Efferent,bigbluebutton_EFF1$`Design Role`,return.dm=TRUE);
print(cliff_bigbluebutton_EFF1);

#bigbluebutton-Efferent MEDIUM [ISUBSCRIBEDMESSAGE]=268 ASYNCTASK=363
bigbluebutton_EFF2=bigbluebutton[bigbluebutton[2]=="[ISUBSCRIBEDMESSAGE]" | bigbluebutton[2]=="ASYNCTASK",];
cliff_bigbluebutton_EFF2 = cliff.delta(bigbluebutton_EFF2$Efferent,bigbluebutton_EFF2$`Design Role`,return.dm=TRUE);
print(cliff_bigbluebutton_EFF2);

#bigbluebutton-NOP LARGE [IEVENT]=10 PARSER=39
bigbluebutton_NOP1=bigbluebutton[bigbluebutton[2]=="[IEVENT]" | bigbluebutton[2]=="PARSER",];
cliff_bigbluebutton_NOP1 = cliff.delta(bigbluebutton_NOP1$NOP,bigbluebutton_NOP1$`Design Role`,return.dm=TRUE);
print(cliff_bigbluebutton_NOP1);

#bigbluebutton-NOP LARGE INDEXER=486 BASEMESSAGE=73
bigbluebutton_NOP2=bigbluebutton[bigbluebutton[2]=="INDEXER" | bigbluebutton[2]=="BASEMESSAGE",];
cliff_bigbluebutton_NOP2 = cliff.delta(bigbluebutton_NOP2$NOP,bigbluebutton_NOP2$`Design Role`,return.dm=TRUE);
print(cliff_bigbluebutton_NOP2);


# RQ1 Sonarlint
sonarlint <- read_excel("C:/Dropbox/Doutorado/Dados/RQ1/RQ1-10-eclipse-sonarlint.xlsx", sheet = "sonarlint")

#Sonarlint-LOC LARGE ABSTRACTHANDLER=15  [TRACKABLE]=78
sonarlint_LOC1=sonarlint[sonarlint[2]=="ABSTRACTHANDLER" | sonarlint[2]=="[TRACKABLE]",];
cliff_sonarlint_LOC1 = cliff.delta(sonarlint_LOC1$LOC,sonarlint_LOC1$`Design Role`,return.dm=TRUE);
print(cliff_sonarlint_LOC1);

#Sonarlint-LOC LARGE ACTION=25  MODEL=36
sonarlint_LOC2=sonarlint[sonarlint[2]=="ACTION" | sonarlint[2]=="MODEL",];
cliff_sonarlint_LOC2 = cliff.delta(sonarlint_LOC2$LOC,sonarlint_LOC2$`Design Role`,return.dm=TRUE);
print(cliff_sonarlint_LOC2);

#Sonarlint-CC LARGE ABSTRACTHANDLER=15    WRAPPEDTRACKABLE=24
sonarlint_CC1=sonarlint[sonarlint[2]=="ABSTRACTHANDLER" | sonarlint[2]=="WRAPPEDTRACKABLE",];
cliff_sonarlint_CC1 = cliff.delta(sonarlint_CC1$CC,sonarlint_CC1$`Design Role`,return.dm=TRUE);
print(cliff_sonarlint_CC1);

#Sonarlint-CC LARGE JOB=8    PLUGIN=24
sonarlint_CC2=sonarlint[sonarlint[2]=="JOB" | sonarlint[2]=="PLUGIN",];
cliff_sonarlint_CC2 = cliff.delta(sonarlint_CC2$CC,sonarlint_CC2$`Design Role`,return.dm=TRUE);
print(cliff_sonarlint_CC2);

#Sonarlint-EFFERENT LARGE WORKSPACEJOB=28    WRAPPEDTRACKABLE=24
sonarlint_EFF1=sonarlint[sonarlint[2]=="WORKSPACEJOB" | sonarlint[2]=="WRAPPEDTRACKABLE",];
cliff_sonarlint_EFF1 = cliff.delta(sonarlint_EFF1$Efferent,sonarlint_EFF1$`Design Role`,return.dm=TRUE);
print(cliff_sonarlint_EFF1);

#Sonarlint-EFFERENT LARGE PERSISTENCE=27    WINDOWS=16
sonarlint_EFF2=sonarlint[sonarlint[2]=="PERSISTENCE" | sonarlint[2]=="WINDOW",];
cliff_sonarlint_EFF2 = cliff.delta(sonarlint_EFF2$Efferent,sonarlint_EFF2$`Design Role`,return.dm=TRUE);
print(cliff_sonarlint_EFF2);

#Sonarlint-NOP LARGE WORKSPACEJOB=28    [TRACKABLE]=78
sonarlint_NOP1=sonarlint[sonarlint[2]=="WORKSPACEJOB" | sonarlint[2]=="[TRACKABLE]",];
cliff_sonarlint_NOP1 = cliff.delta(sonarlint_NOP1$NOP,sonarlint_NOP1$`Design Role`,return.dm=TRUE);
print(cliff_sonarlint_NOP1);

#Sonarlint-NOP LARGE ABSTRACTHANDLER=15    WRAPPEDTRACKABLE=24
sonarlint_NOP2=sonarlint[sonarlint[2]=="WORKSPACEJOB" | sonarlint[2]=="WRAPPEDTRACKABLE",];
cliff_sonarlint_NOP2 = cliff.delta(sonarlint_NOP2$NOP,sonarlint_NOP2$`Design Role`,return.dm=TRUE);
print(cliff_sonarlint_NOP2);

# RQ1 Drools
drools <- read_excel("C:/Dropbox/Doutorado/Dados/RQ1/RQ1-09-eclipse-droolsjbpm.xlsx", sheet = "drools")

#Drools-LOC LARGE [ILOGICALSTRUCTURETYPEDELEGATE]=4  COMMAND=73
drools_LOC1=drools[drools[2]=="[ILOGICALSTRUCTURETYPEDELEGATE]" | drools[2]=="COMMAND",];
cliff_drools_LOC1 = cliff.delta(drools_LOC1$LOC,drools_LOC1$`Design Role`,return.dm=TRUE);
print(cliff_drools_LOC1);

#Drools-LOC LARGE AUTHORIZATIONAUTHORITY=12  KIERESOURCEHANDLER=43
drools_LOC2=drools[drools[2]=="AUTHORIZATIONAUTHORITY" | drools[2]=="KIERESOURCEHANDLER",];
cliff_drools_LOC2 = cliff.delta(drools_LOC2$LOC,drools_LOC2$`Design Role`,return.dm=TRUE);
print(cliff_drools_LOC2);

#Drools-cC LARGE [ILOGICALSTRUCTURETYPEDELEGATE]=4  DAVCLIENT=63
drools_CC1=drools[drools[2]=="[ILOGICALSTRUCTURETYPEDELEGATE]" | drools[2]=="DAVCLIENT",];
cliff_drools_CC1 = cliff.delta(drools_CC1$CC,drools_CC1$`Design Role`,return.dm=TRUE);
print(cliff_drools_CC1);

#Drools-cC LARGE [IAUTHENTICATOR]=17  ABSTRACTCOMPLETIONPROCESSOR=112
drools_CC2=drools[drools[2]=="[IAUTHENTICATOR]" | drools[2]=="ABSTRACTCOMPLETIONPROCESSOR",];
cliff_drools_CC2 = cliff.delta(drools_CC2$CC,drools_CC2$`Design Role`,return.dm=TRUE);
print(cliff_drools_CC2);

#Drools-Efferent LARGE PANEL=121  DAVCLIENT=63
drools_EFF1=drools[drools[2]=="PANEL" | drools[2]=="DAVCLIENT",];
cliff_drools_EFF1 = cliff.delta(drools_EFF1$Efferent,drools_EFF1$`Design Role`,return.dm=TRUE);
print(cliff_drools_EFF1);

#Drools-Efferent LARGE PROPERTYDESCRIPTOR=36  ENTITY=63
drools_EFF2=drools[drools[2]=="PROPERTYDESCRIPTOR" | drools[2]=="ENTITY",];
cliff_drools_EFF2 = cliff.delta(drools_EFF2$Efferent,drools_EFF2$`Design Role`,return.dm=TRUE);
print(cliff_drools_EFF2);

#Drools-NOP LARGE [SKINPROVIDER]=121  DAVCLIENT=63
drools_NOP1=drools[drools[2]=="[SKINPROVIDER]" | drools[2]=="DAVCLIENT",];
cliff_drools_NOP1 = cliff.delta(drools_NOP1$NOP,drools_NOP1$`Design Role`,return.dm=TRUE);
print(cliff_drools_NOP1);

#Drools-NOP LARGE SERVICE=40  MODEL=146
drools_NOP1=drools[drools[2]=="SERVICE" | drools[2]=="MODEL",];
cliff_drools_NOP1 = cliff.delta(drools_NOP1$NOP,drools_NOP1$`Design Role`,return.dm=TRUE);
print(cliff_drools_NOP1);

# RQ1 ARDUINO
arduino <- read_excel("C:/Dropbox/Doutorado/Dados/RQ1/RQ1-08-eclipse-arduino.xlsx", sheet = "arduino")

#Arduino-LOC LARGE [IREALUPLOAD]=8  NLS=18
arduino_LOC1=arduino[arduino[2]=="[IREALUPLOAD]" | arduino[2]=="NLS",];
cliff_arduino_LOC1 = cliff.delta(arduino_LOC1$LOC,arduino_LOC1$`Design Role`,return.dm=TRUE);
print(cliff_arduino_LOC1);

#Arduino-LOC MEDIUM [MESSAGECONSUMER]=15  DIALOG=66
arduino_LOC2=arduino[arduino[2]=="[MESSAGECONSUMER]" | arduino[2]=="DIALOG",];
cliff_arduino_LOC2 = cliff.delta(arduino_LOC2$LOC,arduino_LOC2$`Design Role`,return.dm=TRUE);
print(cliff_arduino_LOC2);

#Arduino-CC LARGE CONST=58  DIALOG=66
arduino_CC1=arduino[arduino[2]=="CONST" | arduino[2]=="DIALOG",];
cliff_arduino_CC1 = cliff.delta(arduino_CC1$CC,arduino_CC1$`Design Role`,return.dm=TRUE);
print(cliff_arduino_CC1);

#Arduino-CC LARGE ABSTRACTHANDLER=20  ABSTRACTUIPLUGIN=19
arduino_CC2=arduino[arduino[2]=="ABSTRACTHANDLER" | arduino[2]=="ABSTRACTUIPLUGIN",];
cliff_arduino_CC2 = cliff.delta(arduino_CC2$CC,arduino_CC2$`Design Role`,return.dm=TRUE);
print(cliff_arduino_CC2);

#Arduino-Efferent LARGE [IREALUPLOAD]=8  NLS=18
arduino_EFF1=arduino[arduino[2]=="[IREALUPLOAD]" | arduino[2]=="NLS",];
cliff_arduino_EFF1 = cliff.delta(arduino_EFF1$Efferent,arduino_EFF1$`Design Role`,return.dm=TRUE);
print(cliff_arduino_EFF1);

#Arduino-Efferent MEDIUM ABSTRACTHANDLER=20  DIALOG=66
arduino_EFF2=arduino[arduino[2]=="ABSTRACTHANDLER" | arduino[2]=="DIALOG",];
cliff_arduino_EFF2 = cliff.delta(arduino_EFF2$Efferent,arduino_EFF2$`Design Role`,return.dm=TRUE);
print(cliff_arduino_EFF2);

#Arduino-NOP LARGE [IREALUPLOAD]=8  NLS=18
arduino_NOP1=arduino[arduino[2]=="[IREALUPLOAD]" | arduino[2]=="NLS",];
cliff_arduino_NOP1 = cliff.delta(arduino_NOP1$NOP,arduino_NOP1$`Design Role`,return.dm=TRUE);
print(cliff_arduino_NOP1);

#Arduino-NOP LARGE CONST=58  [MESSAGECONSUMER]=15
arduino_NOP2=arduino[arduino[2]=="CONST" | arduino[2]=="[MESSAGECONSUMER]",];
cliff_arduino_NOP2 = cliff.delta(arduino_NOP2$NOP,arduino_NOP2$`Design Role`,return.dm=TRUE);
print(cliff_arduino_NOP2);

# RQ1 angularJS
angularJS <- read_excel("C:/Dropbox/Doutorado/Dados/RQ1/RQ1-07-eclipse-angularjs.xlsx", sheet = "angularjs")

#AngularJS-LOC LARGE ABSTRACTHTMLANGULARVALIDATOR=6  NLS=6
angularJS_LOC1=angularJS[angularJS[2]=="ABSTRACTHTMLANGULARVALIDATOR" | angularJS[2]=="NLS",];
cliff_angularJS_LOC1 = cliff.delta(angularJS_LOC1$LOC,angularJS_LOC1$`Design Role`,return.dm=TRUE);
print(cliff_angularJS_LOC1);

#AngularJS-LOC LARGE DIALOG=25  PLUGIN=12
angularJS_LOC2=angularJS[angularJS[2]=="DIALOG" | angularJS[2]=="PLUGIN",];
cliff_angularJS_LOC2 = cliff.delta(angularJS_LOC2$LOC,angularJS_LOC2$`Design Role`,return.dm=TRUE);
print(cliff_angularJS_LOC2);

#AngularJS-CC LARGE PLUGIN=12  ABSTRACTHTMLANGULARVALIDATOR=6
angularJS_CC1=angularJS[angularJS[2]=="PLUGIN" | angularJS[2]=="ABSTRACTHTMLANGULARVALIDATOR",];
cliff_angularJS_CC1 = cliff.delta(angularJS_CC1$CC,angularJS_CC1$`Design Role`,return.dm=TRUE);
print(cliff_angularJS_CC1);

#AngularJS-CC MEDIUM MODEL=12  DIALOG=25
angularJS_CC2=angularJS[angularJS[2]=="MODEL" | angularJS[2]=="DIALOG",];
cliff_angularJS_CC2 = cliff.delta(angularJS_CC2$CC,angularJS_CC2$`Design Role`,return.dm=TRUE);
print(cliff_angularJS_CC2);

#AngularJS-Efferent LARGE PLUGIN=12  ABSTRACTHTMLANGULARVALIDATOR=6
angularJS_EFF1=angularJS[angularJS[2]=="PLUGIN" | angularJS[2]=="ABSTRACTHTMLANGULARVALIDATOR",];
cliff_angularJS_EFF1 = cliff.delta(angularJS_EFF1$Efferent,angularJS_EFF1$`Design Role`,return.dm=TRUE);
print(cliff_angularJS_EFF1);

#AngularJS-Efferent SMALL LABELPROVIDER=4  VIEW=202
angularJS_EFF2=angularJS[angularJS[2]=="LABELPROVIDER" | angularJS[2]=="VIEW",];
cliff_angularJS_EFF2 = cliff.delta(angularJS_EFF2$Efferent,angularJS_EFF2$`Design Role`,return.dm=TRUE);
print(cliff_angularJS_EFF2);

#AngularJS-NOP LARGE NLS=6  ABSTRACTHTMLANGULARVALIDATOR=6
angularJS_NOP1=angularJS[angularJS[2]=="NLS" | angularJS[2]=="ABSTRACTHTMLANGULARVALIDATOR",];
cliff_angularJS_NOP1 = cliff.delta(angularJS_NOP1$NOP,angularJS_NOP1$`Design Role`,return.dm=TRUE);
print(cliff_angularJS_NOP1);

#AngularJS-NOP MEDIUM TEST=6  ABSTRACTHTMLANGULARVALIDATOR=6
angularJS_NOP2=angularJS[angularJS[2]=="TEST" | angularJS[2]=="UNDEFINED",];
cliff_angularJS_NOP2 = cliff.delta(angularJS_NOP2$NOP,angularJS_NOP2$`Design Role`,return.dm=TRUE);
print(cliff_angularJS_NOP2);

# RQ1 Activiti
activiti <- read_excel("C:/Dropbox/Doutorado/Dados/RQ1/RQ1-06-eclipse-activiti.xlsx", sheet = "activiti")

#Activiti-LOC LARGE JOB=10  [BUNDLEACTIVATOR]=12
activiti_LOC1=activiti[activiti[2]=="JOB" | activiti[2]=="[BUNDLEACTIVATOR]",];
cliff_activiti_LOC1 = cliff.delta(activiti_LOC1$LOC,activiti_LOC1$`Design Role`,return.dm=TRUE);
print(cliff_activiti_LOC1);

#Activiti-LOC LARGE DEFAULTTOOLBEHAVIORPROVIDER=27  ABSTRACTOVERRIDEABLECOMMAND=18
activiti_LOC2=activiti[activiti[2]=="DEFAULTTOOLBEHAVIORPROVIDER" | activiti[2]=="ABSTRACTOVERRIDEABLECOMMAND",];
cliff_activiti_LOC2 = cliff.delta(activiti_LOC2$LOC,activiti_LOC2$`Design Role`,return.dm=TRUE);
print(cliff_activiti_LOC2);


#Activiti-CC LARGE [PROCESSVALIDATIONWORKER]=5  DIAGRAMEDITORCONTEXTMENUPROVIDER=6
activiti_CC1=activiti[activiti[2]=="[PROCESSVALIDATIONWORKER]" | activiti[2]=="DIAGRAMEDITORCONTEXTMENUPROVIDER",];
cliff_activiti_CC1 = cliff.delta(activiti_CC1$CC,activiti_CC1$`Design Role`,return.dm=TRUE);
print(cliff_activiti_CC1);

#Activiti-CC LARGE DEFAULTTOOLBEHAVIORPROVIDER=5  ABSTRACTUIPLUGIN=56
activiti_CC2=activiti[activiti[2]=="DEFAULTTOOLBEHAVIORPROVIDER" | activiti[2]=="ABSTRACTUIPLUGIN",];
cliff_activiti_CC2 = cliff.delta(activiti_CC2$CC,activiti_CC2$`Design Role`,return.dm=TRUE);
print(cliff_activiti_CC2);

#Activiti-EFF LARGE [BUNDLEACTIVATOR]=12  [PROCESSVALIDATIONWORKER]=5
activiti_EFF1=activiti[activiti[2]=="[PROCESSVALIDATIONWORKER]" | activiti[2]=="[BUNDLEACTIVATOR]",];
cliff_activiti_EFF1 = cliff.delta(activiti_EFF1$Efferent,activiti_EFF1$`Design Role`,return.dm=TRUE);
print(cliff_activiti_EFF1);

#Activiti-EFF LARGE ABSTRACTHANDLER=7  ENTITY=66
activiti_EFF2=activiti[activiti[2]=="ABSTRACTHANDLER" | activiti[2]=="ENTITY",];
cliff_activiti_EFF2 = cliff.delta(activiti_EFF2$Efferent,activiti_EFF2$`Design Role`,return.dm=TRUE);
print(cliff_activiti_EFF2);

#Activiti-NOP LARGE DIAGRAMEDITORCONTEXTMENUPROVIDER=6  ABSTRACTOVERRIDEABLECOMMAND=16
activiti_NOP1=activiti[activiti[2]=="DIAGRAMEDITORCONTEXTMENUPROVIDER" | activiti[2]=="ABSTRACTOVERRIDEABLECOMMAND",];
cliff_activiti_NOP1 = cliff.delta(activiti_NOP1$NOP,activiti_NOP1$`Design Role`,return.dm=TRUE);
print(cliff_activiti_NOP1);

#Activiti-NOP LARGE VIEW=223  CONTROLLER=221
activiti_NOP2=activiti[activiti[2]=="VIEW" | activiti[2]=="CONTROLLER",];
cliff_activiti_NOP2 = cliff.delta(activiti_NOP2$NOP,activiti_NOP2$`Design Role`,return.dm=TRUE);
print(cliff_activiti_NOP2);

# RQ1 TalonForTwitter
talon <- read_excel("C:/Dropbox/Doutorado/Dados/RQ1/RQ1-05-android-talonForTwitter.xlsx", sheet = "talon")

#Talon-LOC LARGE JSONTOKENER=10  ENTITY=29
talon_LOC1=talon[talon[2]=="JSONTOKENER" | talon[2]=="ENTITY",];
cliff_talon_LOC1 = cliff.delta(talon_LOC1$LOC,talon_LOC1$`Design Role`,return.dm=TRUE);
print(cliff_talon_LOC1);

#Talon-LOC LARGE PERSISTENCE=49  BROADCASTRECEIVER=6
talon_LOC2=talon[talon[2]=="PERSISTENCE" | talon[2]=="BROADCASTRECEIVER",];
cliff_talon_LOC2 = cliff.delta(talon_LOC2$LOC,talon_LOC2$`Design Role`,return.dm=TRUE);
print(cliff_talon_LOC2);

#Talon-CC LARGE JSONTOKENER=10  ENTITY=29
talon_CC1=talon[talon[2]=="JSONTOKENER" | talon[2]=="ENTITY",];
cliff_talon_CC1 = cliff.delta(talon_CC1$CC,talon_CC1$`Design Role`,return.dm=TRUE);
print(cliff_talon_CC1);

#Talon-CC SMALL PERSISTENCE=49  BROADCASTRECEIVER=6
talon_CC2=talon[talon[2]=="PERSISTENCE" | talon[2]=="BROADCASTRECEIVER",];
cliff_talon_CC2 = cliff.delta(talon_CC2$CC,talon_CC2$`Design Role`,return.dm=TRUE);
print(cliff_talon_CC2);

#Talon-Efferent LARGE BROADCASTRECEIVER=6  ENTITY=29
talon_EFF1=talon[talon[2]=="BROADCASTRECEIVER" | talon[2]=="ENTITY",];
cliff_talon_EFF1 = cliff.delta(talon_EFF1$Efferent,talon_EFF1$`Design Role`,return.dm=TRUE);
print(cliff_talon_EFF1);

#Talon-Efferent SMALL FRAGMENT=496  APIHELPER=36
talon_EFF2=talon[talon[2]=="FRAGMENT" | talon[2]=="APIHELPER",];
cliff_talon_EFF2 = cliff.delta(talon_EFF2$Efferent,talon_EFF2$`Design Role`,return.dm=TRUE);
print(cliff_talon_EFF2);

#Talon-NOP LARGE BROADCASTRECEIVER=6  JSONTOKENER=10
talon_NOP1=talon[talon[2]=="BROADCASTRECEIVER" | talon[2]=="JSONTOKENER",];
cliff_talon_NOP1 = cliff.delta(talon_NOP1$NOP,talon_NOP1$`Design Role`,return.dm=TRUE);
print(cliff_talon_NOP1);

#Talon-NOP LARGE ENTITY=29  ADAPTER=295
talon_NOP2=talon[talon[2]=="ENTITY" | talon[2]=="ADAPTER",];
cliff_talon_NOP2 = cliff.delta(talon_NOP2$NOP,talon_NOP2$`Design Role`,return.dm=TRUE);
print(cliff_talon_NOP2);

# RQ1 SMSBackup
smsBackup <- read_excel("C:/Dropbox/Doutorado/Dados/RQ1/RQ1-04-android-smsBackup.xlsx", sheet = "SMS")

#SMSBackup-LOC LARGE PERSISTENCE=41  ACTIVITY=28
smsBackup_LOC1=smsBackup[smsBackup[2]=="PERSISTENCE" | smsBackup[2]=="ACTIVITY",];
cliff_smsBackup_LOC1 = cliff.delta(smsBackup_LOC1$LOC,smsBackup_LOC1$`Design Role`,return.dm=TRUE);
print(cliff_smsBackup_LOC1);

#SMSBackup-LOC SMALL UNDEFINED=319  ASYNCTASK=48
smsBackup_LOC2=smsBackup[smsBackup[2]=="UNDEFINED" | smsBackup[2]=="ASYNCTASK",];
cliff_smsBackup_LOC2 = cliff.delta(smsBackup_LOC2$LOC,smsBackup_LOC2$`Design Role`,return.dm=TRUE);
print(cliff_smsBackup_LOC2);

#SMSBackup-cC LARGE ACTIVITY=28  TEST=245
smsBackup_CC1=smsBackup[smsBackup[2]=="ACTIVITY" | smsBackup[2]=="TEST",];
cliff_smsBackup_CC1 = cliff.delta(smsBackup_CC1$CC,smsBackup_CC1$`Design Role`,return.dm=TRUE);
print(cliff_smsBackup_CC1);

#SMSBackup-cC SMALL PERSISTENCE=41  [CALENDARACCESSOR]=9
smsBackup_CC2=smsBackup[smsBackup[2]=="PERSISTENCE" | smsBackup[2]=="[CALENDARACCESSOR]",];
cliff_smsBackup_CC2 = cliff.delta(smsBackup_CC2$CC,smsBackup_CC2$`Design Role`,return.dm=TRUE);
print(cliff_smsBackup_CC2);

#SMSBackup-Efferent LARGE [CONTACTACCESSOR]=6  EXCEPTION=10
smsBackup_EFF1=smsBackup[smsBackup[2]=="[CONTACTACCESSOR]" | smsBackup[2]=="EXCEPTION",];
cliff_smsBackup_EFF1 = cliff.delta(smsBackup_EFF1$Efferent,smsBackup_EFF1$`Design Role`,return.dm=TRUE);
print(cliff_smsBackup_EFF1);

#SMSBackup-Efferent MEDIUM BROADCASTRECEIVER=12  ACTIVITY=28
smsBackup_EFF2=smsBackup[smsBackup[2]=="BROADCASTRECEIVER" | smsBackup[2]=="ACTIVITY",];
cliff_smsBackup_EFF2 = cliff.delta(smsBackup_EFF2$Efferent,smsBackup_EFF2$`Design Role`,return.dm=TRUE);
print(cliff_smsBackup_EFF2);

#SMSBackup-NOP LARGE [CONTACTACCESSOR]=6  TEST=246
smsBackup_NOP1=smsBackup[smsBackup[2]=="[CONTACTACCESSOR]" | smsBackup[2]=="TEST",];
cliff_smsBackup_NOP1 = cliff.delta(smsBackup_NOP1$NOP,smsBackup_NOP1$`Design Role`,return.dm=TRUE);
print(cliff_smsBackup_NOP1);

#SMSBackup-NOP MEDIUM [CALENDARACCESSOR]=8  EXCEPTION=10
smsBackup_NOP2=smsBackup[smsBackup[2]=="[CALENDARACCESSOR]" | smsBackup[2]=="EXCEPTION",];
cliff_smsBackup_NOP2 = cliff.delta(smsBackup_NOP2$NOP,smsBackup_NOP2$`Design Role`,return.dm=TRUE);
print(cliff_smsBackup_NOP2);


# RQ1 K9MAIL
k9mail <- read_excel("C:/Dropbox/Doutorado/Dados/RQ1/RQ1-03-android-k9mail.xlsx", sheet = "k-9")

#k9mail-LOC LARGE BROADCASTRECEIVER=17  BODYPART=28
k9mail_LOC1=k9mail[k9mail[2]=="BROADCASTRECEIVER" | k9mail[2]=="BODYPART",];
cliff_k9mail_LOC1 = cliff.delta(k9mail_LOC1$LOC,k9mail_LOC1$`Design Role`,return.dm=TRUE);
print(cliff_k9mail_LOC1);

#k9mail-LOC MEDIUM SERVICE=83  VIEW=525
k9mail_LOC2=k9mail[k9mail[2]=="SERVICE" | k9mail[2]=="VIEW",];
cliff_k9mail_LOC2 = cliff.delta(k9mail_LOC2$LOC,k9mail_LOC2$`Design Role`,return.dm=TRUE);
print(cliff_k9mail_LOC2);

#k9mail-CC LARGE TRANSPORT=28  SERVERSETTINGS=6
k9mail_CC1=k9mail[k9mail[2]=="TRANSPORT" | k9mail[2]=="SERVERSETTINGS",];
cliff_k9mail_CC1 = cliff.delta(k9mail_CC1$CC,k9mail_CC1$`Design Role`,return.dm=TRUE);
print(cliff_k9mail_CC1);

#k9mail-CC MEDIUM ACTIVITY=569  BROADCASTRECEIVER=17
k9mail_CC2=k9mail[k9mail[2]=="ACTIVITY" | k9mail[2]=="BROADCASTRECEIVER",];
cliff_k9mail_CC2 = cliff.delta(k9mail_CC2$CC,k9mail_CC2$`Design Role`,return.dm=TRUE);
print(cliff_k9mail_CC2);

#k9mail-Efferent LARGE NOTIFICATION=33  DIALOG=39
k9mail_EFF1=k9mail[k9mail[2]=="NOTIFICATION" | k9mail[2]=="DIALOG",];
cliff_k9mail_EFF1 = cliff.delta(k9mail_EFF1$Efferent,k9mail_EFF1$`Design Role`,return.dm=TRUE);
print(cliff_k9mail_EFF1);

#k9mail-Efferent LARGE BROADCASTRECEIVER=17  ADAPTER=33
k9mail_EFF2=k9mail[k9mail[2]=="BROADCASTRECEIVER" | k9mail[2]=="ADAPTER",];
cliff_k9mail_EFF2 = cliff.delta(k9mail_EFF2$Efferent,k9mail_EFF2$`Design Role`,return.dm=TRUE);
print(cliff_k9mail_EFF2);

#k9mail-NOP LARGE BROADCASTRECEIVER=17  TEST=958
k9mail_NOP1=k9mail[k9mail[2]=="BROADCASTRECEIVER" | k9mail[2]=="PERSISTENCE",];
cliff_k9mail_NOP1 = cliff.delta(k9mail_NOP1$NOP,k9mail_NOP1$`Design Role`,return.dm=TRUE);
print(cliff_k9mail_NOP1);

#k9mail-NOP LARGE MESSAGE=124  NOTIFICATION=33
k9mail_NOP2=k9mail[k9mail[2]=="MESSAGE" | k9mail[2]=="NOTIFICATION",];
cliff_k9mail_NOP2 = cliff.delta(k9mail_NOP2$NOP,k9mail_NOP2$`Design Role`,return.dm=TRUE);
print(cliff_k9mail_NOP2);


# RQ1 EXOPLAYER
exoplayer <- read_excel("C:/Dropbox/Doutorado/Dados/RQ1/RQ1-02-android-exoplayer.xlsx", sheet = "exoplayer")

#EXOPLAYER-LOC LARGE SIMPLEDECODER=31  [DASHSEGMENTINDEX]=16
exoplayer_LOC1=exoplayer[exoplayer[2]=="SIMPLEDECODER" | exoplayer[2]=="[DASHSEGMENTINDEX]",];
cliff_exoplayer_LOC1 = cliff.delta(exoplayer_LOC1$LOC,exoplayer_LOC1$`Design Role`,return.dm=TRUE);
print(cliff_exoplayer_LOC1);

#EXOPLAYER-LOC LARGE TEST=475  [FACTORY]=14
exoplayer_LOC2=exoplayer[exoplayer[2]=="TEST" | exoplayer[2]=="[FACTORY]",];
cliff_exoplayer_LOC2 = cliff.delta(exoplayer_LOC2$LOC,exoplayer_LOC2$`Design Role`,return.dm=TRUE);
print(cliff_exoplayer_LOC2);

#EXOPLAYER-CC LARGE SIMPLEDECODER=31  [FACTORY]=14
exoplayer_CC1=exoplayer[exoplayer[2]=="SIMPLEDECODER" | exoplayer[2]=="[FACTORY]",];
cliff_exoplayer_CC1 = cliff.delta(exoplayer_CC1$CC,exoplayer_CC1$`Design Role`,return.dm=TRUE);
print(cliff_exoplayer_CC1);

#EXOPLAYER-CC LARGE ID3FRAME=6  [DATASINK]=11
  exoplayer_CC2=exoplayer[exoplayer[2]=="ID3FRAME" | exoplayer[2]=="[DATASINK]",];
  cliff_exoplayer_CC2 = cliff.delta(exoplayer_CC2$CC,exoplayer_CC2$`Design Role`,return.dm=TRUE);
  print(cliff_exoplayer_CC2);

#EXOPLAYER-EFFERENT LARGE HLSPLAYLIST=7  EXCEPTION=24
exoplayer_EFF1=exoplayer[exoplayer[2]=="HLSPLAYLIST" | exoplayer[2]=="EXCEPTION",];
cliff_exoplayer_EFF1 = cliff.delta(exoplayer_EFF1$Efferent,exoplayer_EFF1$`Design Role`,return.dm=TRUE);
print(cliff_exoplayer_EFF1);

#EXOPLAYER-EFFERENT LARGE SIMPLEDECODER=31  ASYNCTASK=17
exoplayer_EFF2=exoplayer[exoplayer[2]=="SIMPLEDECODER" | exoplayer[2]=="ASYNCTASK",];
cliff_exoplayer_EFF2 = cliff.delta(exoplayer_EFF2$Efferent,exoplayer_EFF2$`Design Role`,return.dm=TRUE);
print(cliff_exoplayer_EFF2);

#EXOPLAYER-NOP LARGE HLSPLAYLIST=7  TEST =24
exoplayer_NOP1=exoplayer[exoplayer[2]=="HLSPLAYLIST" | exoplayer[2]=="TEST",];
cliff_exoplayer_NOP1 = cliff.delta(exoplayer_NOP1$NOP,exoplayer_NOP1$`Design Role`,return.dm=TRUE);
print(cliff_exoplayer_NOP1);

#EXOPLAYER-NOP LARGE [FACTORY]=14  ASYNCTASK =17
exoplayer_NOP2=exoplayer[exoplayer[2]=="[FACTORY]" | exoplayer[2]=="ASYNCTASK",];
cliff_exoplayer_NOP2 = cliff.delta(exoplayer_NOP2$NOP,exoplayer_NOP2$`Design Role`,return.dm=TRUE);
print(cliff_exoplayer_NOP2);

# RQ1 Bitcoin
bitcoin <- read_excel("C:/Dropbox/Doutorado/Dados/RQ1/RQ1-01-android-bitcoinwallet.xlsx", sheet = "bitcoin")

#Bitcoin-LOC small Service =56m  view=57m
bitcoin_LOC1=bitcoin[bitcoin[2]=="SERVICE" | bitcoin[2]=="VIEW",];
cliff_bitcoin_LOC1 = cliff.delta(bitcoin_LOC1$LOC,bitcoin_LOC1$`Design Role`,return.dm=TRUE);
print(cliff_bitcoin_LOC1);

#Bitcoin-LOC medium Entity=54m
bitcoin_LOC2=bitcoin[bitcoin[2]=="SERVICE" | bitcoin[2]=="ENTITY",];
cliff_bitcoin_LOC2 = cliff.delta(bitcoin_LOC2$LOC,bitcoin_LOC2$`Design Role`,return.dm=TRUE);
print(cliff_bitcoin_LOC2);

#Bitcoin-CC small ADAPTER=15  ENTITY=54
bitcoin_CC1=bitcoin[bitcoin[2]=="ADAPTER" | bitcoin[2]=="ENTITY",];
cliff_bitcoin_CC1 = cliff.delta(bitcoin_CC1$CC,bitcoin_CC1$`Design Role`,return.dm=TRUE);
print(cliff_bitcoin_CC1);

#Bitcoin-CC MEDIUM ADAPTER=15 TEST=16
bitcoin_CC1=bitcoin[bitcoin[2]=="ADAPTER" | bitcoin[2]=="TEST",];
cliff_bitcoin_CC1 = cliff.delta(bitcoin_CC1$CC,bitcoin_CC1$`Design Role`,return.dm=TRUE);
print(cliff_bitcoin_CC1);

#Bitcoin-EFFERENT MEDIUM PERSISTENCE=39 ACTIVITY=173
bitcoin_EF1=bitcoin[bitcoin[2]=="PERSISTENCE" | bitcoin[2]=="ACTIVITY",];
cliff_bitcoin_EF1 = cliff.delta(bitcoin_EF1$Efferent,bitcoin_EF1$`Design Role`,return.dm=TRUE);
print(cliff_bitcoin_EF1);

#Bitcoin-EFFERENT SMALL SERVICE=56 TEST=16
bitcoin_EF2=bitcoin[bitcoin[2]=="SERVICE" | bitcoin[2]=="TEST",];
cliff_bitcoin_EF2 = cliff.delta(bitcoin_EF2$Efferent,bitcoin_EF2$`Design Role`,return.dm=TRUE);
print(cliff_bitcoin_EF2);

#Bitcoin-NOP LARGE PERSISTENCE=39 TEST=16
bitcoin_NOP1=bitcoin[bitcoin[2]=="PERSISTENCE" | bitcoin[2]=="TEST",];
cliff_bitcoin_NOP1 = cliff.delta(bitcoin_NOP1$NOP,bitcoin_NOP1$`Design Role`,return.dm=TRUE);
print(cliff_bitcoin_NOP1);

#Bitcoin-NOP SMALL ADAPTER=15 ENTITY=54
bitcoin_NOP2=bitcoin[bitcoin[2]=="ADAPTER" | bitcoin[2]=="ENTITY",];
cliff_bitcoin_NOP2 = cliff.delta(bitcoin_NOP2$NOP,bitcoin_NOP2$`Design Role`,return.dm=TRUE);
print(cliff_bitcoin_NOP2);


#Boxplot bigbluebutton LOC
bigbluebutton_LOC <- read_excel("C:/Dropbox/Doutorado/Dados/RQ1/RQ1-11-web-bigbluebutton.xlsx", sheet = "selected-loc");
View(bigbluebutton_LOC);
boxplot(bigbluebutton_LOC$LOC ~ bigbluebutton_LOC$DR, col="grey", ylab="Lines of Code",  las=2);

#Boxplot bigbluebutton CC
bigbluebutton_CC <- read_excel("C:/Dropbox/Doutorado/Dados/RQ1/RQ1-11-web-bigbluebutton.xlsx", sheet = "selected-cc");
View(bigbluebutton_CC);
boxplot(bigbluebutton_CC$CC ~ bigbluebutton_CC$DR, col="grey", ylab="Cyclomatic Complexity",  las=2);

#Boxplot bigbluebutton EFF
bigbluebutton_EFF <- read_excel("C:/Dropbox/Doutorado/Dados/RQ1/RQ1-11-web-bigbluebutton.xlsx", sheet = "selected-eff");
View(bigbluebutton_EFF);
boxplot(bigbluebutton_EFF$Efferent ~ bigbluebutton_EFF$DR, col="grey", ylab="Efferent Coupling",  las=2);

#Boxplot bigbluebutton NOP
bigbluebutton_NOP <- read_excel("C:/Dropbox/Doutorado/Dados/RQ1/RQ1-11-web-bigbluebutton.xlsx", sheet = "selected-nop");
View(bigbluebutton_NOP);
boxplot(bigbluebutton_NOP$NOP ~ bigbluebutton_NOP$DR, col="grey", ylab="Number of Parameters",  las=2);



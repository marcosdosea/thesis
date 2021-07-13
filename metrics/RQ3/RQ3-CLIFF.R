library(effsize)
library(readxl)
library(graphics)

#RQ3 Qalingo 
qalingo <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-15-web-qalingo.xlsx", sheet = "Entity")

#Qalingo-LOC NEGLIGIBLE 
qalingo_LOC1=qalingo[qalingo[2]=="0.8.0" | qalingo[2]=="HEAD",];
cliff_qalingo_LOC1 = cliff.delta(qalingo_LOC1$LOC,qalingo_LOC1$Tag,return.dm=TRUE);
print(cliff_qalingo_LOC1);

#Qalingo-cC NEGLIGIBLE 
qalingo_CC1=qalingo[qalingo[2]=="0.8.0" | qalingo[2]=="HEAD",];
cliff_qalingo_CC1 = cliff.delta(qalingo_CC1$CC,qalingo_CC1$Tag,return.dm=TRUE);
print(cliff_qalingo_CC1);

#Qalingo-Efferent NEGLIGIBLE
qalingo_EFF1=qalingo[qalingo[2]=="0.8.0" | qalingo[2]=="HEAD",];
cliff_qalingo_EFF1 = cliff.delta(qalingo_EFF1$Efferent,qalingo_EFF1$Tag,return.dm=TRUE);
print(cliff_qalingo_EFF1);

#Qalingo-NOP NEGLIGIBLE 
qalingo_NOP1=qalingo[qalingo[2]=="0.8.0" | qalingo[2]=="HEAD",];
cliff_qalingo_NOP1 = cliff.delta(qalingo_NOP1$NOP,qalingo_NOP1$Tag,return.dm=TRUE);
print(cliff_qalingo_NOP1);

#RQ3 OpenMRS 
openmrs <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-14-web-openmrs.xlsx", sheet = "Entity")

#OpenMRS-LOC SMALL
openmrs_LOC1=openmrs[openmrs[2]=="HEAD" | openmrs[2]=="1.9.11",];
cliff_openmrs_LOC1 = cliff.delta(openmrs_LOC1$LOC,openmrs_LOC1$Tag,return.dm=TRUE);
print(cliff_openmrs_LOC1);

#OpenMRS-CC SMALL    
openmrs_CC1=openmrs[openmrs[2]=="HEAD" | openmrs[2]=="1.9.11",];
cliff_openmrs_CC1 = cliff.delta(openmrs_CC1$CC,openmrs_CC1$Tag,return.dm=TRUE);
print(cliff_openmrs_CC1);

#OpenMRS-Efferent SMALL
openmrs_EF1=openmrs[openmrs[2]=="HEAD" | openmrs[2]=="1.9.11",];
cliff_openmrs_EF1 = cliff.delta(openmrs_EF1$Efferent,openmrs_EF1$Tag,return.dm=TRUE);
print(cliff_openmrs_EF1);

#OpenMRS-NOP NEGLEGIBLE
openmrs_NOP1=openmrs[openmrs[2]=="HEAD" | openmrs[2]=="1.9.11",];
cliff_openmrs_NOP1 = cliff.delta(openmrs_NOP1$NOP,openmrs_NOP1$Tag,return.dm=TRUE);
print(cliff_openmrs_NOP1);

openmrs <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-14-web-openmrs.xlsx", sheet = "View")

#OpenMRS-LOC SMALL
openmrs_LOC1=openmrs[openmrs[2]=="HEAD" | openmrs[2]=="1.9.11",];
cliff_openmrs_LOC1 = cliff.delta(openmrs_LOC1$LOC,openmrs_LOC1$Tag,return.dm=TRUE);
print(cliff_openmrs_LOC1);

#OpenMRS-CC SMALL    
openmrs_CC1=openmrs[openmrs[2]=="HEAD" | openmrs[2]=="1.9.11",];
cliff_openmrs_CC1 = cliff.delta(openmrs_CC1$CC,openmrs_CC1$Tag,return.dm=TRUE);
print(cliff_openmrs_CC1);

#OpenMRS-Efferent SMALL
openmrs_EF1=openmrs[openmrs[2]=="HEAD" | openmrs[2]=="1.9.11",];
cliff_openmrs_EF1 = cliff.delta(openmrs_EF1$Efferent,openmrs_EF1$Tag,return.dm=TRUE);
print(cliff_openmrs_EF1);

#OpenMRS-NOP NEGLEGIBLE
openmrs_NOP1=openmrs[openmrs[2]=="HEAD" | openmrs[2]=="1.9.11",];
cliff_openmrs_NOP1 = cliff.delta(openmrs_NOP1$NOP,openmrs_NOP1$Tag,return.dm=TRUE);
print(cliff_openmrs_NOP1);


#RQ3 libreplan 
libreplan <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-13-web-libreplan.xlsx", sheet = "Entity")

#libreplan-LOC  NEGLEGIBLE
libreplan_LOC1=libreplan[libreplan[2]=="HEAD" | libreplan[2]=="1.3.3",];
cliff_libreplan_LOC1 = cliff.delta(libreplan_LOC1$LOC,libreplan_LOC1$Tag,return.dm=TRUE);
print(cliff_libreplan_LOC1);

#libreplan-CC NEGLEGIBLE
libreplan_CC1=libreplan[libreplan[2]=="HEAD" | libreplan[2]=="1.3.3",];
cliff_libreplan_CC1 = cliff.delta(libreplan_CC1$CC,libreplan_CC1$Tag,return.dm=TRUE);
print(cliff_libreplan_CC1);

#libreplan-Efferent  NEGLEGIBLE
libreplan_EFF1=libreplan[libreplan[2]=="HEAD" | libreplan[2]=="1.3.3",];
cliff_libreplan_EFF1 = cliff.delta(libreplan_EFF1$Efferent,libreplan_EFF1$Tag,return.dm=TRUE);
print(cliff_libreplan_EFF1);

#libreplan-NOP NEGLEGIBLE
libreplan_NOP1=libreplan[libreplan[2]=="HEAD" | libreplan[2]=="1.3.3",];
cliff_libreplan_NOP1 = cliff.delta(libreplan_NOP1$NOP,libreplan_NOP1$Tag,return.dm=TRUE);
print(cliff_libreplan_NOP1);

#RQ3 heritrix 
heritrix <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-12-web-heritrix.xlsx", sheet = "View")

#heritrix-LOC NEGLIGIBLE
heritrix_LOC1=heritrix[heritrix[2]=="HEAD" | heritrix[2]=="r2016-05-09",];
cliff_heritrix_LOC1 = cliff.delta(heritrix_LOC1$LOC,heritrix_LOC1$Tag,return.dm=TRUE);
print(cliff_heritrix_LOC1);

#heritrix-CC NEGLIGIBLE
heritrix_CC1=heritrix[heritrix[2]=="HEAD" | heritrix[2]=="r2016-05-09",];
cliff_heritrix_CC1 = cliff.delta(heritrix_CC1$CC,heritrix_CC1$Tag,return.dm=TRUE);
print(cliff_heritrix_CC1);

#heritrix-Efferent NEGLIGIBLE
heritrix_EFF1=heritrix[heritrix[2]=="HEAD" | heritrix[2]=="r2016-05-09",];
cliff_heritrix_EFF1 = cliff.delta(heritrix_EFF1$Efferent,heritrix_EFF1$Tag,return.dm=TRUE);
print(cliff_heritrix_EFF1);

#heritrix-NOP NEGLIGIBLE
heritrix_NOP1=heritrix[heritrix[2]=="HEAD" | heritrix[2]=="r2016-05-09",];
cliff_heritrix_NOP1 = cliff.delta(heritrix_NOP1$NOP,heritrix_NOP1$Tag,return.dm=TRUE);
print(cliff_heritrix_NOP1);

#RQ3 bigbluebutton 
bigbluebutton <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-11-web-bigbluebutton.xlsx", sheet = "Entity")

#bigbluebutton-LOC NEGLIGIBLE
bigbluebutton_LOC1=bigbluebutton[bigbluebutton[2]=="HEAD" | bigbluebutton[2]=="0.9.2",];
cliff_bigbluebutton_LOC1 = cliff.delta(bigbluebutton_LOC1$LOC,bigbluebutton_LOC1$Tag,return.dm=TRUE);
print(cliff_bigbluebutton_LOC1);

#bigbluebutton-CC NEGLIGIBLE
bigbluebutton_CC1=bigbluebutton[bigbluebutton[2]=="HEAD" | bigbluebutton[2]=="0.9.2",];
cliff_bigbluebutton_CC1 = cliff.delta(bigbluebutton_CC1$CC,bigbluebutton_CC1$Tag,return.dm=TRUE);
print(cliff_bigbluebutton_CC1);

#bigbluebutton-Efferent NEGLIGIBLE
bigbluebutton_EFF1=bigbluebutton[bigbluebutton[2]=="HEAD" | bigbluebutton[2]=="0.9.2",];
cliff_bigbluebutton_EFF1 = cliff.delta(bigbluebutton_EFF1$Efferent,bigbluebutton_EFF1$Tag,return.dm=TRUE);
print(cliff_bigbluebutton_EFF1);

#bigbluebutton-NOP NEGLIGIBLE
bigbluebutton_NOP1=bigbluebutton[bigbluebutton[2]=="HEAD" | bigbluebutton[2]=="0.9.2",];
cliff_bigbluebutton_NOP1 = cliff.delta(bigbluebutton_NOP1$NOP,bigbluebutton_NOP1$Tag,return.dm=TRUE);
print(cliff_bigbluebutton_NOP1);

# RQ3 Sonarlint
sonarlint <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-10-eclipse-sonarlint.xlsx", sheet = "View")

#Sonarlint-LOC NEGLIGIBLE
sonarlint_LOC1=sonarlint[sonarlint[2]=="HEAD" | sonarlint[2]=="2.1.0",];
cliff_sonarlint_LOC1 = cliff.delta(sonarlint_LOC1$LOC,sonarlint_LOC1$Tag,return.dm=TRUE);
print(cliff_sonarlint_LOC1);

#Sonarlint-CC NEGLIGIBLE
sonarlint_CC1=sonarlint[sonarlint[2]=="HEAD" | sonarlint[2]=="2.1.0",];
cliff_sonarlint_CC1 = cliff.delta(sonarlint_CC1$CC,sonarlint_CC1$Tag,return.dm=TRUE);
print(cliff_sonarlint_CC1);
 
#Sonarlint-EFFERENT NEGLIGIBLE
sonarlint_EFF1=sonarlint[sonarlint[2]=="HEAD" | sonarlint[2]=="2.1.0",];
cliff_sonarlint_EFF1 = cliff.delta(sonarlint_EFF1$Efferent,sonarlint_EFF1$Tag,return.dm=TRUE);
print(cliff_sonarlint_EFF1);

#Sonarlint-NOP NEGLIGIBLE
sonarlint_NOP1=sonarlint[sonarlint[2]=="HEAD" | sonarlint[2]=="2.1.0",];
cliff_sonarlint_NOP1 = cliff.delta(sonarlint_NOP1$NOP,sonarlint_NOP1$Tag,return.dm=TRUE);
print(cliff_sonarlint_NOP1);

# RQ3 Drools
drools <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-09-eclipse-droolsjbpm.xlsx", sheet = "dialog")

#Drools-LOC NEGLIGIBLE
drools_LOC1=drools[drools[2]=="HEAD" | drools[2]=="6.3.0.Final",];
cliff_drools_LOC1 = cliff.delta(drools_LOC1$LOC,drools_LOC1$Tag,return.dm=TRUE);
print(cliff_drools_LOC1);

#Drools-cC NEGLIGIBLE
drools_CC1=drools[drools[2]=="HEAD" | drools[2]=="6.3.0.Final",];
cliff_drools_CC1 = cliff.delta(drools_CC1$CC,drools_CC1$Tag,return.dm=TRUE);
print(cliff_drools_CC1);

#Drools-Efferent NEGLIGIBLE
drools_EFF1=drools[drools[2]=="HEAD" | drools[2]=="6.3.0.Final",];
cliff_drools_EFF1 = cliff.delta(drools_EFF1$Efferent,drools_EFF1$Tag,return.dm=TRUE);
print(cliff_drools_EFF1);

#Drools-NOP NEGLIGIBLE
drools_NOP1=drools[drools[2]=="HEAD" | drools[2]=="6.3.0.Final",];
cliff_drools_NOP1 = cliff.delta(drools_NOP1$NOP,drools_NOP1$Tag,return.dm=TRUE);
print(cliff_drools_NOP1);

# RQ3 ARDUINO
arduino <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-08-eclipse-arduino.xlsx", sheet = "view")

#Arduino-LOC NEGLIGIBLE
arduino_LOC1=arduino[arduino[2]=="HEAD" | arduino[2]=="2.4",];
cliff_arduino_LOC1 = cliff.delta(arduino_LOC1$LOC,arduino_LOC1$Tag,return.dm=TRUE);
print(cliff_arduino_LOC1);

#Arduino-CC NEGLIGIBLE
arduino_CC1=arduino[arduino[2]=="HEAD" | arduino[2]=="2.4",];
cliff_arduino_CC1 = cliff.delta(arduino_CC1$CC,arduino_CC1$Tag,return.dm=TRUE);
print(cliff_arduino_CC1);

#Arduino-Efferent NEGLIGIBLE
arduino_EFF1=arduino[arduino[2]=="HEAD" | arduino[2]=="2.4",];
cliff_arduino_EFF1 = cliff.delta(arduino_EFF1$Efferent,arduino_EFF1$Tag,return.dm=TRUE);
print(cliff_arduino_EFF1);

#Arduino-NOP NEGLIGIBLE
arduino_NOP1=arduino[arduino[2]=="HEAD" | arduino[2]=="2.4",];
cliff_arduino_NOP1 = cliff.delta(arduino_NOP1$NOP,arduino_NOP1$Tag,return.dm=TRUE);
print(cliff_arduino_NOP1);

# RQ3 angularJS
angularJS <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-07-eclipse-angularjs.xlsx", sheet = "view")

#AngularJS-LOC NEGLIGIBLE
angularJS_LOC1=angularJS[angularJS[2]=="1.1.0" | angularJS[2]=="HEAD",];
cliff_angularJS_LOC1 = cliff.delta(angularJS_LOC1$LOC,angularJS_LOC1$Tag,return.dm=TRUE);
print(cliff_angularJS_LOC1);

#AngularJS-CC NEGLIGIBLE
angularJS_CC1=angularJS[angularJS[2]=="1.1.0" | angularJS[2]=="HEAD",];
cliff_angularJS_CC1 = cliff.delta(angularJS_CC1$CC,angularJS_CC1$Tag,return.dm=TRUE);
print(cliff_angularJS_CC1);

#AngularJS-Efferent NEGLIGIBLE
angularJS_EFF1=angularJS[angularJS[2]=="1.1.0" | angularJS[2]=="HEAD",];
cliff_angularJS_EFF1 = cliff.delta(angularJS_EFF1$Efferent,angularJS_EFF1$Tag,return.dm=TRUE);
print(cliff_angularJS_EFF1);

#AngularJS-NOP NEGLIGIBLE
angularJS_NOP1=angularJS[angularJS[2]=="1.1.0" | angularJS[2]=="HEAD",];
cliff_angularJS_NOP1 = cliff.delta(angularJS_NOP1$NOP,angularJS_NOP1$Tag,return.dm=TRUE);
print(cliff_angularJS_NOP1);

# RQ3 Activiti 
activiti <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-06-eclipse-activiti.xlsx", sheet = "dialog")

#Activiti-LOC NEGLIGIBLE
activiti_LOC1=activiti[activiti[2]=="HEAD" | activiti[2]=="5.14.1",];
cliff_activiti_LOC1 = cliff.delta(activiti_LOC1$LOC,activiti_LOC1$Tag,return.dm=TRUE);
print(cliff_activiti_LOC1);

#Activiti-CC NEGLIGIBLE
activiti_CC1=activiti[activiti[2]=="HEAD" | activiti[2]=="5.14.1",];
cliff_activiti_CC1 = cliff.delta(activiti_CC1$CC,activiti_CC1$Tag,return.dm=TRUE);
print(cliff_activiti_CC1);

#Activiti-EFF NEGLIGIBLE
activiti_EFF1=activiti[activiti[2]=="HEAD" | activiti[2]=="5.14.1",];
cliff_activiti_EFF1 = cliff.delta(activiti_EFF1$Efferent,activiti_EFF1$Tag,return.dm=TRUE);
print(cliff_activiti_EFF1);

#Activiti-NOP NEGLIGIBLE
activiti_NOP1=activiti[activiti[2]=="HEAD" | activiti[2]=="5.14.1",];
cliff_activiti_NOP1 = cliff.delta(activiti_NOP1$NOP,activiti_NOP1$Tag,return.dm=TRUE);
print(cliff_activiti_NOP1);

# RQ3 TalonForTwitter
talon <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-05-android-talonForTwitter.xlsx", sheet = "activity")

#Talon-LOC NEGLIGIBLE
talon_LOC1=talon[talon[2]=="HEAD" | talon[2]=="c-45",];
cliff_talon_LOC1 = cliff.delta(talon_LOC1$LOC,talon_LOC1$Tag,return.dm=TRUE);
print(cliff_talon_LOC1);

#Talon-CC NEGLIGIBLE
talon_CC1=talon[talon[2]=="HEAD" | talon[2]=="c-45",];
cliff_talon_CC1 = cliff.delta(talon_CC1$CC,talon_CC1$Tag,return.dm=TRUE);
print(cliff_talon_CC1);

#Talon-Efferent NEGLIGIBLE
talon_EFF1=talon[talon[2]=="HEAD" | talon[2]=="c-45",];
cliff_talon_EFF1 = cliff.delta(talon_EFF1$Efferent,talon_EFF1$Tag,return.dm=TRUE);
print(cliff_talon_EFF1);

#Talon-NOP NEGLIGIBLE
talon_NOP1=talon[talon[2]=="HEAD" | talon[2]=="c-45",];
cliff_talon_NOP1 = cliff.delta(talon_NOP1$NOP,talon_NOP1$Tag,return.dm=TRUE);
print(cliff_talon_NOP1);

# RQ3 SMSBackup
smsBackup <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-04-android-smsBackup.xlsx", sheet = "activity")

#SMSBackup-LOC NEGLIGIBLE
smsBackup_LOC1=smsBackup[smsBackup[2]=="HEAD" | smsBackup[2]=="1.5.8",];
cliff_smsBackup_LOC1 = cliff.delta(smsBackup_LOC1$LOC,smsBackup_LOC1$Tag,return.dm=TRUE);
print(cliff_smsBackup_LOC1);

#SMSBackup-cC NEGLIGIBLE
smsBackup_CC1=smsBackup[smsBackup[2]=="HEAD" | smsBackup[2]=="1.5.8",];
cliff_smsBackup_CC1 = cliff.delta(smsBackup_CC1$CC,smsBackup_CC1$Tag,return.dm=TRUE);
print(cliff_smsBackup_CC1);

#SMSBackup-Efferent NEGLIGIBLE
smsBackup_EFF1=smsBackup[smsBackup[2]=="HEAD" | smsBackup[2]=="1.5.8",];
cliff_smsBackup_EFF1 = cliff.delta(smsBackup_EFF1$Efferent,smsBackup_EFF1$Tag,return.dm=TRUE);
print(cliff_smsBackup_EFF1);

#SMSBackup-NOP NEGLIGIBLE
smsBackup_NOP1=smsBackup[smsBackup[2]=="HEAD" | smsBackup[2]=="1.5.8",];
cliff_smsBackup_NOP1 = cliff.delta(smsBackup_NOP1$NOP,smsBackup_NOP1$Tag,return.dm=TRUE);
print(cliff_smsBackup_NOP1);

# RQ3 K9MAIL
k9mail <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-03-android-k9mail.xlsx", sheet = "persistence")


#k9mail-LOC 
k9mail_LOC1=k9mail[k9mail[2]=="HEAD" | k9mail[2]=="5.008",];
cliff_k9mail_LOC1 = cliff.delta(k9mail_LOC1$LOC,k9mail_LOC1$Tag,return.dm=TRUE);
print(cliff_k9mail_LOC1);

#k9mail-CC 
k9mail_CC1=k9mail[k9mail[2]=="HEAD" | k9mail[2]=="5.008",];
cliff_k9mail_CC1 = cliff.delta(k9mail_CC1$CC,k9mail_CC1$Tag,return.dm=TRUE);
print(cliff_k9mail_CC1);

#k9mail-Efferent 
k9mail_EFF1=k9mail[k9mail[2]=="HEAD" | k9mail[2]=="5.008",];
cliff_k9mail_EFF1 = cliff.delta(k9mail_EFF1$Efferent,k9mail_EFF1$Tag,return.dm=TRUE);
print(cliff_k9mail_EFF1);

#k9mail-NOP 
k9mail_NOP1=k9mail[k9mail[2]=="HEAD" | k9mail[2]=="5.008",];
cliff_k9mail_NOP1 = cliff.delta(k9mail_NOP1$NOP,k9mail_NOP1$Tag,return.dm=TRUE);
print(cliff_k9mail_NOP1);

View(k9mail);

# RQ3 EXOPLAYER
exoplayer <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-02-android-exoplayer.xlsx", sheet = "persistence")

#EXOPLAYER-LOC NEGLIGIBLE
exoplayer_LOC1=exoplayer[exoplayer[2]=="HEAD" | exoplayer[2]=="r.1.5.11",];
cliff_exoplayer_LOC1 = cliff.delta(exoplayer_LOC1$LOC,exoplayer_LOC1$Tag,return.dm=TRUE);
print(cliff_exoplayer_LOC1);

#EXOPLAYER-CC NEGLIGIBLE
exoplayer_CC1=exoplayer[exoplayer[2]=="HEAD" | exoplayer[2]=="r.1.5.11",];
cliff_exoplayer_CC1 = cliff.delta(exoplayer_CC1$CC,exoplayer_CC1$Tag,return.dm=TRUE);
print(cliff_exoplayer_CC1);

#EXOPLAYER-EFFERENT NEGLIGIBLE
exoplayer_EFF1=exoplayer[exoplayer[2]=="HEAD" | exoplayer[2]=="r.1.5.11",];
cliff_exoplayer_EFF1 = cliff.delta(exoplayer_EFF1$Efferent,exoplayer_EFF1$Tag,return.dm=TRUE);
print(cliff_exoplayer_EFF1);

#EXOPLAYER-NOP NEGLIGIBLE
exoplayer_NOP1=exoplayer[exoplayer[2]=="HEAD" | exoplayer[2]=="r.1.5.11",];
cliff_exoplayer_NOP1 = cliff.delta(exoplayer_NOP1$NOP,exoplayer_NOP1$Tag,return.dm=TRUE);
print(cliff_exoplayer_NOP1);


# RQ3 Bitcoin
bitcoin <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-01-android-bitcoinwallet.xlsx", sheet = "persistence")

#Bitcoin-LOC NEGLIGIBLE
bitcoin_LOC1=bitcoin[bitcoin[2]=="HEAD" | bitcoin[2]=="4.70",];
cliff_bitcoin_LOC1 = cliff.delta(bitcoin_LOC1$LOC,bitcoin_LOC1$Tag,return.dm=TRUE);
print(cliff_bitcoin_LOC1);


#Bitcoin-CC NEGLIGIBLE
bitcoin_CC1=bitcoin[bitcoin[2]=="HEAD" | bitcoin[2]=="4.70",];
cliff_bitcoin_CC1 = cliff.delta(bitcoin_CC1$CC,bitcoin_CC1$Tag,return.dm=TRUE);
print(cliff_bitcoin_CC1);

#Bitcoin-EFFERENT NEGLIGIBLE
bitcoin_EF1=bitcoin[bitcoin[2]=="HEAD" | bitcoin[2]=="4.70",];
cliff_bitcoin_EF1 = cliff.delta(bitcoin_EF1$Efferent,bitcoin_EF1$Tag,return.dm=TRUE);
print(cliff_bitcoin_EF1);

#Bitcoin-NOP NEGLIGIBLE
bitcoin_NOP1=bitcoin[bitcoin[2]=="HEAD" | bitcoin[2]=="4.70",];
cliff_bitcoin_NOP1 = cliff.delta(bitcoin_NOP1$NOP,bitcoin_NOP1$Tag,return.dm=TRUE);
print(cliff_bitcoin_NOP1);


#RQ3 web 
viewWeb <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-Versions-Web-Openmrs.xls", sheet = "View")
entityWeb <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-Versions-Web-Openmrs.xls", sheet = "Entity")
persistenceWeb <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-Versions-Web-Openmrs.xls", sheet = "Persistence")

#PersistenceWeb-LOC NEGLIGIBLE 
persistenceWeb_LOC=persistenceWeb[persistenceWeb[2]=="1.11.0" | persistenceWeb[2]=="2.0.1",];
cliff_persistenceWeb_LOC = cliff.delta(persistenceWeb_LOC$LOC,persistenceWeb_LOC$`Tag`,return.dm=TRUE);
print(cliff_persistenceWeb_LOC);

#PersistenceWeb-CC NEGLIGIBLE  
persistenceWeb_CC=persistenceWeb[persistenceWeb[2]=="1.11.0" | persistenceWeb[2]=="2.0.1",];
cliff_persistenceWeb_CC = cliff.delta(persistenceWeb_CC$CC,persistenceWeb_CC$`Tag`,return.dm=TRUE);
print(cliff_persistenceWeb_CC);

#PersistenceWeb-Efferent NEGLIGIBLE 
persistenceWeb_EFF=persistenceWeb[persistenceWeb[2]=="1.11.0" | persistenceWeb[2]=="2.0.1",];
cliff_persistenceWeb_EFF = cliff.delta(persistenceWeb_EFF$Efferent,persistenceWeb_EFF$`Tag`,return.dm=TRUE);
print(cliff_persistenceWeb_EFF);

#PersistenceWeb-NOP NEGLIGIBLE 
persistenceWeb_NOP=persistenceWeb[persistenceWeb[2]=="1.11.0" | persistenceWeb[2]=="2.0.1",];
cliff_persistenceWeb_NOP = cliff.delta(persistenceWeb_NOP$NOP,persistenceWeb_NOP$`Tag`,return.dm=TRUE);
print(cliff_persistenceWeb_NOP);

#EntityWeb-LOC SMALL 
entityWeb_LOC=entityWeb[entityWeb[2]=="HEAD" | entityWeb[2]=="1.10.0",];
cliff_entityWeb_LOC = cliff.delta(entityWeb_LOC$LOC,entityWeb_LOC$`Tag`,return.dm=TRUE);
print(cliff_entityWeb_LOC);

#EntityWeb-CC SMALL  
entityWeb_CC=entityWeb[entityWeb[2]=="HEAD" | entityWeb[2]=="1.10.0",];
cliff_entityWeb_CC = cliff.delta(entityWeb_CC$CC,entityWeb_CC$`Tag`,return.dm=TRUE);
print(cliff_entityWeb_CC);

#EntityWeb-Efferent SMALL 
entityWeb_EFF=entityWeb[entityWeb[2]=="HEAD" | entityWeb[2]=="1.10.0",];
cliff_entityWeb_EFF = cliff.delta(entityWeb_EFF$Efferent,entityWeb_EFF$`Tag`,return.dm=TRUE);
print(cliff_entityWeb_EFF);

#EntityWeb-NOP NEGLIGIBLE 
entityWeb_NOP=entityWeb[entityWeb[2]=="HEAD" | entityWeb[2]=="1.10.0",];
cliff_entityWeb_NOP = cliff.delta(entityWeb_NOP$NOP,entityWeb_NOP$`Tag`,return.dm=TRUE);
print(cliff_entityWeb_NOP);

#ViewWeb-LOC SMALL 
viewWeb_LOC=viewWeb[viewWeb[2]=="HEAD" | viewWeb[2]=="1.10.0",];
cliff_viewWeb_LOC = cliff.delta(viewWeb_LOC$LOC,viewWeb_LOC$`Tag`,return.dm=TRUE);
print(cliff_viewWeb_LOC);

#ViewWeb-CC SMALL  
viewWeb_CC=viewWeb[viewWeb[2]=="HEAD" | viewWeb[2]=="1.10.0",];
cliff_viewWeb_CC = cliff.delta(viewWeb_CC$CC,viewWeb_CC$`Tag`,return.dm=TRUE);
print(cliff_viewWeb_CC);

#ViewWeb-Efferent SMALL 
viewWeb_EFF=viewWeb[viewWeb[2]=="HEAD" | viewWeb[2]=="1.10.0",];
cliff_viewWeb_EFF = cliff.delta(viewWeb_EFF$Efferent,viewWeb_EFF$`Tag`,return.dm=TRUE);
print(cliff_viewWeb_EFF);

#ViewWeb-NOP NEGLIGIBLE 
viewWeb_NOP=viewWeb[viewWeb[2]=="HEAD" | viewWeb[2]=="1.10.0",];
cliff_viewWeb_NOP = cliff.delta(viewWeb_NOP$NOP,viewWeb_NOP$`Tag`,return.dm=TRUE);
print(cliff_viewWeb_NOP);

#RQ3 Eclipse 
dialogEclipse <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-Versions-Eclipse-Ddroolsjbpm.xls", sheet = "Dialog")
viewEclipse <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-Versions-Eclipse-Ddroolsjbpm.xls", sheet = "View")

#ViewEclipse-LOC NEGLIGIBLE 
viewEclipse_LOC=viewEclipse[viewEclipse[2]=="HEAD" | viewEclipse[2]=="6.2.0.Final",];
cliff_viewEclipse_LOC = cliff.delta(viewEclipse_LOC$LOC,viewEclipse_LOC$`Tag`,return.dm=TRUE);
print(cliff_viewEclipse_LOC);


#ViewEclipse-CC NEGLIGIBLE 
viewEclipse_CC=viewEclipse[viewEclipse[2]=="HEAD" | viewEclipse[2]=="6.2.0.Final",];
cliff_viewEclipse_CC = cliff.delta(viewEclipse_CC$CC,viewEclipse_CC$`Tag`,return.dm=TRUE);
print(cliff_viewEclipse_CC);

#ViewEclipse-Efferent NEGLIGIBLE 
viewEclipse_EFF=viewEclipse[viewEclipse[2]=="HEAD" | viewEclipse[2]=="6.2.0.Final",];
cliff_viewEclipse_EFF = cliff.delta(viewEclipse_EFF$Efferent,viewEclipse_EFF$`Tag`,return.dm=TRUE);
print(cliff_viewEclipse_EFF);

#ViewEclipse-NOP NEGLIGIBLE 
viewEclipse_NOP=viewEclipse[viewEclipse[2]=="HEAD" | viewEclipse[2]=="6.2.0.Final",];
cliff_viewEclipse_NOP = cliff.delta(viewEclipse_NOP$NOP,viewEclipse_NOP$`Tag`,return.dm=TRUE);
print(cliff_viewEclipse_NOP);

#DialogEclipse-LOC NEGLIGIBLE 
dialogEclipse_LOC=dialogEclipse[dialogEclipse[2]=="HEAD" | dialogEclipse[2]=="6.2.0.Final",];
cliff_dialogEclipse_LOC = cliff.delta(dialogEclipse_LOC$LOC,dialogEclipse_LOC$`Tag`,return.dm=TRUE);
print(cliff_dialogEclipse_LOC);

#DialogEclipse-CC NEGLIGIBLE 
dialogEclipse_CC=dialogEclipse[dialogEclipse[2]=="HEAD" | dialogEclipse[2]=="6.2.0.Final",];
cliff_dialogEclipse_CC = cliff.delta(dialogEclipse_CC$CC,dialogEclipse_CC$`Tag`,return.dm=TRUE);
print(cliff_dialogEclipse_CC);

#DialogEclipse-Efferent NEGLIGIBLE 
dialogEclipse_EFF=dialogEclipse[dialogEclipse[2]=="HEAD" | dialogEclipse[2]=="6.2.0.Final",];
cliff_dialogEclipse_EFF = cliff.delta(dialogEclipse_EFF$Efferent,dialogEclipse_EFF$`Tag`,return.dm=TRUE);
print(cliff_dialogEclipse_EFF);

#DialogEclipse-NOP NEGLIGIBLE 
dialogEclipse_NOP=dialogEclipse[dialogEclipse[2]=="HEAD" | dialogEclipse[2]=="6.2.0.Final",];
cliff_dialogEclipse_NOP = cliff.delta(dialogEclipse_NOP$NOP,dialogEclipse_NOP$`Tag`,return.dm=TRUE);
print(cliff_dialogEclipse_NOP);


#RQ3 Android 
activity <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-Versions-Android-K9.xls", sheet = "Activity")
persistenceAndroid <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-Versions-Android-K9.xls", sheet = "Persistence")

#Activity-LOC NEGLIGIBLE 
activity_LOC1=activity[activity[2]=="5.103" | activity[2]=="5.108",];
cliff_activity_LOC1 = cliff.delta(activity_LOC1$LOC,activity_LOC1$`Tag`,return.dm=TRUE);
print(cliff_activity_LOC1);

#Activity-CC NEGLIGIBLE 
activity_CC1=activity[activity[2]=="5.103" | activity[2]=="5.108",];
cliff_activity_CC1 = cliff.delta(activity_CC1$CC,activity_CC1$`Tag`,return.dm=TRUE);
print(cliff_activity_CC1);

#Activity-Efferent NEGLIGIBLE 
activity_EFF1=activity[activity[2]=="5.103" | activity[2]=="5.108",];
cliff_activity_EFF1 = cliff.delta(activity_EFF1$Efferent,activity_EFF1$`Tag`,return.dm=TRUE);
print(cliff_activity_EFF1);

#Activity-NOP NEGLIGIBLE 
activity_NOP=activity[activity[2]=="5.103" | activity[2]=="5.108",];
cliff_activity_NOP = cliff.delta(activity_NOP$NOP,activity_NOP$`Tag`,return.dm=TRUE);
print(cliff_activity_NOP);


#PersistenceAndroid-LOC NEGLIGIBLE 
persistenceAndroid_LOC=persistenceAndroid[persistenceAndroid[2]=="5.103" | persistenceAndroid[2]=="5.108",];
cliff_persistenceAndroid_LOC = cliff.delta(persistenceAndroid_LOC$LOC,persistenceAndroid_LOC$`Tag`,return.dm=TRUE);
print(cliff_persistenceAndroid_LOC);

#PersistenceAndroid-CC NEGLIGIBLE 
persistenceAndroid_CC=persistenceAndroid[persistenceAndroid[2]=="5.103" | persistenceAndroid[2]=="5.108",];
cliff_persistenceAndroid_CC = cliff.delta(persistenceAndroid_CC$CC,persistenceAndroid_CC$`Tag`,return.dm=TRUE);
print(cliff_persistenceAndroid_CC);

#PersistenceAndroid-Efferent NEGLIGIBLE 
persistenceAndroid_EFF=persistenceAndroid[persistenceAndroid[2]=="5.103" | persistenceAndroid[2]=="5.108",];
cliff_persistenceAndroid_EFF = cliff.delta(persistenceAndroid_EFF$Efferent,persistenceAndroid_EFF$`Tag`,return.dm=TRUE);
print(cliff_persistenceAndroid_EFF);

#PersistenceAndroid-NOP NEGLIGIBLE 
persistenceAndroid_NOP=persistenceAndroid[persistenceAndroid[2]=="5.103" | persistenceAndroid[2]=="5.108",];
cliff_persistenceAndroid_NOP = cliff.delta(persistenceAndroid_NOP$NOP,persistenceAndroid_NOP$`Tag`,return.dm=TRUE);
print(cliff_persistenceAndroid_NOP);




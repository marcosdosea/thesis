library(effsize)
library(readxl)
library(graphics)

# RQ3 K9MAIL
k9mail_undefined <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-03-android-k9mail.xlsx", sheet = "undefined")
k9mail_persistence <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-03-android-k9mail.xlsx", sheet = "persistence")

#k9mail_undefined-LOC NEGLEGIBLE
k9mail_undefined_LOC1=k9mail_undefined[k9mail_undefined[2]=="HEAD" | k9mail_undefined[2]=="5009",];
cliff_k9mail_undefined_LOC1 = cliff.delta(k9mail_undefined_LOC1$LOC,k9mail_undefined_LOC1$Tag,return.dm=TRUE);
print(cliff_k9mail_undefined_LOC1);

#k9mail_undefined-CC NEGLEGIBLE
k9mail_undefined_CC1=k9mail_undefined[k9mail_undefined[2]=="HEAD" | k9mail_undefined[2]=="5009",];
cliff_k9mail_undefined_CC1 = cliff.delta(k9mail_undefined_CC1$CC,k9mail_undefined_CC1$Tag,return.dm=TRUE);
print(cliff_k9mail_undefined_CC1);

#k9mail_undefined-Efferent NEGLEGIBLE
k9mail_undefined_EFF1=k9mail_undefined[k9mail_undefined[2]=="HEAD" | k9mail_undefined[2]=="5009",];
cliff_k9mail_undefined_EFF1 = cliff.delta(k9mail_undefined_EFF1$Efferent,k9mail_undefined_EFF1$Tag,return.dm=TRUE);
print(cliff_k9mail_undefined_EFF1);

#k9mail_undefined-NOP NEGLEGIBLE
k9mail_undefined_NOP1=k9mail_undefined[k9mail_undefined[2]=="HEAD" | k9mail_undefined[2]=="5008",];
cliff_k9mail_undefined_NOP1 = cliff.delta(k9mail_undefined_NOP1$NOP,k9mail_undefined_NOP1$Tag,return.dm=TRUE);
print(cliff_k9mail_undefined_NOP1);


#k9mail_persistence-LOC NEGLIGIBLE
k9mail_persistence_LOC1=k9mail_persistence[k9mail_persistence[2]=="HEAD" | k9mail_persistence[2]=="5008",];
cliff_k9mail_persistence_LOC1 = cliff.delta(k9mail_persistence_LOC1$LOC,k9mail_persistence_LOC1$Tag,return.dm=TRUE);
print(cliff_k9mail_persistence_LOC1);


#k9mail_persistence-CC NEGLIGIBLE
k9mail_persistence_CC1=k9mail_persistence[k9mail_persistence[2]=="HEAD" | k9mail_persistence[2]=="5008",];
cliff_k9mail_persistence_CC1 = cliff.delta(k9mail_persistence_CC1$CC,k9mail_persistence_CC1$Tag,return.dm=TRUE);
print(cliff_k9mail_persistence_CC1);

#k9mail_persistence-Efferent SMALL
k9mail_persistence_EFF1=k9mail_persistence[k9mail_persistence[2]=="HEAD" | k9mail_persistence[2]=="5008",];
cliff_k9mail_persistence_EFF1 = cliff.delta(k9mail_persistence_EFF1$Efferent,k9mail_persistence_EFF1$Tag,return.dm=TRUE);
print(cliff_k9mail_persistence_EFF1);

#k9mail_persistence-NOP NEGLIGIBLE
k9mail_persistence_NOP1=k9mail_persistence[k9mail_persistence[2]=="HEAD" | k9mail_persistence[2]=="5008",];
cliff_k9mail_persistence_NOP1 = cliff.delta(k9mail_persistence_NOP1$NOP,k9mail_persistence_NOP1$Tag,return.dm=TRUE);
print(cliff_k9mail_persistence_NOP1);

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

#RQ3 Qalingo 
qalingo <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-15-web-qalingo.xlsx", sheet = "Entity")
qalingo_undefined <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-15-web-qalingo.xlsx", sheet = "Undefined")

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

#Qalingo-LOC SMALL 
qalingo_undefined_LOC1=qalingo_undefined[qalingo_undefined[2]=="0.8.0" | qalingo_undefined[2]=="0.9.0",];
cliff_qalingo_undefined_LOC1 = cliff.delta(qalingo_undefined_LOC1$LOC,qalingo_undefined_LOC1$Tag,return.dm=TRUE);
print(cliff_qalingo_undefined_LOC1);

#qalingo_undefined-cC NEGLIGIBLE 
qalingo_undefined_CC1=qalingo_undefined[qalingo_undefined[2]=="0.8.0" | qalingo_undefined[2]=="0.9.0",];
cliff_qalingo_undefined_CC1 = cliff.delta(qalingo_undefined_CC1$CC,qalingo_undefined_CC1$Tag,return.dm=TRUE);
print(cliff_qalingo_undefined_CC1);

#qalingo_undefined-Efferent SMALL
qalingo_undefined_EFF1=qalingo_undefined[qalingo_undefined[2]=="0.8.0" | qalingo_undefined[2]=="HEAD",];
cliff_qalingo_undefined_EFF1 = cliff.delta(qalingo_undefined_EFF1$Efferent,qalingo_undefined_EFF1$Tag,return.dm=TRUE);
print(cliff_qalingo_undefined_EFF1);

#qalingo_undefined-NOP NEGLIGIBLE 
qalingo_undefined_NOP1=qalingo_undefined[qalingo_undefined[2]=="0.8.0" | qalingo_undefined[2]=="HEAD",];
cliff_qalingo_undefined_NOP1 = cliff.delta(qalingo_undefined_NOP1$NOP,qalingo_undefined_NOP1$Tag,return.dm=TRUE);
print(cliff_qalingo_undefined_NOP1);

#RQ3 OpenMRS ENTITY 
openmrs <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-14-web-openmrs.xlsx", sheet = "Entity")
openmrs_boo <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-14-web-openmrs.xlsx", sheet = "BaseOpenmrsObject")
openmrs_component <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-14-web-openmrs.xlsx", sheet = "Component")
openmrs_service <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-14-web-openmrs.xlsx", sheet = "Service")
openmrs_undefined <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-14-web-openmrs.xlsx", sheet = "Undefined")
openmrs_httpservlet <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-14-web-openmrs.xlsx", sheet = "HttpServlet")

#openmrs_undefined-NOP MEDIUM
openmrs_httpservlet_NOP1=openmrs_httpservlet[openmrs_httpservlet[2]=="2.0.0" | openmrs_httpservlet[2]=="1.9.11",];
cliff_openmrs_httpservlet_NOP1 = cliff.delta(openmrs_httpservlet_NOP1$NOP,openmrs_httpservlet_NOP1$Tag,return.dm=TRUE);
print(cliff_openmrs_httpservlet_NOP1);

#openmrs_undefined-NOP NEGLEGIBLE
openmrs_undefined_NOP1=openmrs_undefined[openmrs_undefined[2]=="2.0.0" | openmrs_undefined[2]=="1.9.11",];
cliff_openmrs_undefined_NOP1 = cliff.delta(openmrs_undefined_NOP1$NOP,openmrs_undefined_NOP1$Tag,return.dm=TRUE);
print(cliff_openmrs_undefined_NOP1);

#openmrs_service-LOC NEGLIGIBLE
openmrs_service_LOC1=openmrs_service[openmrs_service[2]=="HEAD" | openmrs_service[2]=="1.9.11",];
cliff_openmrs_service_LOC1 = cliff.delta(openmrs_service_LOC1$LOC,openmrs_service_LOC1$Tag,return.dm=TRUE);
print(cliff_openmrs_service_LOC1);

#openmrs_service-CC NEGLIGIBLE    
openmrs_service_CC1=openmrs_service[openmrs_service[2]=="HEAD" | openmrs_service[2]=="1.9.11",];
cliff_openmrs_service_CC1 = cliff.delta(openmrs_service_CC1$CC,openmrs_service_CC1$Tag,return.dm=TRUE);
print(cliff_openmrs_service_CC1);

#openmrs_service-Efferent NEGLIGIBLE
openmrs_service_EF1=openmrs_service[openmrs_service[2]=="HEAD" | openmrs_service[2]=="1.9.11",];
cliff_openmrs_service_EF1 = cliff.delta(openmrs_service_EF1$Efferent,openmrs_service_EF1$Tag,return.dm=TRUE);
print(cliff_openmrs_service_EF1);

#openmrs_service-NOP NEGLEGIBLE
openmrs_service_NOP1=openmrs_service[openmrs_service[2]=="HEAD" | openmrs_service[2]=="1.9.11",];
cliff_openmrs_service_NOP1 = cliff.delta(openmrs_service_NOP1$NOP,openmrs_service_NOP1$Tag,return.dm=TRUE);
print(cliff_openmrs_service_NOP1);


#openmrs_component-NOP MEDIUM
openmrs_component_NOP1=openmrs_component[openmrs_component[2]=="HEAD" | openmrs_component[2]=="1.9.11",];
cliff_openmrs_component_NOP1 = cliff.delta(openmrs_component_NOP1$NOP,openmrs_component_NOP1$Tag,return.dm=TRUE);
print(cliff_openmrs_component_NOP1);
#openmrs_boo-LOC NEGLIGIBLE
openmrs_boo_LOC1=openmrs_boo[openmrs_boo[2]=="HEAD" | openmrs_boo[2]=="1.9.11",];
cliff_openmrs_boo_LOC1 = cliff.delta(openmrs_boo_LOC1$LOC,openmrs_boo_LOC1$Tag,return.dm=TRUE);
print(cliff_openmrs_boo_LOC1);

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


#RQ3 OpenMRS view 
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
libreplan_component <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-13-web-libreplan.xlsx", sheet = "Component")
libreplan_gfc <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-13-web-libreplan.xlsx", sheet = "GenericForwardComposer")
libreplan_tt <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-13-web-libreplan.xlsx", sheet = "TimeTrackerState")

#libreplan_tt-EFF MEDIUM
libreplan_tt_EFF1=libreplan_tt[libreplan_tt[2]=="HEAD" | libreplan_tt[2]=="1.3.3",];
cliff_libreplan_tt_EFF1 = cliff.delta(libreplan_tt_EFF1$Efferent,libreplan_tt_EFF1$Tag,return.dm=TRUE);
print(cliff_libreplan_tt_EFF1);


#libreplan_gfc-EFF NEGLEGIBLE
libreplan_gfc_EFF1=libreplan_gfc[libreplan_gfc[2]=="HEAD" | libreplan_gfc[2]=="1.3.3",];
cliff_libreplan_gfc_EFF1 = cliff.delta(libreplan_gfc_EFF1$Efferent,libreplan_gfc_EFF1$Tag,return.dm=TRUE);
print(cliff_libreplan_gfc_EFF1);

#libreplan_component-LOC  NEGLEGIBLE
libreplan_component_LOC1=libreplan_component[libreplan_component[2]=="HEAD" | libreplan_component[2]=="1.4.0",];
cliff_libreplan_component_LOC1 = cliff.delta(libreplan_component_LOC1$LOC,libreplan_component_LOC1$Tag,return.dm=TRUE);
print(cliff_libreplan_component_LOC1);

#libreplan_component-EFF NEGLEGIBLE
libreplan_component_EFF1=libreplan_component[libreplan_component[2]=="HEAD" | libreplan_component[2]=="1.3.3",];
cliff_libreplan_component_EFF1 = cliff.delta(libreplan_component_EFF1$Efferent,libreplan_component_EFF1$Tag,return.dm=TRUE);
print(cliff_libreplan_component_EFF1);

#libreplan_component-NOP NEGLEGIBLE
libreplan_component_NOP =libreplan_component[libreplan_component[2]=="HEAD" | libreplan_component[2]=="1.3.3",];
cliff_libreplan_component_NOP = cliff.delta(libreplan_component_NOP$NOP,libreplan_component_NOP$Tag,return.dm=TRUE);
print(cliff_libreplan_component_NOP);

#libreplan-LOC  NEGLEGIBLE
libreplan_LOC1=libreplan[libreplan[2]=="HEAD" | libreplan[2]=="1.3.3",];
cliff_libreplan_LOC1 = cliff.delta(libreplan_LOC1$LOC,libreplan_LOC1$Tag,return.dm=TRUE);
print(cliff_libreplan_LOC1);

#libreplan-CC NEGLEGIBLE
libreplan_CC1=libreplan[libreplan[2]=="HEAD" | libreplan[2]=="1.3.3",];
cliff_libreplan_CC1 = cliff.delta(libreplan_CC1$CC,libreplan_CC1$Tag,return.dm=TRUE);
print(cliff_libreplan_CC1);


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
bigbluebutton_mh <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-11-web-bigbluebutton.xlsx", sheet = "MessageHandler")
bigbluebutton_ibm <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-11-web-bigbluebutton.xlsx", sheet = "IBigbluebuttonMessage")
bigbluebutton <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-11-web-bigbluebutton.xlsx", sheet = "Entity")

#bigbluebutton_mh-NOP MEDIUM
bigbluebutton_mh_NOP1=bigbluebutton_mh[bigbluebutton_mh[2]=="1.0.0" | bigbluebutton_mh[2]=="0.9.1",];
cliff_bigbluebutton_mh_NOP1 = cliff.delta(bigbluebutton_mh_NOP1$NOP,bigbluebutton_mh_NOP1$Tag,return.dm=TRUE);
print(cliff_bigbluebutton_mh_NOP1);

#bigbluebutton-LOC small
bigbluebutton_ibm_LOC1=bigbluebutton_ibm[bigbluebutton_ibm[2]=="HEAD" | bigbluebutton_ibm[2]=="1.0.0",];
cliff_bigbluebutton_ibm_LOC1 = cliff.delta(bigbluebutton_ibm_LOC1$LOC,bigbluebutton_ibm_LOC1$Tag,return.dm=TRUE);
print(cliff_bigbluebutton_ibm_LOC1);

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
sonarlint <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-10-eclipse-sonarlint.xlsx", sheet = "trackable")

#Sonarlint-LOC NEGLIGIBLE
sonarlint_LOC1=sonarlint[sonarlint[2]=="HEAD" | sonarlint[2]=="2.2.0",];
cliff_sonarlint_LOC1 = cliff.delta(sonarlint_LOC1$LOC,sonarlint_LOC1$Tag,return.dm=TRUE);
print(cliff_sonarlint_LOC1);

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
arduino_mc <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-08-eclipse-arduino.xlsx", sheet = "messageconsumer");
arduino_undefined <- read_excel("C:/Dropbox/Doutorado/Dados/RQ3/RQ3-08-eclipse-arduino.xlsx", sheet = "undefined");

#arduino_mc-LOC NEGLIGIBLE
arduino_mc_LOC1=arduino_mc[arduino_mc[2]=="3.0" | arduino_mc[2]=="2.4",];
cliff_arduino_mc_LOC1 = cliff.delta(arduino_mc_LOC1$LOC,arduino_mc_LOC1$Tag,return.dm=TRUE);
print(cliff_arduino_mc_LOC1);

#arduino_mc-CC NEGLIGIBLE
arduino_mc_CC1=arduino_mc[arduino_mc[2]=="3.0" | arduino_mc[2]=="2.4",];
cliff_arduino_mc_CC1 = cliff.delta(arduino_mc_CC1$CC,arduino_mc_CC1$Tag,return.dm=TRUE);
print(cliff_arduino_mc_CC1);

#arduino_mc-Efferent NEGLIGIBLE
arduino_mc_EFF1=arduino_mc[arduino_mc[2]=="3.0" | arduino_mc[2]=="2.4",];
cliff_arduino_mc_EFF1 = cliff.delta(arduino_mc_EFF1$Efferent,arduino_mc_EFF1$Tag,return.dm=TRUE);
print(cliff_arduino_mc_EFF1);

#arduino_mc-NOP NEGLIGIBLE
arduino_mc_NOP1=arduino_mc[arduino_mc[2]=="3.0" | arduino_mc[2]=="2.4",];
cliff_arduino_mc_NOP1 = cliff.delta(arduino_mc_NOP1$NOP,arduino_mc_NOP1$Tag,return.dm=TRUE);
print(cliff_arduino_mc_NOP1);

#arduino_undefined-LOC NEGLIGIBLE
arduino_undefined_LOC1=arduino_undefined[arduino_undefined[2]=="3.0" | arduino_undefined[2]=="2.4",];
cliff_arduino_undefined_LOC1 = cliff.delta(arduino_undefined_LOC1$LOC,arduino_undefined_LOC1$Tag,return.dm=TRUE);
print(cliff_arduino_undefined_LOC1);

#arduino_undefined-CC NEGLIGIBLE
arduino_undefined_CC1=arduino_undefined[arduino_undefined[2]=="3.0" | arduino_undefined[2]=="2.4",];
cliff_arduino_undefined_CC1 = cliff.delta(arduino_undefined_CC1$CC,arduino_undefined_CC1$Tag,return.dm=TRUE);
print(cliff_arduino_undefined_CC1);

#arduino_undefined-Efferent NEGLIGIBLE
arduino_undefined_EFF1=arduino_undefined[arduino_undefined[2]=="3.0" | arduino_undefined[2]=="2.4",];
cliff_arduino_undefined_EFF1 = cliff.delta(arduino_undefined_EFF1$Efferent,arduino_undefined_EFF1$Tag,return.dm=TRUE);
print(cliff_arduino_undefined_EFF1);

#arduino_undefined-NOP NEGLIGIBLE
arduino_undefined_NOP1=arduino_undefined[arduino_undefined[2]=="3.0" | arduino_undefined[2]=="2.4",];
cliff_arduino_undefined_NOP1 = cliff.delta(arduino_undefined_NOP1$NOP,arduino_undefined_NOP1$Tag,return.dm=TRUE);
print(cliff_arduino_undefined_NOP1);

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


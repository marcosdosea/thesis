library(effsize)
library(readxl)
library(graphics)

#RQ2 Eclipse 
UndefinedEclipse <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Eclipse Projects_v2.xlsx", sheet = "Undefined")
TestEclipse <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Eclipse Projects_v2.xlsx", sheet = "Test")
ServiceEclipse <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Eclipse Projects_v2.xlsx", sheet = "Service")
PluginEclipse <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Eclipse Projects_v2.xlsx", sheet = "Plugin")
NLSEclipse <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Eclipse Projects_v2.xlsx", sheet = "NLS")
ModelEclipse <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Eclipse Projects_v2.xlsx", sheet = "Model")
LabelProviderEclipse <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Eclipse Projects_v2.xlsx", sheet = "LabelProvider")
JobEclipse <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Eclipse Projects_v2.xlsx", sheet = "Job")
FieldEditorEclipse <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Eclipse Projects_v2.xlsx", sheet = "FieldEditor")
ExceptionEclipse <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Eclipse Projects_v2.xlsx", sheet = "Exception")
EntityEclipse <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Eclipse Projects_v2.xlsx", sheet = "Entity")
AdapterEclipse <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Eclipse Projects_v2.xlsx", sheet = "Adapter")
ActionEclipse <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Eclipse Projects_v2.xlsx", sheet = "Action")
AbstractUIPluginEclipse <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Eclipse Projects_v2.xlsx", sheet = "AbstractUIPlugin")

AbstractPreferenceInitializerEclipse <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Eclipse Projects_v2.xlsx", sheet = "AbstractPreferenceInitializer")
AbstractHandlerEclipse <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Eclipse Projects_v2.xlsx", sheet = "AbstractHandler")

persistenceEclipse <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Eclipse Projects_v2.xlsx", sheet = "Persistence")
dialogEclipse <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Eclipse Projects_v2.xlsx", sheet = "Dialog")
viewEclipse <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Eclipse Projects_v2.xlsx", sheet = "View")

#UndefinedEclipse-LOC NEGLIGIBLE 
UndefinedEclipse_LOC=UndefinedEclipse[UndefinedEclipse[1]=="Sonarlint" | UndefinedEclipse[1]=="DroolsJBPM",];
cliff_UndefinedEclipse_LOC = cliff.delta(UndefinedEclipse_LOC$LOC,UndefinedEclipse_LOC$`Application`,return.dm=TRUE);
print(cliff_UndefinedEclipse_LOC);

#UndefinedEclipse-CC NEGLIGIBLE 
UndefinedEclipse_CC=UndefinedEclipse[UndefinedEclipse[1]=="Activiti" | UndefinedEclipse[1]=="Arduino",];
cliff_UndefinedEclipse_CC = cliff.delta(UndefinedEclipse_CC$CC,UndefinedEclipse_CC$`Application`,return.dm=TRUE);
print(cliff_UndefinedEclipse_CC);

#UndefinedEclipse-Efferent SMALL 
UndefinedEclipse_EFF=UndefinedEclipse[UndefinedEclipse[1]=="AngularJS" | UndefinedEclipse[1]=="Arduino",];
cliff_UndefinedEclipse_EFF = cliff.delta(UndefinedEclipse_EFF$Efferent,UndefinedEclipse_EFF$`Application`,return.dm=TRUE);
print(cliff_UndefinedEclipse_EFF);

#UndefinedEclipse-NOP SMALL 
UndefinedEclipse_NOP=UndefinedEclipse[UndefinedEclipse[1]=="AngularJS" | UndefinedEclipse[1]=="DroolsJBPM",];
cliff_UndefinedEclipse_NOP = cliff.delta(UndefinedEclipse_NOP$NOP,UndefinedEclipse_NOP$`Application`,return.dm=TRUE);
print(cliff_UndefinedEclipse_NOP);

#TestEclipse-LOC SMALL 
TestEclipse_LOC=TestEclipse[TestEclipse[1]=="Sonarlint" | TestEclipse[1]=="AngularJS",];
cliff_TestEclipse_LOC = cliff.delta(TestEclipse_LOC$LOC,TestEclipse_LOC$`Application`,return.dm=TRUE);
print(cliff_TestEclipse_LOC);

#TestEclipse-CC SMALL 
TestEclipse_CC=TestEclipse[TestEclipse[1]=="AngularJS" | TestEclipse[1]=="DroolsJBPM",];
cliff_TestEclipse_CC = cliff.delta(TestEclipse_CC$CC,TestEclipse_CC$`Application`,return.dm=TRUE);
print(cliff_TestEclipse_CC);

#TestEclipse-Efferent SMALL 
TestEclipse_EFF=TestEclipse[TestEclipse[1]=="AngularJS" | TestEclipse[1]=="DroolsJBPM",];
cliff_TestEclipse_EFF = cliff.delta(TestEclipse_EFF$Efferent,TestEclipse_EFF$`Application`,return.dm=TRUE);
print(cliff_TestEclipse_EFF);

#TestEclipse-NOP NEGLIGIBLE 
TestEclipse_NOP=TestEclipse[TestEclipse[1]=="Sonarlint" | TestEclipse[1]=="DroolsJBPM",];
cliff_TestEclipse_NOP = cliff.delta(TestEclipse_NOP$NOP,TestEclipse_NOP$`Application`,return.dm=TRUE);
print(cliff_TestEclipse_NOP);

#ServiceEclipse-LOC SMALL 
ServiceEclipse_LOC=ServiceEclipse[ServiceEclipse[1]=="AngularJS" | ServiceEclipse[1]=="DroolsJBPM",];
cliff_ServiceEclipse_LOC = cliff.delta(ServiceEclipse_LOC$LOC,ServiceEclipse_LOC$`Application`,return.dm=TRUE);
print(cliff_ServiceEclipse_LOC);

#ServiceEclipse-CC MEDIUM 
ServiceEclipse_CC=ServiceEclipse[ServiceEclipse[1]=="Activiti" | ServiceEclipse[1]=="DroolsJBPM",];
cliff_ServiceEclipse_CC = cliff.delta(ServiceEclipse_CC$CC,ServiceEclipse_CC$`Application`,return.dm=TRUE);
print(cliff_ServiceEclipse_CC);

#ServiceEclipse-Efferent SMALL 
ServiceEclipse_EFF=ServiceEclipse[ServiceEclipse[1]=="Activiti" | ServiceEclipse[1]=="DroolsJBPM",];
cliff_ServiceEclipse_EFF = cliff.delta(ServiceEclipse_EFF$Efferent,ServiceEclipse_EFF$`Application`,return.dm=TRUE);
print(cliff_ServiceEclipse_EFF);

#ServiceEclipse-NOP MEDIUM 
ServiceEclipse_NOP=ServiceEclipse[ServiceEclipse[1]=="Activiti" | ServiceEclipse[1]=="DroolsJBPM",];
cliff_ServiceEclipse_NOP = cliff.delta(ServiceEclipse_NOP$NOP,ServiceEclipse_NOP$`Application`,return.dm=TRUE);
print(cliff_ServiceEclipse_NOP);

#PluginEclipse-LOC NEGLIGIBLE 
PluginEclipse_LOC=PluginEclipse[PluginEclipse[1]=="Sonarlint" | PluginEclipse[1]=="AngularJS",];
cliff_PluginEclipse_LOC = cliff.delta(PluginEclipse_LOC$LOC,PluginEclipse_LOC$`Application`,return.dm=TRUE);
print(cliff_PluginEclipse_LOC);

#PluginEclipse-CC SMALL 
PluginEclipse_CC=PluginEclipse[PluginEclipse[1]=="Sonarlint" | PluginEclipse[1]=="AngularJS",];
cliff_PluginEclipse_CC = cliff.delta(PluginEclipse_CC$CC,PluginEclipse_CC$`Application`,return.dm=TRUE);
print(cliff_PluginEclipse_CC);

#PluginEclipse-Efferent LARGE 
PluginEclipse_EFF=PluginEclipse[PluginEclipse[1]=="Sonarlint" | PluginEclipse[1]=="AngularJS",];
cliff_PluginEclipse_EFF = cliff.delta(PluginEclipse_EFF$Efferent,PluginEclipse_EFF$`Application`,return.dm=TRUE);
print(cliff_PluginEclipse_EFF);

#PluginEclipse-NOP SMALL 
PluginEclipse_NOP=PluginEclipse[PluginEclipse[1]=="Sonarlint" | PluginEclipse[1]=="AngularJS",];
cliff_PluginEclipse_NOP = cliff.delta(PluginEclipse_NOP$NOP,PluginEclipse_NOP$`Application`,return.dm=TRUE);
print(cliff_PluginEclipse_NOP);

#NLSEclipse-LOC MEDIUM 
NLSEclipse_LOC=NLSEclipse[NLSEclipse[1]=="AngularJS" | NLSEclipse[1]=="Arduino",];
cliff_NLSEclipse_LOC = cliff.delta(NLSEclipse_LOC$LOC,NLSEclipse_LOC$`Application`,return.dm=TRUE);
print(cliff_NLSEclipse_LOC);

#NLSEclipse-CC MEDIUM 
NLSEclipse_CC=NLSEclipse[NLSEclipse[1]=="AngularJS" | NLSEclipse[1]=="Arduino",];
cliff_NLSEclipse_CC = cliff.delta(NLSEclipse_CC$CC,NLSEclipse_CC$`Application`,return.dm=TRUE);
print(cliff_NLSEclipse_CC);

#NLSEclipse-Efferent NEGLIGIBLE 
NLSEclipse_EFF=NLSEclipse[NLSEclipse[1]=="AngularJS" | NLSEclipse[1]=="Arduino",];
cliff_NLSEclipse_EFF = cliff.delta(NLSEclipse_EFF$Efferent,NLSEclipse_EFF$`Application`,return.dm=TRUE);
print(cliff_NLSEclipse_EFF);

#NLSEclipse-NOP NEGLIGIBLE 
NLSEclipse_NOP=NLSEclipse[NLSEclipse[1]=="AngularJS" | NLSEclipse[1]=="Arduino",];
cliff_NLSEclipse_NOP = cliff.delta(NLSEclipse_NOP$NOP,NLSEclipse_NOP$`Application`,return.dm=TRUE);
print(cliff_NLSEclipse_NOP);

#ModelEclipse-LOC SMALL 
ModelEclipse_LOC=ModelEclipse[ModelEclipse[1]=="AngularJS" | ModelEclipse[1]=="Activiti",];
cliff_ModelEclipse_LOC = cliff.delta(ModelEclipse_LOC$LOC,ModelEclipse_LOC$`Application`,return.dm=TRUE);
print(cliff_ModelEclipse_LOC);

#ModelEclipse-CC NEGLIGIBLE 
ModelEclipse_CC=ModelEclipse[ModelEclipse[1]=="Activiti" | ModelEclipse[1]=="Sonarlint",];
cliff_ModelEclipse_CC = cliff.delta(ModelEclipse_CC$CC,ModelEclipse_CC$`Application`,return.dm=TRUE);
print(cliff_ModelEclipse_CC);

#ModelEclipse-Efferent SMALL 
ModelEclipse_EFF=ModelEclipse[ModelEclipse[1]=="Sonarlint" | ModelEclipse[1]=="AngularJS",];
cliff_ModelEclipse_EFF = cliff.delta(ModelEclipse_EFF$Efferent,ModelEclipse_EFF$`Application`,return.dm=TRUE);
print(cliff_ModelEclipse_EFF);

#ModelEclipse-NOP LARGE 
ModelEclipse_NOP=ModelEclipse[ModelEclipse[1]=="Activiti" | ModelEclipse[1]=="DroolsJBPM",];
cliff_ModelEclipse_NOP = cliff.delta(ModelEclipse_NOP$NOP,ModelEclipse_NOP$`Application`,return.dm=TRUE);
print(cliff_ModelEclipse_NOP);

#LabelProviderEclipse-LOC SMALL 
LabelProviderEclipse_LOC=LabelProviderEclipse[LabelProviderEclipse[1]=="Activiti" | LabelProviderEclipse[1]=="DroolsJBPM",];
cliff_LabelProviderEclipse_LOC = cliff.delta(LabelProviderEclipse_LOC$LOC,LabelProviderEclipse_LOC$`Application`,return.dm=TRUE);
print(cliff_LabelProviderEclipse_LOC);

#LabelProviderEclipse-CC SMALL 
LabelProviderEclipse_CC=LabelProviderEclipse[LabelProviderEclipse[1]=="Activiti" | LabelProviderEclipse[1]=="DroolsJBPM",];
cliff_LabelProviderEclipse_CC = cliff.delta(LabelProviderEclipse_CC$CC,LabelProviderEclipse_CC$`Application`,return.dm=TRUE);
print(cliff_LabelProviderEclipse_CC);

#LabelProviderEclipse-Efferent SMALL 
LabelProviderEclipse_EFF=LabelProviderEclipse[LabelProviderEclipse[1]=="AngularJS" | LabelProviderEclipse[1]=="Activiti",];
cliff_LabelProviderEclipse_EFF = cliff.delta(LabelProviderEclipse_EFF$Efferent,LabelProviderEclipse_EFF$`Application`,return.dm=TRUE);
print(cliff_LabelProviderEclipse_EFF);

#LabelProviderEclipse-NOP LARGE 
LabelProviderEclipse_NOP=LabelProviderEclipse[LabelProviderEclipse[1]=="AngularJS" | LabelProviderEclipse[1]=="Activiti",];
cliff_LabelProviderEclipse_NOP = cliff.delta(LabelProviderEclipse_NOP$NOP,LabelProviderEclipse_NOP$`Application`,return.dm=TRUE);
print(cliff_LabelProviderEclipse_NOP);

#JobEclipse-LOC MEDIUM 
JobEclipse_LOC=JobEclipse[JobEclipse[1]=="Sonarlint" | JobEclipse[1]=="Activiti",];
cliff_JobEclipse_LOC = cliff.delta(JobEclipse_LOC$LOC,JobEclipse_LOC$`Application`,return.dm=TRUE);
print(cliff_JobEclipse_LOC);

#JobEclipse-CC SMALL 
JobEclipse_CC=JobEclipse[JobEclipse[1]=="Sonarlint" | JobEclipse[1]=="Activiti",];
cliff_JobEclipse_CC = cliff.delta(JobEclipse_CC$CC,JobEclipse_CC$`Application`,return.dm=TRUE);
print(cliff_JobEclipse_CC);

#JobEclipse-Efferent NEGLIGIBLE 
JobEclipse_EFF=JobEclipse[JobEclipse[1]=="Sonarlint" | JobEclipse[1]=="Activiti",];
cliff_JobEclipse_EFF = cliff.delta(JobEclipse_EFF$Efferent,JobEclipse_EFF$`Application`,return.dm=TRUE);
print(cliff_JobEclipse_EFF);

#JobEclipse-NOP MEDIUM 
JobEclipse_NOP=JobEclipse[JobEclipse[1]=="Sonarlint" | JobEclipse[1]=="Activiti",];
cliff_JobEclipse_NOP = cliff.delta(JobEclipse_NOP$NOP,JobEclipse_NOP$`Application`,return.dm=TRUE);
print(cliff_JobEclipse_NOP);

#FieldEditorEclipse-LOC SMALL 
FieldEditorEclipse_LOC=FieldEditorEclipse[FieldEditorEclipse[1]=="Activiti" | FieldEditorEclipse[1]=="DroolsJBPM",];
cliff_FieldEditorEclipse_LOC = cliff.delta(FieldEditorEclipse_LOC$LOC,FieldEditorEclipse_LOC$`Application`,return.dm=TRUE);
print(cliff_FieldEditorEclipse_LOC);

#FieldEditorEclipse-CC SMALL 
FieldEditorEclipse_CC=FieldEditorEclipse[FieldEditorEclipse[1]=="Activiti" | FieldEditorEclipse[1]=="DroolsJBPM",];
cliff_FieldEditorEclipse_CC = cliff.delta(FieldEditorEclipse_CC$CC,FieldEditorEclipse_CC$`Application`,return.dm=TRUE);
print(cliff_FieldEditorEclipse_CC);

#FieldEditorEclipse-Efferent SMALL 
FieldEditorEclipse_EFF=FieldEditorEclipse[FieldEditorEclipse[1]=="Activiti" | FieldEditorEclipse[1]=="DroolsJBPM",];
cliff_FieldEditorEclipse_EFF = cliff.delta(FieldEditorEclipse_EFF$Efferent,FieldEditorEclipse_EFF$`Application`,return.dm=TRUE);
print(cliff_FieldEditorEclipse_EFF);

#FieldEditorEclipse-NOP NEGLIGIBLE 
FieldEditorEclipse_NOP=FieldEditorEclipse[FieldEditorEclipse[1]=="Activiti" | FieldEditorEclipse[1]=="DroolsJBPM",];
cliff_FieldEditorEclipse_NOP = cliff.delta(FieldEditorEclipse_NOP$NOP,FieldEditorEclipse_NOP$`Application`,return.dm=TRUE);
print(cliff_FieldEditorEclipse_NOP);

#ExceptionEclipse-LOC MEDIUM 
ExceptionEclipse_LOC=ExceptionEclipse[ExceptionEclipse[1]=="Activiti" | ExceptionEclipse[1]=="DroolsJBPM",];
cliff_ExceptionEclipse_LOC = cliff.delta(ExceptionEclipse_LOC$LOC,ExceptionEclipse_LOC$`Application`,return.dm=TRUE);
print(cliff_ExceptionEclipse_LOC);

#ExceptionEclipse-CC NEGLIGIBLE 
ExceptionEclipse_CC=ExceptionEclipse[ExceptionEclipse[1]=="Sonarlint" | ExceptionEclipse[1]=="DroolsJBPM",];
cliff_ExceptionEclipse_CC = cliff.delta(ExceptionEclipse_CC$CC,ExceptionEclipse_CC$`Application`,return.dm=TRUE);
print(cliff_ExceptionEclipse_CC);

#ExceptionEclipse-Efferent NEGLIGIBLE 
ExceptionEclipse_EFF=ExceptionEclipse[ExceptionEclipse[1]=="Sonarlint" | ExceptionEclipse[1]=="DroolsJBPM",];
cliff_ExceptionEclipse_EFF = cliff.delta(ExceptionEclipse_EFF$Efferent,ExceptionEclipse_EFF$`Application`,return.dm=TRUE);
print(cliff_ExceptionEclipse_EFF);

#ExceptionEclipse-NOP LARGE 
ExceptionEclipse_NOP=ExceptionEclipse[ExceptionEclipse[1]=="Sonarlint" | ExceptionEclipse[1]=="DroolsJBPM",];
cliff_ExceptionEclipse_NOP = cliff.delta(ExceptionEclipse_NOP$NOP,ExceptionEclipse_NOP$`Application`,return.dm=TRUE);
print(cliff_ExceptionEclipse_NOP);

#EntityEclipse-LOC MEDIUM 
EntityEclipse_LOC=EntityEclipse[EntityEclipse[1]=="Arduino" | EntityEclipse[1]=="DroolsJBPM",];
cliff_EntityEclipse_LOC = cliff.delta(EntityEclipse_LOC$LOC,EntityEclipse_LOC$`Application`,return.dm=TRUE);
print(cliff_EntityEclipse_LOC);

#EntityEclipse-CC MEDIUM 
EntityEclipse_CC=EntityEclipse[EntityEclipse[1]=="Arduino" | EntityEclipse[1]=="DroolsJBPM",];
cliff_EntityEclipse_CC = cliff.delta(EntityEclipse_CC$CC,EntityEclipse_CC$`Application`,return.dm=TRUE);
print(cliff_EntityEclipse_CC);

#EntityEclipse-Efferent LARGE 
EntityEclipse_EFF=EntityEclipse[EntityEclipse[1]=="Arduino" | EntityEclipse[1]=="Activiti",];
cliff_EntityEclipse_EFF = cliff.delta(EntityEclipse_EFF$Efferent,EntityEclipse_EFF$`Application`,return.dm=TRUE);
print(cliff_EntityEclipse_EFF);

#EntityEclipse-NOP NEGLIGIBLE 
EntityEclipse_NOP=EntityEclipse[EntityEclipse[1]=="Arduino" | EntityEclipse[1]=="DroolsJBPM",];
cliff_EntityEclipse_NOP = cliff.delta(EntityEclipse_NOP$NOP,EntityEclipse_NOP$`Application`,return.dm=TRUE);
print(cliff_EntityEclipse_NOP);

#AdapterEclipse-LOC NEGLIGIBLE 
AdapterEclipse_LOC=AdapterEclipse[AdapterEclipse[1]=="Sonarlint" | AdapterEclipse[1]=="DroolsJBPM",];
cliff_AdapterEclipse_LOC = cliff.delta(AdapterEclipse_LOC$LOC,AdapterEclipse_LOC$`Application`,return.dm=TRUE);
print(cliff_AdapterEclipse_LOC);

#AdapterEclipse-CC SMALL 
AdapterEclipse_CC=AdapterEclipse[AdapterEclipse[1]=="Sonarlint" | AdapterEclipse[1]=="DroolsJBPM",];
cliff_AdapterEclipse_CC = cliff.delta(AdapterEclipse_CC$CC,AdapterEclipse_CC$`Application`,return.dm=TRUE);
print(cliff_AdapterEclipse_CC);

#AdapterEclipse-Efferent MEDIUM 
AdapterEclipse_EFF=AdapterEclipse[AdapterEclipse[1]=="Sonarlint" | AdapterEclipse[1]=="DroolsJBPM",];
cliff_AdapterEclipse_EFF = cliff.delta(AdapterEclipse_EFF$Efferent,AdapterEclipse_EFF$`Application`,return.dm=TRUE);
print(cliff_AdapterEclipse_EFF);

#AdapterEclipse-NOP SMALL 
AdapterEclipse_NOP=AdapterEclipse[AdapterEclipse[1]=="Sonarlint" | AdapterEclipse[1]=="DroolsJBPM",];
cliff_AdapterEclipse_NOP = cliff.delta(AdapterEclipse_NOP$NOP,AdapterEclipse_NOP$`Application`,return.dm=TRUE);
print(cliff_AdapterEclipse_NOP);

#ActionEclipse-LOC SMALL 
ActionEclipse_LOC=ActionEclipse[ActionEclipse[1]=="Sonarlint" | ActionEclipse[1]=="DroolsJBPM",];
cliff_ActionEclipse_LOC = cliff.delta(ActionEclipse_LOC$LOC,ActionEclipse_LOC$`Application`,return.dm=TRUE);
print(cliff_ActionEclipse_LOC);

#ActionEclipse-CC SMALL 
ActionEclipse_CC=ActionEclipse[ActionEclipse[1]=="Activiti" | ActionEclipse[1]=="AngularJS",];
cliff_ActionEclipse_CC = cliff.delta(ActionEclipse_CC$CC,ActionEclipse_CC$`Application`,return.dm=TRUE);
print(cliff_ActionEclipse_CC);

#ActionEclipse-Efferent MEDIUM 
ActionEclipse_EFF=ActionEclipse[ActionEclipse[1]=="Sonarlint" | ActionEclipse[1]=="DroolsJBPM",];
cliff_ActionEclipse_EFF = cliff.delta(ActionEclipse_EFF$Efferent,ActionEclipse_EFF$`Application`,return.dm=TRUE);
print(cliff_ActionEclipse_EFF);

#ActionEclipse-NOP MEDIUM 
ActionEclipse_NOP=ActionEclipse[ActionEclipse[1]=="Activiti" | ActionEclipse[1]=="AngularJS",];
cliff_ActionEclipse_NOP = cliff.delta(ActionEclipse_NOP$NOP,ActionEclipse_NOP$`Application`,return.dm=TRUE);
print(cliff_ActionEclipse_NOP);

#AbstractUIPluginEclipse-LOC MEDIUM 
AbstractUIPluginEclipse_LOC=AbstractUIPluginEclipse[AbstractUIPluginEclipse[1]=="Activiti" | AbstractUIPluginEclipse[1]=="DroolsJBPM",];
cliff_AbstractUIPluginEclipse_LOC = cliff.delta(AbstractUIPluginEclipse_LOC$LOC,AbstractUIPluginEclipse_LOC$`Application`,return.dm=TRUE);
print(cliff_AbstractUIPluginEclipse_LOC);

#AbstractUIPluginEclipse-CC MEDIUM 
AbstractUIPluginEclipse_CC=AbstractUIPluginEclipse[AbstractUIPluginEclipse[1]=="Activiti" | AbstractUIPluginEclipse[1]=="DroolsJBPM",];
cliff_AbstractUIPluginEclipse_CC = cliff.delta(AbstractUIPluginEclipse_CC$CC,AbstractUIPluginEclipse_CC$`Application`,return.dm=TRUE);
print(cliff_AbstractUIPluginEclipse_CC);

#AbstractUIPluginEclipse-Efferent MEDIUM 
AbstractUIPluginEclipse_EFF=AbstractUIPluginEclipse[AbstractUIPluginEclipse[1]=="DroolsJBPM" | AbstractUIPluginEclipse[1]=="AngularJS",];
cliff_AbstractUIPluginEclipse_EFF = cliff.delta(AbstractUIPluginEclipse_EFF$Efferent,AbstractUIPluginEclipse_EFF$`Application`,return.dm=TRUE);
print(cliff_AbstractUIPluginEclipse_EFF);

#AbstractUIPluginEclipse-NOP LARGE 
AbstractUIPluginEclipse_NOP=AbstractUIPluginEclipse[AbstractUIPluginEclipse[1]=="DroolsJBPM" | AbstractUIPluginEclipse[1]=="AngularJS",];
cliff_AbstractUIPluginEclipse_NOP = cliff.delta(AbstractUIPluginEclipse_NOP$NOP,AbstractUIPluginEclipse_NOP$`Application`,return.dm=TRUE);
print(cliff_AbstractUIPluginEclipse_NOP);


#AbstractPreferenceInitializerEclipse-LOC NEGLIGIBLE 
AbstractPreferenceInitializerEclipse_LOC=AbstractPreferenceInitializerEclipse[AbstractPreferenceInitializerEclipse[1]=="Activiti" | AbstractPreferenceInitializerEclipse[1]=="AngularJS",];
cliff_AbstractPreferenceInitializerEclipse_LOC = cliff.delta(AbstractPreferenceInitializerEclipse_LOC$LOC,AbstractPreferenceInitializerEclipse_LOC$`Application`,return.dm=TRUE);
print(cliff_AbstractPreferenceInitializerEclipse_LOC);

#AbstractPreferenceInitializerEclipse-CC NEGLIGIBLE 
AbstractPreferenceInitializerEclipse_CC=AbstractPreferenceInitializerEclipse[AbstractPreferenceInitializerEclipse[1]=="Activiti" | AbstractPreferenceInitializerEclipse[1]=="AngularJS",];
cliff_AbstractPreferenceInitializerEclipse_CC = cliff.delta(AbstractPreferenceInitializerEclipse_CC$CC,AbstractPreferenceInitializerEclipse_CC$`Application`,return.dm=TRUE);
print(cliff_AbstractPreferenceInitializerEclipse_CC);

#AbstractPreferenceInitializerEclipse-Efferent NEGLIGIBLE 
AbstractPreferenceInitializerEclipse_EFF=AbstractPreferenceInitializerEclipse[AbstractPreferenceInitializerEclipse[1]=="Activiti" | AbstractPreferenceInitializerEclipse[1]=="AngularJS",];
cliff_AbstractPreferenceInitializerEclipse_EFF = cliff.delta(AbstractPreferenceInitializerEclipse_EFF$Efferent,AbstractPreferenceInitializerEclipse_EFF$`Application`,return.dm=TRUE);
print(cliff_AbstractPreferenceInitializerEclipse_EFF);

#AbstractPreferenceInitializerEclipse-NOP NEGLIGIBLE 
AbstractPreferenceInitializerEclipse_NOP=AbstractPreferenceInitializerEclipse[AbstractPreferenceInitializerEclipse[1]=="Activiti" | AbstractPreferenceInitializerEclipse[1]=="AngularJS",];
cliff_AbstractPreferenceInitializerEclipse_NOP = cliff.delta(AbstractPreferenceInitializerEclipse_NOP$NOP,AbstractPreferenceInitializerEclipse_NOP$`Application`,return.dm=TRUE);
print(cliff_AbstractPreferenceInitializerEclipse_NOP);

#AbstractHandlerEclipse-LOC SMALL 
AbstractHandlerEclipse_LOC=AbstractHandlerEclipse[AbstractHandlerEclipse[1]=="Sonarlint" | AbstractHandlerEclipse[1]=="Activiti",];
cliff_AbstractHandlerEclipse_LOC = cliff.delta(AbstractHandlerEclipse_LOC$LOC,AbstractHandlerEclipse_LOC$`Application`,return.dm=TRUE);
print(cliff_AbstractHandlerEclipse_LOC);

#AbstractHandlerEclipse-CC SMALL 
AbstractHandlerEclipse_CC=AbstractHandlerEclipse[AbstractHandlerEclipse[1]=="Sonarlint" | AbstractHandlerEclipse[1]=="Arduino",];
cliff_AbstractHandlerEclipse_CC = cliff.delta(AbstractHandlerEclipse_CC$CC,AbstractHandlerEclipse_CC$`Application`,return.dm=TRUE);
print(cliff_AbstractHandlerEclipse_CC);

#AbstractHandlerEclipse-Efferent NEGLIGIBLE 
AbstractHandlerEclipse_EFF=AbstractHandlerEclipse[AbstractHandlerEclipse[1]=="Sonarlint" | AbstractHandlerEclipse[1]=="Activiti",];
cliff_AbstractHandlerEclipse_EFF = cliff.delta(AbstractHandlerEclipse_EFF$Efferent,AbstractHandlerEclipse_EFF$`Application`,return.dm=TRUE);
print(cliff_AbstractHandlerEclipse_EFF);

#AbstractHandlerEclipse-NOP SMALL 
AbstractHandlerEclipse_NOP=AbstractHandlerEclipse[AbstractHandlerEclipse[1]=="Sonarlint" | AbstractHandlerEclipse[1]=="Arduino",];
cliff_AbstractHandlerEclipse_NOP = cliff.delta(AbstractHandlerEclipse_NOP$NOP,AbstractHandlerEclipse_NOP$`Application`,return.dm=TRUE);
print(cliff_AbstractHandlerEclipse_NOP);

#persistenceEclipse-LOC SMALL 
persistenceEclipse_LOC=persistenceEclipse[persistenceEclipse[1]=="Sonarlint" | persistenceEclipse[1]=="DroolsJBPM",];
cliff_persistenceEclipse_LOC = cliff.delta(persistenceEclipse_LOC$LOC,persistenceEclipse_LOC$`Application`,return.dm=TRUE);
print(cliff_persistenceEclipse_LOC);

#persistenceEclipse-CC SMALL 
persistenceEclipse_CC=persistenceEclipse[persistenceEclipse[1]=="Activiti" | persistenceEclipse[1]=="DroolsJBPM",];
cliff_persistenceEclipse_CC = cliff.delta(persistenceEclipse_CC$CC,persistenceEclipse_CC$`Application`,return.dm=TRUE);
print(cliff_persistenceEclipse_CC);

#persistenceEclipse-Efferent MEDIUM 
persistenceEclipse_EFF=persistenceEclipse[persistenceEclipse[1]=="Sonarlint" | persistenceEclipse[1]=="Activiti",];
cliff_persistenceEclipse_EFF = cliff.delta(persistenceEclipse_EFF$Efferent,persistenceEclipse_EFF$`Application`,return.dm=TRUE);
print(cliff_persistenceEclipse_EFF);

#persistenceEclipse-NOP SMALL 
persistenceEclipse_NOP=persistenceEclipse[persistenceEclipse[1]=="Sonarlint" | persistenceEclipse[1]=="DroolsJBPM",];
cliff_persistenceEclipse_NOP = cliff.delta(persistenceEclipse_NOP$NOP,persistenceEclipse_NOP$`Application`,return.dm=TRUE);
print(cliff_persistenceEclipse_NOP);


#ViewEclipse-LOC NEGLIGIBLE 
viewEclipse_LOC=viewEclipse[viewEclipse[1]=="Activiti" | viewEclipse[1]=="AngularJS",];
cliff_viewEclipse_LOC = cliff.delta(viewEclipse_LOC$LOC,viewEclipse_LOC$`Application`,return.dm=TRUE);
print(cliff_viewEclipse_LOC);

#ViewEclipse-CC NEGLIGIBLE 
viewEclipse_CC=viewEclipse[viewEclipse[1]=="Sonarlint" | viewEclipse[1]=="Arduino",];
cliff_viewEclipse_CC = cliff.delta(viewEclipse_CC$CC,viewEclipse_CC$`Application`,return.dm=TRUE);
print(cliff_viewEclipse_CC);

#ViewEclipse-Efferent NEGLIGIBLE 
viewEclipse_EFF=viewEclipse[viewEclipse[1]=="Sonarlint" | viewEclipse[1]=="Arduino",];
cliff_viewEclipse_EFF = cliff.delta(viewEclipse_EFF$Efferent,viewEclipse_EFF$`Application`,return.dm=TRUE);
print(cliff_viewEclipse_EFF);

#ViewEclipse-NOP NEGLIGIBLE 
viewEclipse_NOP=viewEclipse[viewEclipse[1]=="AngularJS" | viewEclipse[1]=="Arduino",];
cliff_viewEclipse_NOP = cliff.delta(viewEclipse_NOP$NOP,viewEclipse_NOP$`Application`,return.dm=TRUE);
print(cliff_viewEclipse_NOP);



#DialogEclipse-LOC MEDIUM 
dialogEclipse_LOC=dialogEclipse[dialogEclipse[1]=="Activiti" | dialogEclipse[1]=="Arduino",];
cliff_dialogEclipse_LOC = cliff.delta(dialogEclipse_LOC$LOC,dialogEclipse_LOC$`Application`,return.dm=TRUE);
print(cliff_dialogEclipse_LOC);

#DialogEclipse-CC MEDIUM 
dialogEclipse_CC=dialogEclipse[dialogEclipse[1]=="Sonarlint" | dialogEclipse[1]=="Arduino",];
cliff_dialogEclipse_CC = cliff.delta(dialogEclipse_CC$CC,dialogEclipse_CC$`Application`,return.dm=TRUE);
print(cliff_dialogEclipse_CC);

#DialogEclipse-Efferent SMALL 
dialogEclipse_EFF=dialogEclipse[dialogEclipse[1]=="Sonarlint" | dialogEclipse[1]=="Arduino",];
cliff_dialogEclipse_EFF = cliff.delta(dialogEclipse_EFF$Efferent,dialogEclipse_EFF$`Application`,return.dm=TRUE);
print(cliff_dialogEclipse_EFF);

#DialogEclipse-NOP SMALL 
dialogEclipse_NOP=dialogEclipse[dialogEclipse[1]=="AngularJS" | dialogEclipse[1]=="Arduino",];
cliff_dialogEclipse_NOP = cliff.delta(dialogEclipse_NOP$NOP,dialogEclipse_NOP$`Application`,return.dm=TRUE);
print(cliff_dialogEclipse_NOP);



#RQ2 web 
UndefinedWeb <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Web Projects_v2.xlsx", sheet = "Undefined")
ServiceWeb <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Web Projects_v2.xlsx", sheet = "Service")
LinkedHashMapWeb <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Web Projects_v2.xlsx", sheet = "LinkedHashMap")
HttpServletWeb <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Web Projects_v2.xlsx", sheet = "HttpServlet")
ExceptionWeb <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Web Projects_v2.xlsx", sheet = "Exception")
DispatcherServletWeb <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Web Projects_v2.xlsx", sheet = "DispatcherServlet")
DialogWeb <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Web Projects_v2.xlsx", sheet = "Dialog")
ControllerWeb <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Web Projects_v2.xlsx", sheet = "Controller")
ComponentWeb <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Web Projects_v2.xlsx", sheet = "Component")
AsyncTaskWeb <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Web Projects_v2.xlsx", sheet = "AsyncTask")
AdapterWeb <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Web Projects_v2.xlsx", sheet = "Adapter")
validatorWeb <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Web Projects_v2.xlsx", sheet = "Validator")
comparatorWeb <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Web Projects_v2.xlsx", sheet = "Comparator")
testWeb <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Web Projects_v2.xlsx", sheet = "Test")
viewWeb <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Web Projects_v2.xlsx", sheet = "View")
entityWeb <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Web Projects_v2.xlsx", sheet = "Entity")
persistenceWeb <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Web Projects_v2.xlsx", sheet = "Persistence")

#UndefinedWeb-LOC SMALL 
UndefinedWeb_LOC=UndefinedWeb[UndefinedWeb[1]=="qalingo" | UndefinedWeb[1]=="heritrix3",];
cliff_UndefinedWeb_LOC = cliff.delta(UndefinedWeb_LOC$LOC,UndefinedWeb_LOC$`Application`,return.dm=TRUE);
print(cliff_UndefinedWeb_LOC);

#UndefinedWeb-CC SMALL  
UndefinedWeb_CC=UndefinedWeb[UndefinedWeb[1]=="qalingo" | UndefinedWeb[1]=="heritrix3",];
cliff_UndefinedWeb_CC = cliff.delta(UndefinedWeb_CC$CC,UndefinedWeb_CC$`Application`,return.dm=TRUE);
print(cliff_UndefinedWeb_CC);

#UndefinedWeb-Efferent NEGLIGIBLE 
UndefinedWeb_EFF=UndefinedWeb[UndefinedWeb[1]=="libreplan" | UndefinedWeb[1]=="heritrix3",];
cliff_UndefinedWeb_EFF = cliff.delta(UndefinedWeb_EFF$Efferent,UndefinedWeb_EFF$`Application`,return.dm=TRUE);
print(cliff_UndefinedWeb_EFF);

#UndefinedWeb-NOP SMALL
UndefinedWeb_NOP=UndefinedWeb[UndefinedWeb[1]=="bigbluebutton" | UndefinedWeb[1]=="qalingo",];
cliff_UndefinedWeb_NOP = cliff.delta(UndefinedWeb_NOP$NOP,UndefinedWeb_NOP$`Application`,return.dm=TRUE);
print(cliff_UndefinedWeb_NOP);

#ServiceWeb-LOC MEDIUM 
ServiceWeb_LOC=ServiceWeb[ServiceWeb[1]=="bigbluebutton" | ServiceWeb[1]=="qalingo",];
cliff_ServiceWeb_LOC = cliff.delta(ServiceWeb_LOC$LOC,ServiceWeb_LOC$`Application`,return.dm=TRUE);
print(cliff_ServiceWeb_LOC);

#ServiceWeb-CC MEDIUM  
ServiceWeb_CC=ServiceWeb[ServiceWeb[1]=="bigbluebutton" | ServiceWeb[1]=="libreplan",];
cliff_ServiceWeb_CC = cliff.delta(ServiceWeb_CC$CC,ServiceWeb_CC$`Application`,return.dm=TRUE);
print(cliff_ServiceWeb_CC);

#ServiceWeb-Efferent LARGE 
ServiceWeb_EFF=ServiceWeb[ServiceWeb[1]=="bigbluebutton" | ServiceWeb[1]=="qalingo",];
cliff_ServiceWeb_EFF = cliff.delta(ServiceWeb_EFF$Efferent,ServiceWeb_EFF$`Application`,return.dm=TRUE);
print(cliff_ServiceWeb_EFF);

#ServiceWeb-NOP LARGE
ServiceWeb_NOP=ServiceWeb[ServiceWeb[1]=="qalingo" | ServiceWeb[1]=="libreplan",];
cliff_ServiceWeb_NOP = cliff.delta(ServiceWeb_NOP$NOP,ServiceWeb_NOP$`Application`,return.dm=TRUE);
print(cliff_ServiceWeb_NOP);

#LinkedHashMapWeb-LOC MEDIUM 
LinkedHashMapWeb_LOC=LinkedHashMapWeb[LinkedHashMapWeb[1]=="bigbluebutton" | LinkedHashMapWeb[1]=="heritrix3",];
cliff_LinkedHashMapWeb_LOC = cliff.delta(LinkedHashMapWeb_LOC$LOC,LinkedHashMapWeb_LOC$`Application`,return.dm=TRUE);
print(cliff_LinkedHashMapWeb_LOC);

#LinkedHashMapWeb-CC SMALL  
LinkedHashMapWeb_CC=LinkedHashMapWeb[LinkedHashMapWeb[1]=="bigbluebutton" | LinkedHashMapWeb[1]=="heritrix3",];
cliff_LinkedHashMapWeb_CC = cliff.delta(LinkedHashMapWeb_CC$CC,LinkedHashMapWeb_CC$`Application`,return.dm=TRUE);
print(cliff_LinkedHashMapWeb_CC);

#LinkedHashMapWeb-Efferent LARGE 
LinkedHashMapWeb_EFF=LinkedHashMapWeb[LinkedHashMapWeb[1]=="bigbluebutton" | LinkedHashMapWeb[1]=="heritrix3",];
cliff_LinkedHashMapWeb_EFF = cliff.delta(LinkedHashMapWeb_EFF$Efferent,LinkedHashMapWeb_EFF$`Application`,return.dm=TRUE);
print(cliff_LinkedHashMapWeb_EFF);

#LinkedHashMapWeb-NOP SMALL
LinkedHashMapWeb_NOP=LinkedHashMapWeb[LinkedHashMapWeb[1]=="bigbluebutton" | LinkedHashMapWeb[1]=="heritrix3",];
cliff_LinkedHashMapWeb_NOP = cliff.delta(LinkedHashMapWeb_NOP$NOP,LinkedHashMapWeb_NOP$`Application`,return.dm=TRUE);
print(cliff_LinkedHashMapWeb_NOP);

#HttpServletWeb-LOC NEGLIGIBLE 
HttpServletWeb_LOC=HttpServletWeb[HttpServletWeb[1]=="openmrs" | HttpServletWeb[1]=="heritrix3",];
cliff_HttpServletWeb_LOC = cliff.delta(HttpServletWeb_LOC$LOC,HttpServletWeb_LOC$`Application`,return.dm=TRUE);
print(cliff_HttpServletWeb_LOC);

#HttpServletWeb-CC NEGLIGIBLE  
HttpServletWeb_CC=HttpServletWeb[HttpServletWeb[1]=="openmrs" | HttpServletWeb[1]=="heritrix3",];
cliff_HttpServletWeb_CC = cliff.delta(HttpServletWeb_CC$CC,HttpServletWeb_CC$`Application`,return.dm=TRUE);
print(cliff_HttpServletWeb_CC);

#HttpServletWeb-Efferent SMALL 
HttpServletWeb_EFF=HttpServletWeb[HttpServletWeb[1]=="openmrs" | HttpServletWeb[1]=="heritrix3",];
cliff_HttpServletWeb_EFF = cliff.delta(HttpServletWeb_EFF$Efferent,HttpServletWeb_EFF$`Application`,return.dm=TRUE);
print(cliff_HttpServletWeb_EFF);

#HttpServletWeb-NOP NEGLIGIBLE
HttpServletWeb_NOP=HttpServletWeb[HttpServletWeb[1]=="openmrs" | HttpServletWeb[1]=="heritrix3",];
cliff_HttpServletWeb_NOP = cliff.delta(HttpServletWeb_NOP$NOP,HttpServletWeb_NOP$`Application`,return.dm=TRUE);
print(cliff_HttpServletWeb_NOP);

#ExceptionWeb-LOC MEDIUM 
ExceptionWeb_LOC=ExceptionWeb[ExceptionWeb[1]=="libreplan" | ExceptionWeb[1]=="qalingo",];
cliff_ExceptionWeb_LOC = cliff.delta(ExceptionWeb_LOC$LOC,ExceptionWeb_LOC$`Application`,return.dm=TRUE);
print(cliff_ExceptionWeb_LOC);

#ExceptionWeb-CC NEGLIGIBLE  
ExceptionWeb_CC=ExceptionWeb[ExceptionWeb[1]=="bigbluebutton" | ExceptionWeb[1]=="qalingo",];
cliff_ExceptionWeb_CC = cliff.delta(ExceptionWeb_CC$CC,ExceptionWeb_CC$`Application`,return.dm=TRUE);
print(cliff_ExceptionWeb_CC);

#ExceptionWeb-Efferent MEDIUM 
ExceptionWeb_EFF=ExceptionWeb[ExceptionWeb[1]=="libreplan" | ExceptionWeb[1]=="qalingo",];
cliff_ExceptionWeb_EFF = cliff.delta(ExceptionWeb_EFF$Efferent,ExceptionWeb_EFF$`Application`,return.dm=TRUE);
print(cliff_ExceptionWeb_EFF);

#ExceptionWeb-NOP SMALL
ExceptionWeb_NOP=ExceptionWeb[ExceptionWeb[1]=="libreplan" | ExceptionWeb[1]=="bigbluebutton",];
cliff_ExceptionWeb_NOP = cliff.delta(ExceptionWeb_NOP$NOP,ExceptionWeb_NOP$`Application`,return.dm=TRUE);
print(cliff_ExceptionWeb_NOP);

#DispatcherServletWeb-LOC NEGLIGIBLE 
DispatcherServletWeb_LOC=DispatcherServletWeb[DispatcherServletWeb[1]=="openmrs" | DispatcherServletWeb[1]=="qalingo",];
cliff_DispatcherServletWeb_LOC = cliff.delta(DispatcherServletWeb_LOC$LOC,DispatcherServletWeb_LOC$`Application`,return.dm=TRUE);
print(cliff_DispatcherServletWeb_LOC);

#DispatcherServletWeb-CC SMALL  
DispatcherServletWeb_CC=DispatcherServletWeb[DispatcherServletWeb[1]=="openmrs" | DispatcherServletWeb[1]=="qalingo",];
cliff_DispatcherServletWeb_CC = cliff.delta(DispatcherServletWeb_CC$CC,DispatcherServletWeb_CC$`Application`,return.dm=TRUE);
print(cliff_DispatcherServletWeb_CC);

#DispatcherServletWeb-Efferent NEGLIGIBLE 
DispatcherServletWeb_EFF=DispatcherServletWeb[DispatcherServletWeb[1]=="openmrs" | DispatcherServletWeb[1]=="qalingo",];
cliff_DispatcherServletWeb_EFF = cliff.delta(DispatcherServletWeb_EFF$Efferent,DispatcherServletWeb_EFF$`Application`,return.dm=TRUE);
print(cliff_DispatcherServletWeb_EFF);

#DispatcherServletWeb-NOP LARGE
DispatcherServletWeb_NOP=DispatcherServletWeb[DispatcherServletWeb[1]=="openmrs" | DispatcherServletWeb[1]=="qalingo",];
cliff_DispatcherServletWeb_NOP = cliff.delta(DispatcherServletWeb_NOP$NOP,DispatcherServletWeb_NOP$`Application`,return.dm=TRUE);
print(cliff_DispatcherServletWeb_NOP);

#DialogWeb-LOC MEDIUM 
DialogWeb_LOC=DialogWeb[DialogWeb[1]=="bigbluebutton" | DialogWeb[1]=="heritrix3",];
cliff_DialogWeb_LOC = cliff.delta(DialogWeb_LOC$LOC,DialogWeb_LOC$`Application`,return.dm=TRUE);
print(cliff_DialogWeb_LOC);

#DialogWeb-CC NEGLIGIBLE  
DialogWeb_CC=DialogWeb[DialogWeb[1]=="bigbluebutton" | DialogWeb[1]=="heritrix3",];
cliff_DialogWeb_CC = cliff.delta(DialogWeb_CC$CC,DialogWeb_CC$`Application`,return.dm=TRUE);
print(cliff_DialogWeb_CC);

#DialogWeb-Efferent LARGE 
DialogWeb_EFF=DialogWeb[DialogWeb[1]=="bigbluebutton" | DialogWeb[1]=="heritrix3",];
cliff_DialogWeb_EFF = cliff.delta(DialogWeb_EFF$Efferent,DialogWeb_EFF$`Application`,return.dm=TRUE);
print(cliff_DialogWeb_EFF);

#DialogWeb-NOP NEGLIGIBLE
DialogWeb_NOP=DialogWeb[DialogWeb[1]=="bigbluebutton" | DialogWeb[1]=="heritrix3",];
cliff_DialogWeb_NOP = cliff.delta(DialogWeb_NOP$NOP,DialogWeb_NOP$`Application`,return.dm=TRUE);
print(cliff_DialogWeb_NOP);


#ControllerWeb-LOC MEDIUM 
ControllerWeb_LOC=ControllerWeb[ControllerWeb[1]=="qalingo" | ControllerWeb[1]=="bigbluebutton",];
cliff_ControllerWeb_LOC = cliff.delta(ControllerWeb_LOC$LOC,ControllerWeb_LOC$`Application`,return.dm=TRUE);
print(cliff_ControllerWeb_LOC);

#ControllerWeb-CC SMALL  
ControllerWeb_CC=ControllerWeb[ControllerWeb[1]=="qalingo" | ControllerWeb[1]=="bigbluebutton",];
cliff_ControllerWeb_CC = cliff.delta(ControllerWeb_CC$CC,ControllerWeb_CC$`Application`,return.dm=TRUE);
print(cliff_ControllerWeb_CC);

#ControllerWeb-Efferent LARGE 
ControllerWeb_EFF=ControllerWeb[ControllerWeb[1]=="qalingo" | ControllerWeb[1]=="bigbluebutton",];
cliff_ControllerWeb_EFF = cliff.delta(ControllerWeb_EFF$Efferent,ControllerWeb_EFF$`Application`,return.dm=TRUE);
print(cliff_ControllerWeb_EFF);

#ControllerWeb-NOP SMALL 
ControllerWeb_NOP=ControllerWeb[ControllerWeb[1]=="qalingo" | ControllerWeb[1]=="bigbluebutton",];
cliff_ControllerWeb_NOP = cliff.delta(ControllerWeb_NOP$NOP,ControllerWeb_NOP$`Application`,return.dm=TRUE);
print(cliff_ControllerWeb_NOP);


#ComponentWeb-LOC SMALL 
ComponentWeb_LOC=ComponentWeb[ComponentWeb[1]=="openmrs" | ComponentWeb[1]=="qalingo",];
cliff_ComponentWeb_LOC = cliff.delta(ComponentWeb_LOC$LOC,ComponentWeb_LOC$`Application`,return.dm=TRUE);
print(cliff_ComponentWeb_LOC);

#ComponentWeb-CC SMALL  
ComponentWeb_CC=ComponentWeb[ComponentWeb[1]=="openmrs" | ComponentWeb[1]=="qalingo",];
cliff_ComponentWeb_CC = cliff.delta(ComponentWeb_CC$CC,ComponentWeb_CC$`Application`,return.dm=TRUE);
print(cliff_ComponentWeb_CC);

#ComponentWeb-Efferent MEDIUM 
ComponentWeb_EFF=ComponentWeb[ComponentWeb[1]=="openmrs" | ComponentWeb[1]=="qalingo",];
cliff_ComponentWeb_EFF = cliff.delta(ComponentWeb_EFF$Efferent,ComponentWeb_EFF$`Application`,return.dm=TRUE);
print(cliff_ComponentWeb_EFF);

#ComponentWeb-NOP MEDIUM 
ComponentWeb_NOP=ComponentWeb[ComponentWeb[1]=="libreplan" | ComponentWeb[1]=="qalingo",];
cliff_ComponentWeb_NOP = cliff.delta(ComponentWeb_NOP$NOP,ComponentWeb_NOP$`Application`,return.dm=TRUE);
print(cliff_ComponentWeb_NOP);


#AsyncTaskWeb-LOC NEGLEGIBLE 
AsyncTaskWeb_LOC=AsyncTaskWeb[AsyncTaskWeb[1]=="bigbluebutton" | AsyncTaskWeb[1]=="heritrix3",];
cliff_AsyncTaskWeb_LOC = cliff.delta(AsyncTaskWeb_LOC$LOC,AsyncTaskWeb_LOC$`Application`,return.dm=TRUE);
print(cliff_AsyncTaskWeb_LOC);

#AsyncTaskWeb-CC NEGLEGIBLE  
AsyncTaskWeb_CC=AsyncTaskWeb[AsyncTaskWeb[1]=="bigbluebutton" | AsyncTaskWeb[1]=="heritrix3",];
cliff_AsyncTaskWeb_CC = cliff.delta(AsyncTaskWeb_CC$CC,AsyncTaskWeb_CC$`Application`,return.dm=TRUE);
print(cliff_AsyncTaskWeb_CC);

#AsyncTaskWeb-Efferent NEGLEGIBLE 
AsyncTaskWeb_EFF=AsyncTaskWeb[AsyncTaskWeb[1]=="bigbluebutton" | AsyncTaskWeb[1]=="heritrix3",];
cliff_AsyncTaskWeb_EFF = cliff.delta(AsyncTaskWeb_EFF$Efferent,AsyncTaskWeb_EFF$`Application`,return.dm=TRUE);
print(cliff_AsyncTaskWeb_EFF);

#AsyncTaskWeb-NOP SMALL 
AsyncTaskWeb_NOP=AsyncTaskWeb[AsyncTaskWeb[1]=="bigbluebutton" | AsyncTaskWeb[1]=="heritrix3",];
cliff_AsyncTaskWeb_NOP = cliff.delta(AsyncTaskWeb_NOP$NOP,AsyncTaskWeb_NOP$`Application`,return.dm=TRUE);
print(cliff_AsyncTaskWeb_NOP);

#AdapterWeb-LOC LARGE 
AdapterWeb_LOC=AdapterWeb[AdapterWeb[1]=="bigbluebutton" | AdapterWeb[1]=="qalingo",];
cliff_AdapterWeb_LOC = cliff.delta(AdapterWeb_LOC$LOC,AdapterWeb_LOC$`Application`,return.dm=TRUE);
print(cliff_AdapterWeb_LOC);

#AdapterWeb-CC LARGEG  
AdapterWeb_CC=AdapterWeb[AdapterWeb[1]=="bigbluebutton" | AdapterWeb[1]=="qalingo",];
cliff_AdapterWeb_CC = cliff.delta(AdapterWeb_CC$CC,AdapterWeb_CC$`Application`,return.dm=TRUE);
print(cliff_AdapterWeb_CC);

#AdapterWeb-Efferent LARGE 
AdapterWeb_EFF=AdapterWeb[AdapterWeb[1]=="libreplan" | AdapterWeb[1]=="qalingo",];
cliff_AdapterWeb_EFF = cliff.delta(AdapterWeb_EFF$Efferent,AdapterWeb_EFF$`Application`,return.dm=TRUE);
print(cliff_AdapterWeb_EFF);

#AdapterWeb-NOP SMALL 
AdapterWeb_NOP=AdapterWeb[AdapterWeb[1]=="libreplan" | AdapterWeb[1]=="qalingo",];
cliff_AdapterWeb_NOP = cliff.delta(AdapterWeb_NOP$NOP,AdapterWeb_NOP$`Application`,return.dm=TRUE);
print(cliff_AdapterWeb_NOP);


#validatorWeb-LOC SMALL 
validatorWeb_LOC=validatorWeb[validatorWeb[1]=="openmrs" | validatorWeb[1]=="heritrix3",];
cliff_validatorWeb_LOC = cliff.delta(validatorWeb_LOC$LOC,validatorWeb_LOC$`Application`,return.dm=TRUE);
print(cliff_validatorWeb_LOC);

#validatorWeb-CC SMALL  
validatorWeb_CC=validatorWeb[validatorWeb[1]=="openmrs" | validatorWeb[1]=="heritrix3",];
cliff_validatorWeb_CC = cliff.delta(validatorWeb_CC$CC,validatorWeb_CC$`Application`,return.dm=TRUE);
print(cliff_validatorWeb_CC);

#validatorWeb-Efferent MEDIUM 
validatorWeb_EFF=validatorWeb[validatorWeb[1]=="openmrs" | validatorWeb[1]=="heritrix3",];
cliff_validatorWeb_EFF = cliff.delta(validatorWeb_EFF$Efferent,validatorWeb_EFF$`Application`,return.dm=TRUE);
print(cliff_validatorWeb_EFF);

#validatorWeb-NOP SMALL 
validatorWeb_NOP=validatorWeb[validatorWeb[1]=="openmrs" | validatorWeb[1]=="heritrix3",];
cliff_validatorWeb_NOP = cliff.delta(validatorWeb_NOP$NOP,validatorWeb_NOP$`Application`,return.dm=TRUE);
print(cliff_validatorWeb_NOP);

#comparatorWeb-LOC NEGLIGIBLE 
comparatorWeb_LOC=comparatorWeb[comparatorWeb[1]=="qalingo" | comparatorWeb[1]=="libreplan",];
cliff_comparatorWeb_LOC = cliff.delta(comparatorWeb_LOC$LOC,comparatorWeb_LOC$`Application`,return.dm=TRUE);
print(cliff_comparatorWeb_LOC);

#comparatorWeb-CC SMALL  
comparatorWeb_CC=comparatorWeb[comparatorWeb[1]=="libreplan" | comparatorWeb[1]=="openmrs",];
cliff_comparatorWeb_CC = cliff.delta(comparatorWeb_CC$CC,comparatorWeb_CC$`Application`,return.dm=TRUE);
print(cliff_comparatorWeb_CC);

#comparatorWeb-Efferent LARGE
comparatorWeb_EFF=comparatorWeb[comparatorWeb[1]=="qalingo" | comparatorWeb[1]=="openmrs",];
cliff_comparatorWeb_EFF = cliff.delta(comparatorWeb_EFF$Efferent,comparatorWeb_EFF$`Application`,return.dm=TRUE);
print(cliff_comparatorWeb_EFF);

#comparatorWeb-NOP MEDIUM 
comparatorWeb_NOP=comparatorWeb[comparatorWeb[1]=="qalingo" | comparatorWeb[1]=="openmrs",];
cliff_comparatorWeb_NOP = cliff.delta(comparatorWeb_NOP$NOP,comparatorWeb_NOP$`Application`,return.dm=TRUE);
print(cliff_comparatorWeb_NOP);

#testWeb-LOC MEDIUM 
testWeb_LOC=testWeb[testWeb[1]=="qalingo" | testWeb[1]=="openmrs",];
cliff_testWeb_LOC = cliff.delta(testWeb_LOC$LOC,testWeb_LOC$`Application`,return.dm=TRUE);
print(cliff_testWeb_LOC);

#testWeb-CC NEGLIGIBLE  
testWeb_CC=testWeb[testWeb[1]=="qalingo" | testWeb[1]=="openmrs",];
cliff_testWeb_CC = cliff.delta(testWeb_CC$CC,testWeb_CC$`Application`,return.dm=TRUE);
print(cliff_testWeb_CC);

#testWeb-Efferent MEDIUM 
testWeb_EFF=testWeb[testWeb[1]=="qalingo" | testWeb[1]=="openmrs",];
cliff_testWeb_EFF = cliff.delta(testWeb_EFF$Efferent,testWeb_EFF$`Application`,return.dm=TRUE);
print(cliff_testWeb_EFF);

#testWeb-NOP SMALL 
testWeb_NOP=testWeb[testWeb[1]=="qalingo" | testWeb[1]=="openmrs",];
cliff_testWeb_NOP = cliff.delta(testWeb_NOP$NOP,testWeb_NOP$`Application`,return.dm=TRUE);
print(cliff_testWeb_NOP);

#PersistenceWeb-LOC MEDIUM 
persistenceWeb_LOC=persistenceWeb[persistenceWeb[1]=="qalingo" | persistenceWeb[1]=="heritrix3",];
cliff_persistenceWeb_LOC = cliff.delta(persistenceWeb_LOC$LOC,persistenceWeb_LOC$`Application`,return.dm=TRUE);
print(cliff_persistenceWeb_LOC);

#PersistenceWeb-CC SMALL  
persistenceWeb_CC=persistenceWeb[persistenceWeb[1]=="qalingo" | persistenceWeb[1]=="bigbluebutton",];
cliff_persistenceWeb_CC = cliff.delta(persistenceWeb_CC$CC,persistenceWeb_CC$`Application`,return.dm=TRUE);
print(cliff_persistenceWeb_CC);

#PersistenceWeb-Efferent MEDIUM 
persistenceWeb_EFF=persistenceWeb[persistenceWeb[1]=="qalingo" | persistenceWeb[1]=="bigbluebutton",];
cliff_persistenceWeb_EFF = cliff.delta(persistenceWeb_EFF$Efferent,persistenceWeb_EFF$`Application`,return.dm=TRUE);
print(cliff_persistenceWeb_EFF);

#PersistenceWeb-NOP MEDIUM 
persistenceWeb_NOP=persistenceWeb[persistenceWeb[1]=="qalingo" | persistenceWeb[1]=="bigbluebutton",];
cliff_persistenceWeb_NOP = cliff.delta(persistenceWeb_NOP$NOP,persistenceWeb_NOP$`Application`,return.dm=TRUE);
print(cliff_persistenceWeb_NOP);

#EntityWeb-LOC SMALL 
entityWeb_LOC=entityWeb[entityWeb[1]=="qalingo" | entityWeb[1]=="heritrix3",];
cliff_entityWeb_LOC = cliff.delta(entityWeb_LOC$LOC,entityWeb_LOC$`Application`,return.dm=TRUE);
print(cliff_entityWeb_LOC);

#EntityWeb-CC SMALL  
entityWeb_CC=entityWeb[entityWeb[1]=="qalingo" | entityWeb[1]=="heritrix3",];
cliff_entityWeb_CC = cliff.delta(entityWeb_CC$CC,entityWeb_CC$`Application`,return.dm=TRUE);
print(cliff_entityWeb_CC);

#EntityWeb-Efferent SMALL 
entityWeb_EFF=entityWeb[entityWeb[1]=="openmrs" | entityWeb[1]=="bigbluebutton",];
cliff_entityWeb_EFF = cliff.delta(entityWeb_EFF$Efferent,entityWeb_EFF$`Application`,return.dm=TRUE);
print(cliff_entityWeb_EFF);

#EntityWeb-NOP SMALL 
entityWeb_NOP=entityWeb[entityWeb[1]=="qalingo" | entityWeb[1]=="openmrs",];
cliff_entityWeb_NOP = cliff.delta(entityWeb_NOP$NOP,entityWeb_NOP$`Application`,return.dm=TRUE);
print(cliff_entityWeb_NOP);


#ViewWeb-LOC SMALL 
viewWeb_LOC=viewWeb[viewWeb[1]=="libreplan" | viewWeb[1]=="heritrix3",];
cliff_viewWeb_LOC = cliff.delta(viewWeb_LOC$LOC,viewWeb_LOC$`Application`,return.dm=TRUE);
print(cliff_viewWeb_LOC);

#ViewWeb-CC SMALL  
viewWeb_CC=viewWeb[viewWeb[1]=="libreplan" | viewWeb[1]=="heritrix3",];
cliff_viewWeb_CC = cliff.delta(viewWeb_CC$CC,viewWeb_CC$`Application`,return.dm=TRUE);
print(cliff_viewWeb_CC);

#ViewWeb-Efferent SMALL 
viewWeb_EFF=viewWeb[viewWeb[1]=="qalingo" | viewWeb[1]=="openmrs",];
cliff_viewWeb_EFF = cliff.delta(viewWeb_EFF$Efferent,viewWeb_EFF$`Application`,return.dm=TRUE);
print(cliff_viewWeb_EFF);

#ViewWeb-NOP LARGE 
viewWeb_NOP=viewWeb[viewWeb[1]=="qalingo" | viewWeb[1]=="heritrix3",];
cliff_viewWeb_NOP = cliff.delta(viewWeb_NOP$NOP,viewWeb_NOP$`Application`,return.dm=TRUE);
print(cliff_viewWeb_NOP);

#RQ2 Android 
undefined <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Android Projects_v2.xlsx", sheet = "Undefined")
test <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Android Projects_v2.xlsx", sheet = "Test")
fragment <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Android Projects_v2.xlsx", sheet = "Fragment")
exception <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Android Projects_v2.xlsx", sheet = "Exception")
entity <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Android Projects_v2.xlsx", sheet = "Entity")
broadcastreceiver <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Android Projects_v2.xlsx", sheet = "BroadcastReceiver")
asynctask <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Android Projects_v2.xlsx", sheet = "AsyncTask")
adapter <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Android Projects_v2.xlsx", sheet = "Adapter")
activity <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Android Projects_v2.xlsx", sheet = "Activity")
persistenceAndroid <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Android Projects_v2.xlsx", sheet = "Persistence")
service <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Android Projects_v2.xlsx", sheet = "Service")
view <- read_excel("C:/Dropbox/Doutorado/Dados/RQ2/RQ2-Android Projects_v2.xlsx", sheet = "View")

#undefined-LOC MEDIUM 
undefined_LOC1=undefined[undefined[1]=="talon" | undefined[1]=="sms-backup",];
cliff_undefined_LOC1 = cliff.delta(undefined_LOC1$LOC,undefined_LOC1$`Application`,return.dm=TRUE);
print(cliff_undefined_LOC1);

#undefined-CC SMALL 
undefined_CC1=undefined[undefined[1]=="talon" | undefined[1]=="sms-backup",];
cliff_undefined_CC1 = cliff.delta(undefined_CC1$CC,undefined_CC1$`Application`,return.dm=TRUE);
print(cliff_undefined_CC1);

#undefined-Efferent SMALL 
undefined_EFF1=undefined[undefined[1]=="talon" | undefined[1]=="exoplayer",];
cliff_undefined_EFF1 = cliff.delta(undefined_EFF1$Efferent,undefined_EFF1$`Application`,return.dm=TRUE);
print(cliff_undefined_EFF1);

#undefined-NOP SMALL 
undefined_NOP=undefined[undefined[1]=="talon" | undefined[1]=="sms-backup",];
cliff_undefined_NOP = cliff.delta(undefined_NOP$NOP,undefined_NOP$`Application`,return.dm=TRUE);
print(cliff_undefined_NOP);

#test-LOC SMALL 
test_LOC1=test[test[1]=="exoplayer" | test[1]=="sms-backup",];
cliff_test_LOC1 = cliff.delta(test_LOC1$LOC,test_LOC1$`Application`,return.dm=TRUE);
print(cliff_test_LOC1);

#test-CC SMALL 
test_CC1=test[test[1]=="exoplayer" | test[1]=="sms-backup",];
cliff_test_CC1 = cliff.delta(test_CC1$CC,test_CC1$`Application`,return.dm=TRUE);
print(cliff_test_CC1);

#test-Efferent SMALL 
test_EFF1=test[test[1]=="k9" | test[1]=="exoplayer",];
cliff_test_EFF1 = cliff.delta(test_EFF1$Efferent,test_EFF1$`Application`,return.dm=TRUE);
print(cliff_test_EFF1);

#test-NOP SMALL 
test_NOP=test[test[1]=="exoplayer" | test[1]=="bitcoin",];
cliff_test_NOP = cliff.delta(test_NOP$NOP,test_NOP$`Application`,return.dm=TRUE);
print(cliff_test_NOP);

#fragment-LOC SMALL 
fragment_LOC1=fragment[fragment[1]=="talon" | fragment[1]=="bitcoin",];
cliff_fragment_LOC1 = cliff.delta(fragment_LOC1$LOC,fragment_LOC1$`Application`,return.dm=TRUE);
print(cliff_fragment_LOC1);

#fragment-CC SMALL 
fragment_CC1=fragment[fragment[1]=="k9" | fragment[1]=="bitcoin",];
cliff_fragment_CC1 = cliff.delta(fragment_CC1$CC,fragment_CC1$`Application`,return.dm=TRUE);
print(cliff_fragment_CC1);

#fragment-Efferent SMALL 
fragment_EFF1=fragment[fragment[1]=="k9" | fragment[1]=="talon",];
cliff_fragment_EFF1 = cliff.delta(fragment_EFF1$Efferent,fragment_EFF1$`Application`,return.dm=TRUE);
print(cliff_fragment_EFF1);

#fragment-NOP NEGLEGIBLE 
fragment_NOP=fragment[fragment[1]=="bitcoin" | fragment[1]=="talon",];
cliff_fragment_NOP = cliff.delta(fragment_NOP$NOP,fragment_NOP$`Application`,return.dm=TRUE);
print(cliff_fragment_NOP);


#exception-LOC SMALL 
exception_LOC1=exception[exception[1]=="sms-backup" | exception[1]=="k9",];
cliff_exception_LOC1 = cliff.delta(exception_LOC1$LOC,exception_LOC1$`Application`,return.dm=TRUE);
print(cliff_exception_LOC1);

#exception-CC NEGLIGIBLE 
exception_CC1=exception[exception[1]=="k9" | exception[1]=="sms-backup",];
cliff_exception_CC1 = cliff.delta(exception_CC1$CC,exception_CC1$`Application`,return.dm=TRUE);
print(cliff_exception_CC1);

#exception-Efferent LARGE 
exception_EFF1=exception[exception[1]=="sms-backup" | exception[1]=="exoplayer",];
cliff_exception_EFF1 = cliff.delta(exception_EFF1$Efferent,exception_EFF1$`Application`,return.dm=TRUE);
print(cliff_exception_EFF1);

#exception-NOP LARGE 
exception_NOP=exception[exception[1]=="k9" | exception[1]=="sms-backup",];
cliff_exception_NOP = cliff.delta(exception_NOP$NOP,exception_NOP$`Application`,return.dm=TRUE);
print(cliff_exception_NOP);

#entity-LOC SMALL 
entity_LOC1=entity[entity[1]=="talon" | entity[1]=="k9",];
cliff_entity_LOC1 = cliff.delta(entity_LOC1$LOC,entity_LOC1$`Application`,return.dm=TRUE);
print(cliff_entity_LOC1);

#entity-CC SMALL 
entity_CC1=entity[entity[1]=="bitcoin" | entity[1]=="talon",];
cliff_entity_CC1 = cliff.delta(entity_CC1$CC,entity_CC1$`Application`,return.dm=TRUE);
print(cliff_entity_CC1);

#entity-Efferent LARGE 
entity_EFF1=entity[entity[1]=="talon" | entity[1]=="exoplayer",];
cliff_entity_EFF1 = cliff.delta(entity_EFF1$Efferent,entity_EFF1$`Application`,return.dm=TRUE);
print(cliff_entity_EFF1);

#entity-NOP LARGE 
entity_NOP=entity[entity[1]=="talon" | entity[1]=="exoplayer",];
cliff_entity_NOP = cliff.delta(entity_NOP$NOP,entity_NOP$`Application`,return.dm=TRUE);
print(cliff_entity_NOP);

#broadcastreceiver-LOC MEDIUM 
broadcastreceiver_LOC1=broadcastreceiver[broadcastreceiver[1]=="talon" | broadcastreceiver[1]=="sms-backup",];
cliff_broadcastreceiver_LOC1 = cliff.delta(broadcastreceiver_LOC1$LOC,broadcastreceiver_LOC1$`Application`,return.dm=TRUE);
print(cliff_broadcastreceiver_LOC1);

#broadcastreceiver-CC SMALL 
broadcastreceiver_CC1=broadcastreceiver[broadcastreceiver[1]=="k9" | broadcastreceiver[1]=="sms-backup",];
cliff_broadcastreceiver_CC1 = cliff.delta(broadcastreceiver_CC1$CC,broadcastreceiver_CC1$`Application`,return.dm=TRUE);
print(cliff_broadcastreceiver_CC1);

#broadcastreceiver-Efferent LARGE 
broadcastreceiver_EFF1=broadcastreceiver[broadcastreceiver[1]=="talon" | broadcastreceiver[1]=="sms-backup",];
cliff_broadcastreceiver_EFF1 = cliff.delta(broadcastreceiver_EFF1$Efferent,broadcastreceiver_EFF1$`Application`,return.dm=TRUE);
print(cliff_broadcastreceiver_EFF1);

#broadcastreceiver-NOP MEDIUM 
broadcastreceiver_NOP=broadcastreceiver[broadcastreceiver[1]=="talon" | broadcastreceiver[1]=="sms-backup",];
cliff_broadcastreceiver_NOP = cliff.delta(broadcastreceiver_NOP$NOP,broadcastreceiver_NOP$`Application`,return.dm=TRUE);
print(cliff_broadcastreceiver_NOP);


#asynctask-LOC LARGE 
asynctask_LOC1=asynctask[asynctask[1]=="k9" | asynctask[1]=="exoplayer",];
cliff_asynctask_LOC1 = cliff.delta(asynctask_LOC1$LOC,asynctask_LOC1$`Application`,return.dm=TRUE);
print(cliff_asynctask_LOC1);

#asynctask-CC SMALL 
asynctask_CC1=asynctask[asynctask[1]=="k9" | asynctask[1]=="exoplayer",];
cliff_asynctask_CC1 = cliff.delta(asynctask_CC1$CC,asynctask_CC1$`Application`,return.dm=TRUE);
print(cliff_asynctask_CC1);

#asynctask-Efferent MEDIUM 
asynctask_EFF1=asynctask[asynctask[1]=="sms-backup" | asynctask[1]=="exoplayer",];
cliff_asynctask_EFF1 = cliff.delta(asynctask_EFF1$Efferent,asynctask_EFF1$`Application`,return.dm=TRUE);
print(cliff_asynctask_EFF1);

#asynctask-NOP LARGE 
asynctask_NOP=asynctask[asynctask[1]=="k9" | asynctask[1]=="exoplayer",];
cliff_asynctask_NOP = cliff.delta(asynctask_NOP$NOP,asynctask_NOP$`Application`,return.dm=TRUE);
print(cliff_asynctask_NOP);

#Adapter-LOC SMALL 
adapter_LOC1=adapter[adapter[1]=="bitcoin" | adapter[1]=="talon",];
cliff_adapter_LOC1 = cliff.delta(adapter_LOC1$LOC,adapter_LOC1$`Application`,return.dm=TRUE);
print(cliff_adapter_LOC1);

#adapter-CC NEGLEGIBLE 
adapter_CC1=adapter[adapter[1]=="k9" | adapter[1]=="talon",];
cliff_adapter_CC1 = cliff.delta(adapter_CC1$CC,adapter_CC1$`Application`,return.dm=TRUE);
print(cliff_adapter_CC1);

#adapter-Efferent SMALL 
adapter_EFF1=adapter[adapter[1]=="k9" | adapter[1]=="bitcoin",];
cliff_adapter_EFF1 = cliff.delta(adapter_EFF1$Efferent,adapter_EFF1$`Application`,return.dm=TRUE);
print(cliff_adapter_EFF1);

#adapter-NOP NEGLEGIBLE 
adapter_NOP=adapter[adapter[1]=="talon" | adapter[1]=="bitcoin",];
cliff_adapter_NOP = cliff.delta(adapter_NOP$NOP,adapter_NOP$`Application`,return.dm=TRUE);
print(cliff_adapter_NOP);


#Activity-LOC SMALL 
activity_LOC1=activity[activity[1]=="bitcoin" | activity[1]=="sms-backup",];
cliff_activity_LOC1 = cliff.delta(activity_LOC1$LOC,activity_LOC1$`Application`,return.dm=TRUE);
print(cliff_activity_LOC1);

#Activity-CC SMALL 
activity_CC1=activity[activity[1]=="bitcoin" | activity[1]=="sms-backup",];
cliff_activity_CC1 = cliff.delta(activity_CC1$CC,activity_CC1$`Application`,return.dm=TRUE);
print(cliff_activity_CC1);

#Activity-Efferent SMALL 
activity_EFF1=activity[activity[1]=="k9" | activity[1]=="sms-backup",];
cliff_activity_EFF1 = cliff.delta(activity_EFF1$Efferent,activity_EFF1$`Application`,return.dm=TRUE);
print(cliff_activity_EFF1);

#Activity-NOP MEDIUM 
activity_NOP=activity[activity[1]=="talon" | activity[1]=="sms-backup",];
cliff_activity_NOP = cliff.delta(activity_NOP$NOP,activity_NOP$`Application`,return.dm=TRUE);
print(cliff_activity_NOP);


#PersistenceAndroid-LOC MEDIUM 
persistenceAndroid_LOC=persistenceAndroid[persistenceAndroid[1]=="bitcoin" | persistenceAndroid[1]=="sms-backup",];
cliff_persistenceAndroid_LOC = cliff.delta(persistenceAndroid_LOC$LOC,persistenceAndroid_LOC$`Application`,return.dm=TRUE);
print(cliff_persistenceAndroid_LOC);

#PersistenceAndroid-CC SMALL 
persistenceAndroid_CC=persistenceAndroid[persistenceAndroid[1]=="exoplayer" | persistenceAndroid[1]=="talon",];
cliff_persistenceAndroid_CC = cliff.delta(persistenceAndroid_CC$CC,persistenceAndroid_CC$`Application`,return.dm=TRUE);
print(cliff_persistenceAndroid_CC);

#PersistenceAndroid-Efferent MEDIUM 
persistenceAndroid_EFF=persistenceAndroid[persistenceAndroid[1]=="bitcoin" | persistenceAndroid[1]=="sms-backup",];
cliff_persistenceAndroid_EFF = cliff.delta(persistenceAndroid_EFF$Efferent,persistenceAndroid_EFF$`Application`,return.dm=TRUE);
print(cliff_persistenceAndroid_EFF);

#PersistenceAndroid-NOP LARGE 
persistenceAndroid_NOP=persistenceAndroid[persistenceAndroid[1]=="talon" | persistenceAndroid[1]=="sms-backup",];
cliff_persistenceAndroid_NOP = cliff.delta(persistenceAndroid_NOP$NOP,persistenceAndroid_NOP$`Application`,return.dm=TRUE);
print(cliff_persistenceAndroid_NOP);

#Service-LOC SMALL 
service_LOC1=service[service[1]=="bitcoin" | service[1]=="sms-backup",];
cliff_service_LOC1 = cliff.delta(service_LOC1$LOC,service_LOC1$`Application`,return.dm=TRUE);
print(cliff_service_LOC1);

#Service-CC SMALL NEGLIGIBLE
service_CC1=service[service[1]=="talon" | service[1]=="sms-backup",];
cliff_service_CC1 = cliff.delta(service_CC1$CC,service_CC1$`Application`,return.dm=TRUE);
print(cliff_service_CC1);

#Service-Efferent MEDIUM 
service_EFF1=service[service[1]=="bitcoin" | service[1]=="sms-backup",];
cliff_service_EFF1 = cliff.delta(service_EFF1$Efferent,service_EFF1$`Application`,return.dm=TRUE);
print(cliff_service_EFF1);

#Service-NOP SMALL 
service_NOP=service[service[1]=="talon" | service[1]=="sms-backup",];
cliff_service_NOP = cliff.delta(service_NOP$NOP,service_NOP$`Application`,return.dm=TRUE);
print(cliff_service_NOP);

#View-LOC SMALL 
view_LOC1=view[view[1]=="exoplayer" | view[1]=="talon",];
cliff_view_LOC1 = cliff.delta(view_LOC1$LOC,view_LOC1$`Application`,return.dm=TRUE);
print(cliff_view_LOC1);

#view-CC SMALL SMALL
view_CC1=view[view[1]=="exoplayer" | view[1]=="bitcoin",];
cliff_view_CC1 = cliff.delta(view_CC1$CC,view_CC1$`Application`,return.dm=TRUE);
print(cliff_view_CC1);

#view-Efferent SMALL 
view_EFF1=view[view[1]=="exoplayer" | view[1]=="k9",];
cliff_view_EFF1 = cliff.delta(view_EFF1$Efferent,view_EFF1$`Application`,return.dm=TRUE);
print(cliff_view_EFF1);

#view-NOP NEGLIGIBLE 
view_NOP=view[view[1]=="bitcoin" | view[1]=="k9",];
cliff_view_NOP = cliff.delta(view_NOP$NOP,view_NOP$`Application`,return.dm=TRUE);
print(cliff_view_NOP);
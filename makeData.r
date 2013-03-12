expDir="~/barcode/exps/succs/rafaSuccs"
load(file.path(expDir,"rdas/gpl570.rda"))


require(Biobase)
keep=goodIndex & !is.na(tab$Status)
exprs=zscores[,keep]
pd=tab[keep,]

rownames(pd)=pd$DB_ID
colnames(exprs)=rownames(pd)

apData_gpl570=ExpressionSet(assayData=exprs,phenoData=AnnotatedDataFrame(pd))
annotation(apData_gpl570) <- "hgu133plus2"

if (!file.exists("pkg/data"))
  dir.create("pkg/data")
save(apData_gpl570, file="apData_gpl570.rda")


ii=apData_gpl570$ExperimentID %in% c("GSE8671","GSE4183")
apColonData=apData_gpl570[,ii]

# look at probesets in blocks
load(file.path(expDir,"rdas/anno.rda"))

blockIds=subset(anno,inBlock)$affyid
apColonData=apColonData[blockIds,]
save(apColonData, file="pkg/data/apColonData.rda")




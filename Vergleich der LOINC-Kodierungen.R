# set workspace
setwd("C:\\Users\\user\\Desktop\\R Dateien")

# read data
library(readxl)

PCORnet <- read_excel("LOINC-Codes im PCORnet-Datensatz.xlsx")
WHO_ISARIC <- read_excel("LOINC-Codes im WHO-ISARIC-Datensatz.xlsx")
GECCO <- read_excel("LOINC-Codes in GECCO.xlsx")

# rename
names(PCORnet) <- c("LOINC")
names(WHO_ISARIC) <- c("LOINC")
names(GECCO) <- c("LOINC")

PCPRnet_GECCO <- merge(x=PCORnet,y=GECCO,by="LOINC",all.x=FALSE, all.y=FALSE)
WHO_ISARIC_GECCO <- merge(x=WHO_ISARIC,y=GECCO,by="LOINC",all.x=FALSE, all.y=FALSE)

QS <- read_excel("Qualitätsgesicherte LOINC-Codes.xlsx")
Roh <- read_excel("LOINC-Codes des Labors.xlsx")
GECCO_Lab <- read_excel("LOINC-Codes im GECCO-Labormodul.xlsx")

# rename
names(QS) <- c("LOINC")
names(GECCO_Lab) <- c("LOINC")
names(Roh) <- c("LOINC")

names(QS)
names(GECCO)
names(Roh)

QS_GECCO <- merge(x=QS,y=GECCO_Lab,by="LOINC",all.x=FALSE, all.y=FALSE)
Roh_GECCO <- merge(x=Roh,y=GECCO_Lab,by="LOINC",all.x=FALSE, all.y=FALSE)
Roh_QS <- merge(x=Roh,y=QS,by="LOINC",all.x=FALSE, all.y=FALSE)

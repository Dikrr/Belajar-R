library(openxlsx)

penduduk.dki.xlsx <- read.xlsx(xlsxFile = "C:/Users/Dikri Fauzan A/Downloads/dkikepadatankelurahan2013.xlsx")

names(penduduk.dki.xlsx)

#merubah satu nama kolom
names(penduduk.dki.xlsx)[1] <- "PERIODE"
names(penduduk.dki.xlsx)[2] <- "PROVINSI"
names(penduduk.dki.xlsx)

#merubah beberapa kolom
names(penduduk.dki.xlsx) [1:3] <- c("PERIODE", "PROVINSI", "KABUPATEN")
names(penduduk.dki.xlsx)

#membuang kolom dengan bantuan oprator %in%
penduduk.dki.csv <- read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")
names(penduduk.dki.csv)

penduduk.dki.csv <- penduduk.dki.csv[,!names(penduduk.dki.csv) %in% c("X", "X.1", "X.2", "X.3", "X.4", "X.5", "X.6", "X.7", "X.8", "X.9", "X.10", "X.11")]
names(penduduk.dki.csv)

#merubah data menjadi factor untuk file .xlsx
str(penduduk.dki.xlsx)

penduduk.dki.xlsx$PROVINSI <- as.factor(penduduk.dki.xlsx$PROVINSI)
str(penduduk.dki.xlsx)

penduduk.dki.xlsx$KABUPATEN <- as.factor(penduduk.dki.xlsx$KABUPATEN)
str(penduduk.dki.xlsx)


#mengambil kolom laki-laki dan kolom perempuan dengan grep
penduduk.dki.xlsx <- read.xlsx(xlsxFile="https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.xlsx")

kolom_lakilaki <- grep(pattern = "laki-laki", x=names(penduduk.dki.xlsx), ignore.case = TRUE)
names(penduduk.dki.xlsx[kolom_lakilaki])

kolom_perempuan <- grep(pattern = "perempuan", x=names(penduduk.dki.xlsx), ignore.case = TRUE)
names(penduduk.dki.xlsx[kolom_perempuan])

#menambah kolom penumlahan
penduduk.dki.xlsx <- read.xlsx(xlsxFile="https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.xlsx")
penduduk.dki.xlsx$PEREMPUAN35TAHUNKEATAS <- rowSums(penduduk.dki.xlsx[grep(pattern = "perempuan", x=names(penduduk.dki.xlsx), ignore.case = TRUE)])
names(penduduk.dki.xlsx)

#atau

pola_nama_perempuan <- grep(pattern="perempuan", x = names(penduduk.dki.xlsx), ignore.case=TRUE)
penduduk.dki.xlsx$PEREMPUAN35TAHUNKEATAS  <- rowSums(penduduk.dki.xlsx[pola_nama_perempuan])

#normalisasi data dari kolom ke baris
library(reshape2)
penduduk.dki.xlsx <- read.xlsx(xlsxFile="https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.xlsx")
melt(data = penduduk.dki.xlsx, id.vars=c("NAMA.KECAMATAN", "NAMA.KELURAHAN"), measure.vars=c("35-39.Laki-Laki", "35-39.Perempuan"), variable.name="DEMOGRAFI", value.name="JUMLAH")

#memecah data (split fields)
penduduk.dki.xlsx <- read.xlsx(xlsxFile="https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.xlsx")
penduduk.dki.transform <- melt(data=penduduk.dki.xlsx, id.vars=c( "NAMA.KECAMATAN", "NAMA.KELURAHAN"), measure.vars = c("35-39.Laki-Laki", "35-39.Perempuan"), variable.name = "DEMOGRAFIK", value.name="JUMLAH") 

penduduk.dki.transform[c("RENTANG.UMUR", "JENIS.KELAMIN")] <- colsplit(penduduk.dki.transform$DEMOGRAFIK, "\\.", c("RENTANG.UMUR", "JENIS.KELAMIN"))
penduduk.dki.transform$DEMOGRAFIK <- NULL

penduduk.dki.transform
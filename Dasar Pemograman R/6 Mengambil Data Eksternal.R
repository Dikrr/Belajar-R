#mengambil data dari file .csv
penduduk.dki <- read.csv("C:/Users/Dikri Fauzan A/Downloads/datakependudukandki-dqlab.csv", sep=",")
penduduk.dki

#Str akan menyajikan informasi tiap kolom dataset dalam format yang compact – satu baris informasi saja per row
str(penduduk.dki)

#summary untuk melihat kondisi dataset kita dalam bentuk ringkasan yang lebih detil.
summary(penduduk.dki)

#untuk menghilangkan prefix X – yaitu X, X.1, X.2, dan seterusnya. dengan menambahkan 'check.names=FALSE'
penduduk.dki <- read.csv("C:/Users/Dikri Fauzan A/Downloads/datakependudukandki-dqlab.csv", sep=",", check.names=FALSE)
str(penduduk.dki)


#mengambil data dari file .tsv dengam mengganti sep dengan "\t"
penduduk.dki.tsv <- read.csv("C:/Users/Dikri Fauzan A/Downloads/datakependudukandki-dqlab.csv", sep="\t")
penduduk.dki.tsv


#mengambil data dari fle .xlsx
#menggunakan library openxlsx
library(openxlsx)
penduduk.dki.xlsx <- read.xlsx( xlsxFile = "C:/Users/Dikri Fauzan A/Downloads/dkikepadatankelurahan2013.xlsx")
penduduk.dki.xlsx

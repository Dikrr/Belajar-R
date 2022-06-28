#Statistika adalah ilmu yang mempelajari cara pengumpulan data, menganalisis data
#untuk mendapatkan kesimpulan informasi sampai dapat dijadikan dasar pembuatan kebijakan

#Data Science yaitu mulai dari ekplorasi data, modelling untuk mendapatakan
#pola yang tersembunyi dari data kemudian menemukan Insight untuk dasar kebijakan (data-driven)

data_intro <- read.csv("C:/Users/Dikri Fauzan A/Downloads/data_intro.csv", sep=";")
data_intro

#melihat ringkasan dari data
str(data_intro)

#ID.Pelanggan dan Nama merupakan data yang tidal bisa di analisis, sehingga perlu kita ubah ke character
#agar tidak ikut teresekusi
data_intro$ID.Pelanggan <- as.character(data_intro$ID.Pelanggan)
data_intro$Nama <- as.character(data_intro$Nama)
str(data_intro)

#Jenis.Kelamin, Produk dan Tingkat.Kepuasan merupakan data kualitatif sehingga kita harus mengubahnya ke
#factor agar bisa di buat grafik
data_intro$Jenis.Kelamin <- as.factor(data_intro$Jenis.Kelamin)
data_intro$Produk <- as.factor(data_intro$Produk)
data_intro$Tingkat.Kepuasan <- as.factor(data_intro$Tingkat.Kepuasan)
str(data_intro)


#memastikan
data_intro
str(data_intro)


#Skala Pengukuran Data
#Modus adalah nilai yang sering muncul dari suatu distribusi (data nominal-data ordinal).
#Median adalah nilai tengah dari suatu distribusi (data interval dan rasio).
#Mean adalah rata-rata aritmatik dari suatu distribusi (data interval dan rasio).


#dengan menggunakan library(pracma) untuk oprasi hitung
library(pracma)

#Modus
Mode(data_intro$Produk)
Mode(data_intro$Tingkat.Kepuasan)

#Median
median(data_intro$Jumlah)
median(data_intro$Pendapatan)
median(data_intro$Harga)
median(data_intro$Total)

#Mean
mean(data_intro$Jumlah)
mean(data_intro$Pendapatan)
mean(data_intro$Harga)
mean(data_intro$Total)


#Ukuran sebaran yang sering digunakan adalah sebagai berikut :
#Range adalah selisih antara nilai terbesar dan nilai terendah
#Varians adalah simpangan kuadrat data dari nilai rata-ratanya

#Simpangan baku adalah simpangan data dari nilai rata-ratanya, 
#simpangan baku nama lainnya adalah standard deviation. Standard
#deviation dapat digunakan untuk melihat keakuratan dari hasil estimasi,
#semakin kecil standard deviation semakin akurat hasil estimasi.

#Range
max(data_intro$Jumlah)-min(data_intro$Jumlah)
max(data_intro$Pendapatan)-min(data_intro$Pendapatan)

#Varian
var(data_intro$Pendapatan)

#Simpangan Baku (Standard Deviasi)
sd(data_intro$Jumlah)

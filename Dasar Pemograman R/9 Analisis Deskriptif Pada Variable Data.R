#Analisis Deskriptif pada variable data_intro

#Bagaimana profil pelanggan.
#Bagaimana gambaran produk.
#Membangun hipotesis.

#Function summary akan menampilkan kesimpulan pada variabel masing-masing.
#Untuk variabel bertipe character akan menampilkan panjang datanya. Variabel
#bertipe factor akan menampilkan jumlah data pada masing-masing kelas. Sedangkan
#untuk variabel bertipe numerik akan memunculkan nilai minimum, Q1,Q2 (median), Q3, mean, dan maximum.

#Pengertian dari masing-masing istilah itu adalah sebagai berikut :
#Minimum adalah nilai observasi terkecil.
#Kuartil pertama (Q1), yang memotong 25 % dari data terendah.
#Median (Q2) atau nilai pertengahan.
#Kuartil ketiga (Q3), yang memotong 25 % dari data tertinggi.
#Maksimum adalah nilai observasi terbesar.

data_intro <- read.csv("C:/Users/Dikri Fauzan A/Downloads/data_intro.csv", sep=";")
summary(data_intro)

#mengubah beberapa kolom
data_intro$ID.Pelanggan <- as.character(data_intro$ID.Pelanggan)
data_intro$Nama <- as.character(data_intro$Nama)
data_intro$Jenis.Kelamin <- as.factor(data_intro$Jenis.Kelamin)
data_intro$Produk <- as.factor(data_intro$Produk)
data_intro$Tingkat.Kepuasan <- as.factor(data_intro$Tingkat.Kepuasan)

str(data_intro)

#Analisis deskriptif menggunakan visualisasi
#plot digunakan untuk variabel bertipe Factor - function ini menghasilkan grafik Bar Plot.
#hist untuk variabel bertipe numerik seperti int - function ini menghasilkan grafik Histogram.

plot(data_intro$Jenis.Kelamin)

hist(data_intro$Pendapatan)

plot(data_intro$Produk)

hist(data_intro$Harga)

hist(data_intro$Jumlah)

hist(data_intro$Total)

plot(data_intro$Tingkat.Kepuasan)

#Dari hasil analisis deskriptif pada praktek sebelumnya kita mendapatkan:
  
#Profil Pelanggan sebagai berikut:
#1. Sebagian besar pelanggan adalah berjenis kelamin perempuan.
#2. Rata-rata pendapatan pelanggan dalam sebulan adalah 875000 
 #(tidak menggunakan ukuran pemusatan mean, karena pada grafik
 #terdapat outlier. Sehinggan ukuran pemusatan yang dipakai adalah median).
#3. Pelanggan sering membeli produk dalam jumlah 3-4 buah.
#4. Rata-rata total belanja yang sering dihabiskan adalah 710000.
#5. Kebanyakan pelanggan sangat puas kepada produk yang dijual.

#Gambaran produk yang dijual sebagai berikut:
#Produk yang sering dibeli adalah produk D.
#Rata-rata harga produk yang terjual sebesar 197500.

#Dari hasil statistik deskriptif diatas kita dapat membangun hipotesis,
#agar analisis data yang kita lakukan kaya informasi yang didapatkan.
#Pembangunan hipotesis berdasarkan intuisi kita terhadap data yang sudah kita
#lakukan eksplorasi.
#Contoh hipotesis yang dapat kita bangun berdasarkan data diatas adalah sebagai
#berikut:
  
#Apakah ada hubungan pendapatan dengan total belanja?
#Apakah ada pengaruh suatu produk dengan kepuasan pelanggan?
#Apakah ada hubungan jenis kelamin dengan total belanja?
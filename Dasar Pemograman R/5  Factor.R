#Factor
#digunakan untuk data terbatas
factor(c("Jan", "Feb", "Mar"))

#terdapat 2 atribute dalam faktor
faktor.bulan <- factor(c("Jan", "Feb", "Mar"))
attributes(faktor.bulan) #levels dan class

#bisa juga di ambil satu persatu
levels(faktor.bulan)
class(faktor.bulan)

#levels akan menunjukan index satu walau index tersebut sama
factor(c("Jan", "Feb", "Mar", "Jan", "Mar", "Jan"))

#untuk mengambil nilai sebagai type data
as.integer(faktor.bulan)
as.character(faktor.bulan)

#mengganti nilai dalam factor
levels(faktor.bulan)[2] <- "Februari"
levels(faktor.bulan)[1] <- "Januari"

#angka dalam factor akan tetap di masukan ke dalam levels
factor.umur <- factor(c(12, 35, 24, 12, 35, 37))

#Jika ketiganya dimasukkan ke dalam factor melalui deklarasi vector, maka prinsip berikut tetap berlaku:
#Na dan NaN akan menjadi bagian dari isi factor, NULL akan dihilangkan
#Hanya NaN yang akan dikenali sebagai levels

factor.lokasi <- factor(c("Bandung", "Jakarta", NA, "Jakarta", NaN, "Medan", NULL, NULL, "Bandung"))
length(factor.lokasi) #hanya NULL yang tidak dihitung
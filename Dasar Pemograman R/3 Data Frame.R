mahasiswa <- c("Dikri", "Budi", "Dinda", "Lara", "Ani")
nilai <- c(90, 80, 89, 33.14, 79)
predikat <- c("A", "A", "A", "B", "B")
nilai_mahasiswa <- data.frame(mahasiswa, nilai, predikat)

jurusan <- c("Bisnis Digital", "DKV", "Manajemen", "Administrasi", "Ilkom")
nilai_mahasiswa <- data.frame(nilai_mahasiswa, jurusan)

print(nilai_mahasiswa)

#mengambil data
print("Mengambil Data")

print(nilai_mahasiswa$predikat)
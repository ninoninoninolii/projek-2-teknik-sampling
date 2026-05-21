# Analisis Pengaruh Konten Motivasi di Media Sosial terhadap Semangat Belajar Mahasiswa Prodi Statistika Universitas Mataram
---
# Latar Belakang
Perkembangan teknologi digital dan media sosial dalam beberapa tahun terakhir telah membawa perubahan besar terhadap cara individu dalam memperoleh informasi, berinteraksi, serta membentuk pola pikir. Saat ini, media sosial tidak hanya digunakan sebagai sarana komunikasi, tetapi juga sebagai wadah penyebaran berbagai jenis konten, termasuk konten motivasi yang bertujuan memberikan dorongan positif kepada penggunanya.

Konten motivasi di media sosial umumnya berisi pesan-pesan inspiratif yang berkaitan dengan semangat belajar, pengembangan diri, peningkatan produktivitas, serta pencapaian tujuan, baik di bidang akademik maupun non-akademik. Hal ini menjadikan media sosial sebagai salah satu faktor eksternal yang dapat memengaruhi perilaku dan pola belajar mahasiswa.

Mahasiswa, khususnya mahasiswa Program Studi Statistika Universitas Mataram, termasuk kelompok yang cukup aktif dalam penggunaan media sosial dalam kehidupan sehari-hari. Intensitas paparan terhadap konten motivasi ini diduga dapat memberikan pengaruh terhadap semangat belajar, konsistensi dalam mengerjakan tugas, serta motivasi akademik secara keseluruhan.

Namun demikian, pengaruh tersebut tidak selalu sama pada setiap individu. Oleh karena itu, diperlukan analisis yang lebih mendalam untuk mengetahui sejauh mana konten motivasi di media sosial benar-benar memberikan dampak terhadap semangat belajar mahasiswa. Penelitian ini dilakukan dengan pendekatan statistik agar hasil yang diperoleh dapat memberikan gambaran yang lebih objektif dan terukur.

---
# Metode Penelitian
Penelitian ini menggunakan pendekatan kuantitatif dengan metode deskriptif untuk mengetahui pengaruh konten motivasi di media sosial terhadap semangat belajar mahasiswa Program Studi Statistika Universitas Mataram. Data penelitian diperoleh melalui penyebaran kuesioner kepada responden. Populasi dalam penelitian ini berjumlah 154 mahasiswa, kemudian penentuan jumlah sampel dilakukan menggunakan rumus Slovin dengan bantuan software R sehingga diperoleh sebanyak 35 responden. Teknik pengambilan sampel yang digunakan adalah non-probability sampling dengan metode convenience sampling, yaitu pemilihan responden berdasarkan kemudahan peneliti dalam memperoleh data penelitian.

Data yang digunakan merupakan data primer yang berasal dari hasil pengisian kuesioner oleh responden. Instrumen penelitian terdiri atas 10 item pernyataan yang diberi kode X1 sampai X10 dengan menggunakan skala Likert 1–5, mulai dari sangat tidak setuju hingga sangat setuju. Pengolahan data dilakukan menggunakan software R. Tahap awal analisis dilakukan dengan menentukan jumlah sampel menggunakan rumus Slovin, kemudian dilanjutkan dengan uji validitas untuk mengetahui ketepatan setiap item pernyataan dalam mengukur variabel penelitian. Setelah itu dilakukan uji reliabilitas menggunakan metode Cronbach Alpha untuk melihat tingkat konsistensi instrumen penelitian. Instrumen dinyatakan valid apabila nilai korelasi item lebih besar dari r tabel, sedangkan instrumen dinyatakan reliabel apabila nilai Cronbach Alpha lebih besar dari 0,70.

---
# Tahapan Analisis Data
## 1. Penentuan Jumlah Sampel dengan Rumus Slovin

Pada tahap awal penelitian dilakukan penentuan jumlah sampel menggunakan rumus Slovin. Rumus Slovin digunakan untuk menentukan jumlah sampel minimum yang dapat mewakili populasi penelitian. Metode ini biasanya digunakan apabila jumlah populasi telah diketahui, tetapi peneliti tidak memungkinkan untuk mengambil seluruh populasi sebagai responden penelitian.

Nilai `N` menunjukkan jumlah populasi penelitian, sedangkan nilai `e` menunjukkan tingkat kesalahan (error tolerance) yang digunakan dalam penelitian. Tingkat kesalahan yang digunakan pada penelitian ini sebesar 15% atau 0,15. Semakin kecil nilai error yang digunakan, maka jumlah sampel yang diperoleh akan semakin besar karena tingkat ketelitian penelitian meningkat.

Syntax berikut digunakan untuk menghitung jumlah sampel berdasarkan rumus Slovin.

```r
N <- 154
e <- 0.15

n <- N / (1 + N * (e^2))
n_final <- ceiling(n)

n_final
```

Syntax `N <- 154` digunakan untuk memasukkan jumlah populasi penelitian sebanyak 154 responden. Syntax `e <- 0.15` digunakan untuk menentukan tingkat kesalahan sebesar 15%.

Selanjutnya, syntax `n <- N / (1 + N * (e^2))` digunakan untuk menghitung jumlah sampel berdasarkan rumus Slovin. Hasil perhitungan tersebut kemudian disimpan ke dalam variabel `n`.

Syntax `ceiling(n)` digunakan untuk membulatkan hasil perhitungan ke atas agar jumlah sampel berbentuk bilangan bulat. Hasil pembulatan tersebut disimpan ke dalam variabel `n_final`.

Syntax `n_final` digunakan untuk menampilkan jumlah sampel akhir yang akan digunakan dalam penelitian.

---

## 2. Import Data

Tahap berikutnya adalah mengimpor data hasil survei ke dalam software R. Data penelitian sebelumnya disimpan dalam file Excel sehingga diperlukan package tambahan agar file tersebut dapat dibaca oleh R. Pada tahap ini digunakan package `readxl` untuk membaca file Excel dan package `psych` untuk membantu proses analisis validitas serta reliabilitas instrumen penelitian.

Syntax yang digunakan adalah sebagai berikut.

```r
library(readxl)
library(psych)

data <- read_excel("C:/Users/HP/Documents/DATA SURVEI TEKSAM.xlsx")
```

Syntax `library(readxl)` digunakan untuk mengaktifkan package `readxl` sehingga file Excel dapat dibaca di dalam R. Syntax `library(psych)` digunakan untuk mengaktifkan package `psych` yang menyediakan berbagai fungsi analisis statistik, khususnya analisis validitas dan reliabilitas.

Syntax `read_excel()` digunakan untuk membaca file Excel yang berisi data hasil survei penelitian. Lokasi file ditentukan sesuai letak penyimpanan file pada komputer. Hasil pembacaan data kemudian disimpan ke dalam variabel `data` sehingga dapat digunakan untuk proses analisis selanjutnya.

---

## 3. Menampilkan Data dan Nama Variabel

Setelah data berhasil diimpor, dilakukan pengecekan data untuk memastikan bahwa data telah masuk dengan benar ke dalam R. Pengecekan dilakukan dengan menampilkan isi data dan melihat nama variabel yang terdapat pada dataset.

Syntax yang digunakan adalah sebagai berikut.

```r
View(data)

names(data)
```

Syntax `View(data)` digunakan untuk menampilkan data dalam bentuk tabel seperti tampilan spreadsheet pada Microsoft Excel. Tampilan ini memudahkan peneliti untuk memeriksa isi data, jumlah responden, serta memastikan tidak terdapat kesalahan input data.

Syntax `names(data)` digunakan untuk menampilkan nama seluruh variabel atau nama kolom pada dataset. Langkah ini penting untuk memastikan nama variabel sesuai dengan yang akan digunakan pada proses analisis berikutnya, misalnya variabel X1 sampai X10.

---

## 4. Pemilihan Item Kuesioner

Pada tahap ini dilakukan pemilihan item-item pertanyaan yang akan digunakan dalam analisis validitas dan reliabilitas. Variabel yang dipilih merupakan item pertanyaan kuesioner, yaitu X1 sampai X10.

Syntax yang digunakan adalah sebagai berikut.

```r
item <- data[, c("X1","X2","X3","X4","X5","X6","X7","X8","X9","X10")]
```

Syntax tersebut digunakan untuk mengambil beberapa kolom tertentu dari dataset `data`, yaitu kolom X1 hingga X10. Seluruh item pertanyaan tersebut kemudian disimpan ke dalam variabel `item`.

Tujuan pemilihan item ini adalah agar proses analisis hanya difokuskan pada variabel pertanyaan penelitian dan tidak mencakup variabel lain di luar item kuesioner.

---

## 5. Menghitung Skor Total Responden

Tahap selanjutnya adalah menghitung skor total setiap responden. Skor total diperoleh dengan menjumlahkan seluruh skor item pertanyaan yang dimiliki oleh masing-masing responden.

Syntax yang digunakan adalah sebagai berikut.

```r
total <- rowSums(item)
```

Syntax `rowSums(item)` digunakan untuk menjumlahkan seluruh nilai pada setiap baris data. Karena setiap baris mewakili satu responden, maka hasil penjumlahan tersebut merupakan total skor masing-masing responden.

Hasil perhitungan kemudian disimpan ke dalam variabel `total`. Skor total ini nantinya digunakan dalam proses uji validitas untuk melihat hubungan antara masing-masing item pertanyaan dengan total skor responden.

---

## 6. Uji Validitas

Uji validitas dilakukan untuk mengetahui apakah item pertanyaan pada kuesioner mampu mengukur variabel yang ingin diteliti. Suatu item dikatakan valid apabila item tersebut memiliki hubungan yang cukup kuat dengan skor total.

Pada penelitian ini, uji validitas dilakukan menggunakan korelasi antara skor item dengan skor total responden.

Syntax yang digunakan adalah sebagai berikut.

```r
cor_validitas <- cor(item, total)

cor_validitas
```

Syntax `cor(item, total)` digunakan untuk menghitung nilai korelasi antara setiap item pertanyaan dengan skor total responden. Hasil korelasi tersebut kemudian disimpan ke dalam variabel `cor_validitas`.

Syntax `cor_validitas` digunakan untuk menampilkan hasil nilai korelasi masing-masing item. Semakin tinggi nilai korelasi yang diperoleh, maka item pertanyaan dianggap semakin valid dalam mengukur variabel penelitian.

Selain itu, digunakan syntax tambahan berikut untuk memperoleh hasil korelasi yang lebih lengkap.

```r
corr.test(item)
```

Syntax `corr.test(item)` digunakan untuk menampilkan matriks korelasi secara lengkap beserta nilai signifikansi statistiknya. Fungsi ini berasal dari package `psych` dan membantu peneliti dalam melihat hubungan antaritem secara lebih rinci.

---

## 7. Uji Reliabilitas

Uji reliabilitas dilakukan untuk mengetahui tingkat konsistensi instrumen penelitian. Instrumen yang reliabel menunjukkan bahwa item pertanyaan mampu memberikan hasil yang konsisten apabila digunakan berulang kali.

Pada penelitian ini, uji reliabilitas dilakukan menggunakan metode Cronbach Alpha melalui package `psych`.

Syntax yang digunakan adalah sebagai berikut.

```r
reliabilitas <- alpha(item)
```

Syntax `alpha(item)` digunakan untuk menghitung nilai Cronbach Alpha dari seluruh item pertanyaan yang terdapat pada variabel `item`. Hasil perhitungan tersebut kemudian disimpan ke dalam variabel `reliabilitas`.

Untuk menampilkan nilai Cronbach Alpha digunakan syntax berikut.

```r
reliabilitas$total$raw_alpha
```

Syntax tersebut digunakan untuk menampilkan nilai Cronbach Alpha secara langsung. Semakin tinggi nilai Cronbach Alpha yang diperoleh, maka instrumen penelitian dianggap semakin reliabel atau memiliki tingkat konsistensi yang baik.

Selain itu, untuk melihat hasil reliabilitas secara lebih lengkap digunakan syntax berikut.

```r
reliabilitas$total
```
Syntax tersebut digunakan untuk menampilkan informasi statistik reliabilitas secara keseluruhan, seperti nilai alpha, jumlah item, dan beberapa ukuran statistik lainnya yang berkaitan dengan konsistensi instrumen penelitian.

---
# Hasil dan Pembahasan

## 1. Penentuan Jumlah Sampel Menggunakan Rumus Slovin

Penentuan jumlah sampel pada penelitian ini dilakukan menggunakan rumus Slovin dengan jumlah populasi sebanyak 154 responden dan tingkat kesalahan sebesar 15% atau 0,15. Perhitungan dilakukan menggunakan syntax berikut.

```r
N <- 154
e <- 0.15

n <- N / (1 + N * (e^2))
n_final <- ceiling(n)

n_final
```

Hasil output yang diperoleh adalah:

```r
[1] 35
```

### Tabel Hasil Perhitungan Sampel

| Keterangan | Nilai |
|---|---|
| Jumlah Populasi (N) | 154 |
| Tingkat Kesalahan (e) | 0,15 |
| Jumlah Sampel (n) | 35 |

Berdasarkan hasil perhitungan menggunakan rumus Slovin, diperoleh jumlah sampel sebanyak 35 responden. Jumlah sampel tersebut dianggap telah mampu mewakili populasi penelitian sehingga dapat digunakan dalam proses pengumpulan data dan analisis penelitian.

---

## 2. Hasil Import Data dan Variabel Penelitian

Data penelitian diimpor dari file Excel menggunakan package `readxl` dan package `psych` digunakan untuk membantu proses analisis validitas dan reliabilitas instrumen penelitian.

```r
library(readxl)
library(psych)

data <- read_excel("C:/Users/HP/Documents/DATA SURVEI TEKSAM.xlsx")

View(data)

names(data)
```

Hasil output nama variabel adalah sebagai berikut.

```r
[1] "X1"  "X2"  "X3"  "X4"  "X5"  "X6"  "X7"  "X8"  "X9"  "X10"
```

### Tabel Variabel Penelitian

| No | Variabel |
|---|---|
| 1 | X1 |
| 2 | X2 |
| 3 | X3 |
| 4 | X4 |
| 5 | X5 |
| 6 | X6 |
| 7 | X7 |
| 8 | X8 |
| 9 | X9 |
| 10 | X10 |

Berdasarkan hasil tersebut, diketahui bahwa instrumen penelitian terdiri dari 10 item pertanyaan yang akan digunakan dalam pengujian validitas dan reliabilitas.

---

## 3. Hasil Pemilihan Item Kuesioner

Pemilihan item dilakukan untuk mengambil variabel pertanyaan penelitian yang akan dianalisis.

```r
item <- data[, c("X1","X2","X3","X4","X5","X6","X7","X8","X9","X10")]
```

Syntax tersebut digunakan untuk memilih seluruh item pertanyaan dari X1 sampai X10 yang terdapat pada dataset penelitian. Item-item tersebut kemudian digunakan dalam proses uji validitas dan reliabilitas instrumen penelitian.

---

## 4. Hasil Perhitungan Skor Total Responden

Perhitungan skor total dilakukan untuk memperoleh total nilai masing-masing responden.

```r
total <- rowSums(item)
```

Syntax `rowSums(item)` digunakan untuk menjumlahkan seluruh skor item pada setiap responden sehingga diperoleh skor total responden. Skor total ini digunakan dalam proses pengujian validitas item.

---

## 5. Hasil Uji Validitas

Uji validitas dilakukan untuk mengetahui kemampuan setiap item pertanyaan dalam mengukur variabel penelitian. Pengujian dilakukan menggunakan korelasi antara item pertanyaan dengan skor total responden.

```r
cor_validitas <- cor(item, total)

cor_validitas
```

Hasil output yang diperoleh adalah sebagai berikut.

```r
         [,1]
X1  0.5199221
X2  0.4966295
X3  0.8370573
X4  0.8094467
X5  0.6774286
X6  0.7757331
X7  0.9077837
X8  0.7832672
X9  0.7710688
X10 0.7915713
```

### Tabel Hasil Uji Validitas

| Item | Nilai Korelasi | Keterangan |
|---|---|---|
| X1 | 0,5199 | Valid |
| X2 | 0,4966 | Valid |
| X3 | 0,8371 | Sangat Valid |
| X4 | 0,8094 | Sangat Valid |
| X5 | 0,6774 | Valid |
| X6 | 0,7757 | Sangat Valid |
| X7 | 0,9078 | Sangat Valid |
| X8 | 0,7833 | Sangat Valid |
| X9 | 0,7711 | Sangat Valid |
| X10 | 0,7916 | Sangat Valid |

Berdasarkan hasil uji validitas, seluruh item pertanyaan memiliki nilai korelasi positif dan berada di atas batas minimum validitas sehingga seluruh item dinyatakan valid dan layak digunakan dalam penelitian.

Item X7 memiliki nilai korelasi tertinggi sebesar 0,9078 yang menunjukkan bahwa item tersebut memiliki hubungan yang sangat kuat terhadap skor total. Hal ini menunjukkan bahwa item X7 sangat baik dalam merepresentasikan variabel penelitian. Sementara itu, item X2 memiliki nilai korelasi terendah sebesar 0,4966, namun masih berada dalam kategori valid karena tetap memiliki hubungan yang cukup baik terhadap skor total.

Secara keseluruhan, hasil uji validitas menunjukkan bahwa seluruh butir pertanyaan dalam instrumen penelitian mampu mengukur variabel penelitian dengan baik.

---

## 6. Hasil Korelasi Antar Item

Untuk melihat hubungan antar item pertanyaan digunakan syntax berikut.

```r
corr.test(item)
```

Hasil analisis menunjukkan bahwa sebagian besar item memiliki hubungan korelasi positif dengan tingkat hubungan sedang hingga kuat.

### Tabel Korelasi Antar Item Tertinggi

| Pasangan Item | Nilai Korelasi |
|---|---|
| X7 dengan X3 | 0,77 |
| X8 dengan X9 | 0,76 |
| X8 dengan X10 | 0,76 |
| X7 dengan X4 | 0,73 |
| X9 dengan X10 | 0,73 |

Berdasarkan hasil tersebut, diketahui bahwa item-item dalam instrumen penelitian memiliki hubungan yang baik satu sama lain. Korelasi positif menunjukkan bahwa setiap item memiliki arah hubungan yang sejalan dalam mengukur variabel penelitian.

Selain itu, sebagian besar nilai probabilitas (`p-value`) berada di bawah 0,05 sehingga hubungan antar item dapat dikatakan signifikan secara statistik. Hal ini menunjukkan bahwa item-item dalam instrumen penelitian memiliki konsistensi hubungan yang baik dan saling mendukung dalam mengukur variabel penelitian.

Dengan demikian, dapat disimpulkan bahwa instrumen penelitian memiliki struktur hubungan antar item yang baik sehingga mendukung kualitas instrumen penelitian secara keseluruhan.

---

## 7. Hasil Uji Reliabilitas

Uji reliabilitas dilakukan menggunakan metode Cronbach Alpha untuk mengetahui tingkat konsistensi instrumen penelitian.

```r
reliabilitas <- alpha(item)

reliabilitas$total$raw_alpha

reliabilitas$total
```

Hasil output nilai Cronbach Alpha adalah sebagai berikut.

```r
[1] 0.9096843
```

Output lengkap reliabilitas adalah sebagai berikut.

```r
 raw_alpha std.alpha   G6(smc) average_r      S/N        ase     mean       sd
 0.9096843 0.9072711 0.9435079 0.4945443 9.784128 0.02194059 3.788571 0.600378
```

### Tabel Hasil Uji Reliabilitas

| Komponen | Nilai |
|---|---|
| Cronbach Alpha | 0,9097 |
| Standardized Alpha | 0,9073 |
| Average Correlation | 0,4945 |
| Signal to Noise Ratio (S/N) | 9,784 |
| Mean | 3,7886 |
| Standard Deviation | 0,6004 |

Berdasarkan hasil uji reliabilitas, diperoleh nilai Cronbach Alpha sebesar 0,9097. Nilai tersebut menunjukkan bahwa instrumen penelitian memiliki tingkat reliabilitas yang sangat tinggi karena berada di atas 0,90.

Hal ini berarti seluruh item pertanyaan dalam kuesioner memiliki konsistensi yang sangat baik dalam mengukur variabel penelitian. Selain itu, nilai `average_r` sebesar 0,4945 menunjukkan bahwa rata-rata hubungan antar item berada pada kategori cukup kuat. Nilai `S/N` sebesar 9,784 juga menunjukkan kualitas reliabilitas instrumen yang sangat baik.

Dengan demikian, dapat disimpulkan bahwa instrumen penelitian telah memenuhi syarat reliabilitas dan layak digunakan sebagai alat pengumpulan data penelitian.

---
# Kesimpulan

Berdasarkan hasil analisis data menggunakan software R, diperoleh jumlah sampel penelitian sebanyak 35 responden dari total populasi 154 responden berdasarkan perhitungan rumus Slovin dengan tingkat kesalahan sebesar 15%. Hasil uji validitas menunjukkan bahwa seluruh item pertanyaan dari X1 sampai X10 memiliki nilai korelasi positif dan dinyatakan valid sehingga mampu mengukur variabel penelitian dengan baik. Selain itu, hasil uji korelasi antar item menunjukkan adanya hubungan positif dan cukup kuat antar item pertanyaan. Hasil uji reliabilitas menggunakan metode Cronbach Alpha memperoleh nilai sebesar 0,9097 yang menunjukkan bahwa instrumen penelitian memiliki tingkat reliabilitas sangat tinggi. Dengan demikian, instrumen penelitian dinyatakan valid, reliabel, dan layak digunakan sebagai alat pengumpulan data penelitian.

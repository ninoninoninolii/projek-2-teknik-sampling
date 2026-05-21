# =========================
# 1. SLOVIN
# =========================

N <- 154
e <- 0.15

n <- N / (1 + N * (e^2))
n_final <- ceiling(n)

n_final

# =========================
# IMPORT DATA
# =========================

library(readxl)   # membaca file Excel
library(psych)    # analisis psikometri (validitas & reliabilitas)

data <- read_excel("C:/Users/HP/Documents/DATA SURVEI TEKSAM.xlsx")

View(data)        # menampilkan data
names(data)       # melihat nama variabel


# =========================
# UJI VALIDITAS
# =========================

# memilih item pertanyaan kuesioner
item <- data[, c("X1","X2","X3","X4","X5","X6","X7","X8","X9","X10")]

# menghitung skor total responden
total <- rowSums(item)

# korelasi item dengan skor total (validitas item)
cor_validitas <- cor(item, total)

cor_validitas

# korelasi item-total lengkap (opsional)
corr.test(item)


# =========================
# UJI RELIABILITAS
# =========================

# menghitung Cronbach Alpha (uji reliabilitas instrumen)
reliabilitas <- alpha(item)

# nilai Cronbach Alpha saja
reliabilitas$total$raw_alpha

# seluruh output reliabilitas
reliabilitas$total

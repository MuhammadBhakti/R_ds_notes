#library stringi and stringr
library(tidyverse)
library(stringr)

#contoh string
nama <- "ini adalah string"

#string dalam vektor
daftar_nama <- c("andy", "rudi", "haikal")

#Melihat panjang string
str_length(daftar_nama)

#mengkombinasikan string
str_c("nama saya ",daftar_nama)
  # jika ingin ada separator
  str_c("nama saya", daftar_nama, sep = " =")

#Subset String
str_sub(daftar_nama, 1,3)
str_sub(daftar_nama, -3,-1)

#Sortir nama
str_sort(daftar_nama, locale = "en") #en = english

#mencari kecocokan pda string (view only)
str_view(daftar_nama, "an") #cocok dengan an
str_view(daftar_nama, "a.")
str_view(daftar_nama, ".a.")

#mencari kecocokan pda string (deteksi)
str_detect(daftar_nama, )
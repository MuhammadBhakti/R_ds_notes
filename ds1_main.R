# catatan dalam proses pembuatan software dalam sebuah Web dengan menggunakan bahasa pemrograman R dan IDE Rstudio
## Running CTRL +ENTER

#====Variabel===
a <- 10         #Numerik
b <- "Sepuluh"  #String
c <- T          #Boolean
d <- 10.5       #Numerik juga
e <- 2i         #bilangan kompleks

##cek tipe data
class(e)

##aritmatika pada variabel
a + d

    ## Array
    arr_a <- 1:10
    arr_b <- c(2,5,7,9)
    arr_c <- array(data = arr_a,dim = c(5,2))
    
    ##Matrix
    mat_a <- matrix(1:25, nrow = 5, ncol = 5)
    
    #Data frame
    df_a <- data.frame(A=c(0,1,2,3,4,5),B=c(10,11,12,13,14,15))
    df_b <- data.frame(arr_a,arr_a)
    
    #List
    list_a <- list(a,arr_a,mat_a,df_a)
    
## akses data
arr_a[2]    # membaca dari array
mat_a[1,2]  # membaca dari matrix
df_a[1,]    # membaca dari df
list_a[[3]] # membaca dari list

##Membaca dari file
#---- baca read CSV
#---- baca read Excel dll

#---- akan dilanjutkan jika dapat hal penting yang baru
#a
a <- 11 / log(11)
b <- 2 * a
max(a, b)
a > b
b < a

#b
?tan
help("tan")

#c
vector <- c(80:235)
vector
sum(vector)

#d
apropos("sum", mode = "function");

#e
setwd("E:/studiaMGR/Analiza Procesów Uczenia")
a <- "smartfon Huawei"
fileName <- "output.txt"
fileConn <- file(fileName)
writeLines(a, fileConn)
close(fileConn)

remove(a)
a
a <- read.table(fileName)
a

#f
gridExtra::grid.table(Titanic[1:10 ])

#g
vecSeq <- seq(300, 220, -8)

#h
a <- c(60:30)
b <- c(30:50)
d <- c(b, a)
d

#i
nazwa <- c("smartfon_1", "smartfon_2", "smartfon_3", "smartfon_4", "smartfon_5", "smartfon_6", "smartfon_7", "smartfon_8", "smartfon_9", "smartfon_10")
wyswietlacz <- c(7, 6, 5, 7, 7, 6, 5, 7, 7, 6)
pamiec_RAM <- c(4, 6, 8, 4, 4, 4, 8, 4, 3, 4)
pamiec_wbudowana <- c(32, 64, 64, 32, 32, 64, 128, 32, 64, 128)
aparat_foto <- c(10, 20, 13, 15, 20, 32, 13, 8, 12, 8)
cena <- seq(200, 2000, 200)
liczba_opini <- seq(100, 10, -10)

smartfony <- data.frame(nazwa, wyswietlacz, pamiec_RAM, pamiec_wbudowana, aparat_foto, cena, liczba_opini)
smartfony

mean(smartfony$cena)

#j
newSmartfonRecord <- data.frame("Smartfon_11", 8, 12, 256, 108, 5685, 0)
names(newSmartfonRecord) <- names(smartfony)
smartfony <- rbind(smartfony, newSmartfonRecord)


#k
ocenaKlientow <- seq(0, 5, 0.5)
smartfony$ocenaKlientow = ocenaKlientow
smartfony
aggregate(smartfony, by=list(smartfony$ocenaKlientow), FUN=mean)

#l
newSmartfonRecord_2 <- data.frame("Smartfon_12", 7, 12, 128, 12, 500, 1, 0.5)
names(newSmartfonRecord_2)<-names(smartfony)
newSmartfonRecord_3 <- data.frame("Smartfon_13", 6, 16, 32, 35, 799, 2, 1.0)
names(newSmartfonRecord_3) <- names(smartfony)
newSmartfonRecord_4 <- data.frame("Smartfon_14", 5, 8, 64, 20, 800, 2, 2.5)
names(newSmartfonRecord_4) <- names(smartfony)
newSmartfonRecord_5 <- data.frame("Smartfon_15", 6, 4, 64, 48, 990, 3, 4.5)
names(newSmartfonRecord_5) <- names(smartfony)

smartfony <- rbind(smartfony, newSmartfonRecord_2)
smartfony <- rbind(smartfony, newSmartfonRecord_3)
smartfony <- rbind(smartfony, newSmartfonRecord_4)
smartfony <- rbind(smartfony, newSmartfonRecord_5)
smartfony

#m
ocenyGrupy <- aggregate(smartfony, by=list(smartfony$ocenaKlientow), FUN = length)
ocenyGrupy
library(plotrix)
plotrix <- barp(ocenyGrupy$ocenaKlientow)  

pie(ocenyGrupy$Group)


#o
paste(nazwa + "ma ocene klientow" + ocenaKlientow + "bo ma liczbe opini" + liczba_opini)



#p
write.csv(smartfony,"smartfony.csv")


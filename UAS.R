library("tidyverse")
library("readxl")
data<-('dat.xlsx')
head(dat)
library("ggplot2")
library("readxl")
library("dplyr")
ggplot(data=dat,aes(x=AK,y=JPM))+
  geom_point(color="blue",size=2)+
  labs(title="tabel 1. Hubungan antara Angka Kelahiran dan Jumlah Penduduk Miskin",
       x="Angka Kelahiran",
       y="Jumlah Penduduk Miskin",
       caption = "sumber : Badan Pusat Statistik")+
  theme_classic()
reg1<-lm(AK~JPM,data=dat)
summary(reg1)



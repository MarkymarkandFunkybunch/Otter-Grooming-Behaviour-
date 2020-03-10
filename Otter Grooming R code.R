#Examples of F1 and M2 within group A
sum(otter$frequency[otter$groomer=="F1"&otter$groomee=="M2"])

#Draft
sum(otter$frequency[otter$groomer=="F1"&otter$groomee=="M2"])
sum(otter$frequency[otter$groomer=="F1"&otter$groomee=="M3"])
sum(otter$frequency[otter$groomer=="F1"&otter$groomee=="M4"])
F1.M2=sum(otter$groomer=="F1"&otter$groomee=="M2")
F1.M4=sum(otter$groomer=="F1"&otter$groomee=="M4")
M2.F1=sum(otter$groomer=="M2"&otter$groomee=="F1")
M3.F1=sum(otter$groomer=="M3"&otter$groomee=="F1")
M4.F1=sum(otter$groomer=="M4"&otter$groomee=="F1")
M2.M3=sum(otter$groomer=="M2"&otter$groomee=="M3")
M2.M4=sum(otter$groomer=="M2"&otter$groomee=="M4")
M3.M2=sum(otter$groomer=="M3"&otter$groomee=="M2")
m3m4freq=sum(otter$groomer=="M3"&otter$groomee=="M4")
m4m2freq=sum(otter$groomer=="M4"&otter$groomee=="M2")
m4m3freq=sum(otter$groomer=="M4"&otter$groomee=="M3")



###Question 1) COmpare within group grooming preference

#Group A groomer and grommee
ER.F1<-sum(otter$frequency[otter$groomer=="F1"])
EE.F1<-sum(otter$frequency[otter$groomee=="F1"])
ER.M2<-sum(otter$frequency[otter$groomer=="M2"])
EE.M2<-sum(otter$frequency[otter$groomee=="M2"])
ER.M3<-sum(otter$frequency[otter$groomer=="M3"])
EE.M3<-sum(otter$frequency[otter$groomee=="M3"])
ER.M4<-sum(otter$frequency[otter$groomer=="M4"])
EE.M4<-sum(otter$frequency[otter$groomee=="M4"])

Group.A<-rbind(c(ER.F1,ER.M2,ER.M3,ER.M4),c(EE.F1,EE.M2,EE.M3,EE.M4))

#Group B groomer and groomee
ER.F7<-sum(otter$frequency[otter$groomer=="F7"])
EE.F7<-sum(otter$frequency[otter$groomee=="F7"])
ER.M8<-sum(otter$frequency[otter$groomer=="M8"])
EE.M8<-sum(otter$frequency[otter$groomee=="M8"])

Group.B<-rbind(c(ER.F7,ER.M8),c(EE.F7,EE.M8))

#Group C groomer and groomee
ER.F9<-sum(otter$frequency[otter$groomer=="F9"])
EE.F9<-sum(otter$frequency[otter$groomee=="F9"])
ER.M15<-sum(otter$frequency[otter$groomer=="M15"])
EE.M15<-sum(otter$frequency[otter$groomee=="M15"])

Group.C<-rbind(c(ER.F9,ER.M15),c(EE.F9,EE.M15))

#Group D groomer and groomee (with siblings effect)
ER.F5<-sum(otter$frequency[otter$groomer=="F5"])
EE.F5<-sum(otter$frequency[otter$groomee=="F5"])
ER.M6<-sum(otter$frequency[otter$groomer=="M6"])
EE.M6<-sum(otter$frequency[otter$groomee=="M6"])

Group.D<-rbind(c(ER.F5,ER.M6),c(EE.F5,EE.M6))


#Group H groomer and groomee
ER.F21<-sum(otter$frequency[otter$groomer=="F21"])
EE.F21<-sum(otter$frequency[otter$groomee=="F21"])
ER.F22<-sum(otter$frequency[otter$groomer=="F22"])
EE.F22<-sum(otter$frequency[otter$groomee=="F22"])
ER.M23<-sum(otter$frequency[otter$groomer=="M23"])
EE.M23<-sum(otter$frequency[otter$groomee=="M23"])
ER.M24<-sum(otter$frequency[otter$groomer=="M24"])
EE.M24<-sum(otter$frequency[otter$groomee=="M24"])

Group.H<-rbind(c(ER.F21,ER.F22,ER.M23,ER.M24),c(EE.F21,EE.F22,EE.M23,EE.M24))

par(mfrow=c(1,3),oma=c(0,0,2,0))
barplot(Group.A,col=c("indianred1","mediumturquoise"),xlab="Otter Category",ylab="Frequency",names.arg=c("F1","M2","M3","M4"),main="Group A",beside =TRUE,ylim=c(0,320),cex.lab=1.5,col.lab="darkorchid4",font.lab = 2)
legend("topright",legend = c("Groomer","Groomee"),cex = 0.8,fill=c("indianred1","mediumturquoise"))
barplot(Group.B,col=c("indianred1","mediumturquoise"),xlab="Otter Category",ylab="Frequency",names.arg=c("F7","M8"),main="Group B",beside =TRUE,ylim = c(0,120),cex.lab=1.5,col.lab="darkorchid4",font.lab = 2)
barplot(Group.C,col=c("indianred1","mediumturquoise"),xlab="Otter Category",ylab="Frequency",names.arg=c("F9","M15"),main="Group C",beside =TRUE,ylim = c(0,50),cex.lab=1.5,col.lab="darkorchid4",font.lab = 2)
mtext("Distribution and Comparsion of Groomers and Groomees Within Groups",side=3,outer=T,col="darkorchid4")

par(mfrow=c(1,2),oma=c(0,0,2,0))
barplot(Group.D,col=c("indianred1","mediumturquoise"),xlab="Otter Category",ylab="Frequency",names.arg=c("F5","M6"),main="Group D",beside =TRUE,ylim = c(0,360),col.lab="darkorchid4",font.lab = 2)
barplot(Group.H,col=c("indianred1","mediumturquoise"),xlab="Otter Category",ylab="Frequency",names.arg=c("F21","F22","M23","M24"),main="Group H",beside =TRUE,ylim=c(0,230),col.lab="darkorchid4",font.lab = 2)
legend("topright",legend = c("Groomer","Groomee"),cex = 0.8,fill=c("indianred1","mediumturquoise"))


###Question 2) Multi-members group individual exhibit preference 

#Assign different groomers in respects of different grommees

#GroupA groomer and groomee
F1.M2=sum(otter$frequency[otter$groomer=="F1"&otter$groomee=="M2"])/sum(otter$time[otter$groomer=="F1"&otter$groomee=="M2"])
F1.M3=sum(otter$frequency[otter$groomer=="F1"&otter$groomee=="M3"])/sum(otter$time[otter$groomer=="F1"&otter$groomee=="M3"])
F1.M4=sum(otter$frequency[otter$groomer=="F1"&otter$groomee=="M4"])/sum(otter$time[otter$groomer=="F1"&otter$groomee=="M4"])
M2.F1=sum(otter$frequency[otter$groomer=="M2"&otter$groomee=="F1"])/sum(otter$time[otter$groomer=="M2"&otter$groomee=="F1"])
M2.M3=sum(otter$frequency[otter$groomer=="M2"&otter$groomee=="M3"])/sum(otter$time[otter$groomer=="M2"&otter$groomee=="M3"])
M2.M4=sum(otter$frequency[otter$groomer=="M2"&otter$groomee=="M4"])/sum(otter$time[otter$groomer=="M2"&otter$groomee=="M4"])
M3.F1=sum(otter$frequency[otter$groomer=="M3"&otter$groomee=="F1"])/sum(otter$time[otter$groomer=="M3"&otter$groomee=="F1"])
M3.M2=sum(otter$frequency[otter$groomer=="M3"&otter$groomee=="M2"])/sum(otter$time[otter$groomer=="M3"&otter$groomee=="M2"])
M3.M4=sum(otter$frequency[otter$groomer=="M3"&otter$groomee=="M4"])/sum(otter$time[otter$groomer=="M3"&otter$groomee=="M4"])
M4.F1=sum(otter$frequency[otter$groomer=="M4"&otter$groomee=="F1"])/sum(otter$time[otter$groomer=="M4"&otter$groomee=="F1"])
M4.M2=sum(otter$frequency[otter$groomer=="M4"&otter$groomee=="M2"])/sum(otter$time[otter$groomer=="M4"&otter$groomee=="M2"])
M4.M3=sum(otter$frequency[otter$groomer=="M4"&otter$groomee=="M3"])/sum(otter$time[otter$groomer=="M4"&otter$groomee=="M3"])

#GroupH Groomer and Grommee

F21.F22=sum(otter$frequency[otter$groomer=="F21"&otter$groomee=="F22"])/sum(otter$time[otter$groomer=="F21"&otter$groomee=="F22"])
F21.M23=sum(otter$frequency[otter$groomer=="F21"&otter$groomee=="M23"])/sum(otter$time[otter$groomer=="F21"&otter$groomee=="M23"])
F21.M24=sum(otter$frequency[otter$groomer=="F21"&otter$groomee=="M24"])/sum(otter$time[otter$groomer=="F21"&otter$groomee=="M24"])
F22.F21=sum(otter$frequency[otter$groomer=="F22"&otter$groomee=="F21"])/sum(otter$time[otter$groomer=="F22"&otter$groomee=="F21"])
F22.M23=sum(otter$frequency[otter$groomer=="F22"&otter$groomee=="M23"])/sum(otter$time[otter$groomer=="F22"&otter$groomee=="M23"])
F22.M24=sum(otter$frequency[otter$groomer=="F22"&otter$groomee=="M24"])/sum(otter$time[otter$groomer=="F22"&otter$groomee=="M24"])
M23.F21=sum(otter$frequency[otter$groomer=="M23"&otter$groomee=="F21"])/sum(otter$time[otter$groomer=="M23"&otter$groomee=="F21"])
M23.F22=sum(otter$frequency[otter$groomer=="M23"&otter$groomee=="F22"])/sum(otter$time[otter$groomer=="M23"&otter$groomee=="F22"])
M23.M24=sum(otter$frequency[otter$groomer=="M23"&otter$groomee=="M24"])/sum(otter$time[otter$groomer=="M23"&otter$groomee=="M24"])
M24.F21=sum(otter$frequency[otter$groomer=="M24"&otter$groomee=="F21"])/sum(otter$time[otter$groomer=="M24"&otter$groomee=="F21"])
M24.F22=sum(otter$frequency[otter$groomer=="M24"&otter$groomee=="F22"])/sum(otter$time[otter$groomer=="M24"&otter$groomee=="F22"])
M24.M23=sum(otter$frequency[otter$groomer=="M24"&otter$groomee=="M23"])/sum(otter$time[otter$groomer=="M24"&otter$groomee=="M23"])

#Assign above into the different Group A and Group H and get ready for stack graph.
Group.A.2<-cbind(rbind(0,F1.M2,F1.M3,F1.M4),rbind(M2.F1,0,M2.M3,M2.M4),rbind(M3.F1,M3.M2,0,M3.M4),rbind(M4.F1,M4.M2,M4.M3,0))
Group.H.2<-rbind(c(0,F21.F22,F21.M23,F21.M24),c(F22.F21,0,F22.M23,F22.M24),c(M23.F21,M23.F22,0,M23.F22),c(M24.M23,M24.F21,M24.F22,0))

##Stack barplot
par(mfrow=c(1,2),oma=c(0,0,3,0))
barplot(Group.A.2,col=c("firebrick1","royalblue1","seagreen4","yellow1"),names.arg =c("F1.Pre","M2.Pre","M3.Pre","M4.Pre"),legend.text =c("F1","M2","M3","M4"))
barplot(Group.H.2,col=c("mediumspringgreen","coral1","olivedrab1","lightpink2"),names.arg =c("F21.Pre","F22.Pre","M23.Pre","M24.Pre"),legend.text =c("F21","F22","M23","M24"))

#Seperate Barplot
par(mfrow=c(1,2),oma=c(0,0,3,0))
barplot(Group.A.2,col=c("firebrick1","royalblue1","seagreen4","yellow1"),names.arg =c("F1","M2","M3","M4"),xlab="Grommers Preference",ylab="Frequency per minute",main="Group.A",ylim=c(0,0.08),beside=TRUE)
legend("topright",legend=c("F1","M2","M3","M4"),cex=0.6,fill=c("firebrick1","royalblue1","seagreen4","yellow1"))
barplot(Group.H.2,col=c("mediumspringgreen","coral1","olivedrab1","deepskyblue"),names.arg =c("F21","F22","M23","M24"),xlab="Grommers Preference",ylab="Frequency per minute",main="Group.H",ylim=c(0,0.08),beside=TRUE)
legend("topright",legend = c("F21","F22","M23","M24"),cex = 0.6,fill=c("mediumspringgreen","coral1","olivedrab1","deepskyblue"))
mtext("Grommers Preference Within Multi-members groups", side = 3, outer=TRUE)



###Question3 Do female groom male more than male groom females

# Assign different groups male to female / female to male
ftm.A=(otter$frequency[(otter$groomer=="F1")&(otter$groomee=="M2"|otter$groomee=="M3"|otter$groomee=="M4")]/otter$time[(otter$groomer=="F1")&(otter$groomee=="M2"|otter$groomee=="M3"|otter$groomee=="M4")])
ftm.B=(otter$frequency[(otter$groomer=="F7"& otter$groomee=="M8")]/otter$time[(otter$groomer=="F7"& otter$groomee=="M8")])
ftm.C=(otter$frequency[(otter$groomer=="F9")&(otter$groomee=="M15")]/otter$time[(otter$groomer=="F9")&(otter$groomee=="M15")])
ftm.D=(otter$frequency[(otter$groomer=="F5")&(otter$groomee=="M6")]/otter$frequency[(otter$groomer=="F5")&(otter$groomee=="M6")])
ftm.H=(otter$frequency[(otter$groomer=="F21"|otter$groomer=="F22")&(otter$groomee=="M23"|otter$groomee=="M24")]/otter$time[(otter$groomer=="F21"|otter$groomer=="F22")&(otter$groomee=="M23"|otter$groomee=="M24")])
ftm=c(ftm.A,ftm.B,ftm.C,ftm.D,ftm.H)
ftm0=ftm[ftm<=0.2]
ftm1=c(ftm.B,ftm.C,ftm.D,ftm.H)
ftm2=ftm1[ftm1<=0.2]

mtf.A=(otter$frequency[(otter$groomer=="M2"|otter$groomer=="M3"|otter$groomer=="M4")&(otter$groomee=="F1")]/otter$time[(otter$groomer=="M2"|otter$groomer=="M3"|otter$groomer=="M4")&(otter$groomee=="F1")])
mtf.B=(otter$frequency[(otter$groomer=="M8")&(otter$groomee=="F7")]/otter$time[(otter$groomer=="M8")&(otter$groomee=="F7")])
mtf.C=(otter$frequency[(otter$groomer=="M15")&(otter$groomee=="F9")]/otter$time[(otter$groomer=="M15")&(otter$groomee=="F9")])
mtf.D=(otter$frequency[(otter$groomer=="M6")&(otter$groomee=="F5")]/otter$time[(otter$groomer=="M6")&(otter$groomee=="F5")])
mtf.H=(otter$frequency[(otter$groomer=="M23"|otter$groomer=="M24")&(otter$groomee=="F21"|otter$groomee=="F22")]/otter$time[(otter$groomer=="M23"|otter$groomer=="M24")&(otter$groomee=="F21"|otter$groomee=="F22")])

mtf=c(mtf.A,mtf.B,mtf.C,mtf.D,mtf.H)
mtf0=mtf[mtf<=0.2]
mtf1=c(mtf.B,mtf.C,mtf.D,mtf.H)
mtf2=mtf1[mtf1<=0.2]


##Also compare male to male/ female to female, beacaue when breeding season ends, male to stay with male
##Could aslo checking the uni-modal for the graph 
mtm.A=(otter$frequency[(otter$groomer=="M2"|otter$groomer=="M3"|otter$groomer=="M4")&(otter$groomee=="M2"|otter$groomee=="M3"|otter$groomee=="M4")]/otter$time[(otter$groomer=="M2"|otter$groomer=="M3"|otter$groomer=="M4")&(otter$groomee=="M2"|otter$groomee=="M3"|otter$groomee=="M4")])
mtm.H=(otter$frequency[(otter$groomer=="M23"|otter$groomer=="M24")&(otter$groomee=="M23"|otter$groomee=="M24")]/otter$time[(otter$groomer=="M23"|otter$groomer=="M24")&(otter$groomee=="M23"|otter$groomee=="M24")])
mtm=c(mtm.A,mtm.H)
mtm1=mtm1[mtm1<=0.2]

ftf.H=(otter$frequency[(otter$groomer=="F21"|otter$groomer=="F22")&(otter$groomee=="F21"|otter$groomee=="F22")]/otter$time[(otter$groomer=="F21"|otter$groomer=="F22")&(otter$groomee=="F21"|otter$groomee=="F22")])
ftf=ftf.H[ftf.H<=0.2]

boxplot(mtm,mtf2,ftf,ftm2,names=c("Male to Male","Male to Female","Female to Female","Female to Male"))
boxplot(mtm,ftf,mtf2,ftm2,names=c("Male to Male","Female to Female","Male to Female","Female to Male"))
boxplot(mtf0,ftm0,names=c("Male to Female","Female to Male"))
##What about when breeding season mixed or remove how that affect 




library(vioplot)
vioplot(ftm,mtf,names=c("female to male","male to female"),col=c("red","blue"))
vioplot(ftm1,mtf1,names=c("female to male","male to female"),col=c("red","blue"))
boxplot(ftm0,mtf0,names=c("Female to Male","Male to Female"))
boxplot(ftm1,mtf1,names=c("Female to Male","Male to Female"))
boxplot(ftm2,mtf2,names=c("Female to Male","Male to Female"),main="Excluded Group A")
plot(density(ftm,mtf))
Pre.mf=split(c(mtf1,ftm1),c(rep(1,length(mtf1)),rep(2,length(ftm1))))
boxplot(Pre.mf)




###Question 4 What is the difference between breading season and Non-breeding season 

##Draft
#gr.B.S=(otter$frequency[otter$season=="B"])
#gr.NB.S=(otter$frequency[otter$season=="N"])
#gr.B.S1=gr.B.S[gr.B.S<=20]
#gr.NB.S1=gr.NB.S[gr.NB.S<=20]

#Exclue all the grooming rate per minute from 0.2

gr.B.S=(otter$frequency[otter$season=="B"]/otter$time[otter$season=="B"])
gr.NB.S=(otter$frequency[otter$season=="N"]/otter$time[otter$season=="N"])

gr.B.S1=gr.B.S[gr.B.S<=0.2]
gr.NB.S1=gr.NB.S[gr.NB.S<=0.2]

vioplot(gr.B.S1,gr.NB.S1,names=c("Breeding Season","Non-Breeding Season"),col="aquamarine1",rectCol="red",wex=1.1)
abline(h=0.012,lty=2,col="blue")
title("Distribution of Grooming rates under Season effect",ylab="Grooming Rate Per Mintue")

#the following code shows female to male in 5 different groups grooming rate in breeding season
ftm.A.B=(otter$frequency[(otter$groomer=="F1")&(otter$groomee=="M2"|otter$groomee=="M3"|otter$groomee=="M4")&(otter$season=="B")]/otter$time[(otter$groomer=="F1")&(otter$groomee=="M2"|otter$groomee=="M3"|otter$groomee=="M4")&(otter$season=="B")])
ftm.B.B=(otter$frequency[(otter$groomer=="F7"& otter$groomee=="M8")&(otter$season=="B")]/otter$time[(otter$groomer=="F7"& otter$groomee=="M8")&(otter$season=="B")])
ftm.C.B=(otter$frequency[(otter$groomer=="F9")&(otter$groomee=="M15")&(otter$season=="B")]/otter$time[(otter$groomer=="F9")&(otter$groomee=="M15")&(otter$season=="B")])
ftm.D.B=(otter$frequency[(otter$groomer=="F5")&(otter$groomee=="M6")&(otter$season=="B")]/otter$frequency[(otter$groomer=="F5")&(otter$groomee=="M6")&(otter$season=="B")])
ftm.H.B=(otter$frequency[(otter$groomer=="F21"|otter$groomer=="F22")&(otter$groomee=="M23"|otter$groomee=="M24")&(otter$season=="B")]/otter$time[(otter$groomer=="F21"|otter$groomer=="F22")&(otter$groomee=="M23"|otter$groomee=="M24")&(otter$season=="B")])
ftm.BS=c(ftm.A.B,ftm.B.B,ftm.C.B,ftm.D.B,ftm.H.B)

#the following code shows female to male in 5 different groups grooming rate in Non-breeding season 
ftm.A.N=(otter$frequency[(otter$groomer=="F1")&(otter$groomee=="M2"|otter$groomee=="M3"|otter$groomee=="M4")&(otter$season=="N")]/otter$time[(otter$groomer=="F1")&(otter$groomee=="M2"|otter$groomee=="M3"|otter$groomee=="M4")&(otter$season=="N")])
ftm.B.N=(otter$frequency[(otter$groomer=="F7"& otter$groomee=="M8")&(otter$season=="N")]/otter$time[(otter$groomer=="F7"& otter$groomee=="M8")&(otter$season=="N")])
ftm.C.N=(otter$frequency[(otter$groomer=="F9")&(otter$groomee=="M15")&(otter$season=="N")]/otter$time[(otter$groomer=="F9")&(otter$groomee=="M15")&(otter$season=="N")])
ftm.D.N=(otter$frequency[(otter$groomer=="F5")&(otter$groomee=="M6")&(otter$season=="N")]/otter$frequency[(otter$groomer=="F5")&(otter$groomee=="M6")&(otter$season=="N")])
ftm.H.N=(otter$frequency[(otter$groomer=="F21"|otter$groomer=="F22")&(otter$groomee=="M23"|otter$groomee=="M24")&(otter$season=="N")]/otter$time[(otter$groomer=="F21"|otter$groomer=="F22")&(otter$groomee=="M23"|otter$groomee=="M24")&(otter$season=="N")])
ftm.NBS=c(ftm.A.N,ftm.B.N,ftm.C.N,ftm.D.N,ftm.H.N)

#the following code shows the male to female gromming rate in 5 different groups in breeding season
mtf.A.B=(otter$frequency[(otter$groomer=="M2"|otter$groomer=="M3"|otter$groomer=="M4")&(otter$groomee=="F1")&(otter$season=="B")]/otter$time[(otter$groomer=="M2"|otter$groomer=="M3"|otter$groomer=="M4")&(otter$groomee=="F1")&(otter$season=="B")])
mtf.B.B=(otter$frequency[(otter$groomer=="M8")&(otter$groomee=="F7")&(otter$season=="B")]/otter$time[(otter$groomer=="M8")&(otter$groomee=="F7")&(otter$season=="B")])
mtf.C.B=(otter$frequency[(otter$groomer=="M15")&(otter$groomee=="F9")&(otter$season=="B")]/otter$time[(otter$groomer=="M15")&(otter$groomee=="F9")&(otter$season=="B")])
mtf.D.B=(otter$frequency[(otter$groomer=="M6")&(otter$groomee=="F5")&(otter$season=="B")]/otter$time[(otter$groomer=="M6")&(otter$groomee=="F5")&(otter$season=="B")])
mtf.H.B=(otter$frequency[(otter$groomer=="M23"|otter$groomer=="M24")&(otter$groomee=="F21"|otter$groomee=="F22")&(otter$season=="B")]/otter$time[(otter$groomer=="M23"|otter$groomer=="M24")&(otter$groomee=="F21"|otter$groomee=="F22")&(otter$season=="B")])
mtf.BS=c(mtf.A.B,mtf.B.B,mtf.C.B,mtf.D.B,mtf.H.B)
#the following code shows the male to female gromming rate in 5 different groups in Non-breeding season
mtf.A.N=(otter$frequency[(otter$groomer=="M2"|otter$groomer=="M3"|otter$groomer=="M4")&(otter$groomee=="F1")&(otter$season=="N")]/otter$time[(otter$groomer=="M2"|otter$groomer=="M3"|otter$groomer=="M4")&(otter$groomee=="F1")&(otter$season=="N")])
mtf.B.N=(otter$frequency[(otter$groomer=="M8")&(otter$groomee=="F7")&(otter$season=="N")]/otter$time[(otter$groomer=="M8")&(otter$groomee=="F7")&(otter$season=="N")])
mtf.C.N=(otter$frequency[(otter$groomer=="M15")&(otter$groomee=="F9")&(otter$season=="N")]/otter$time[(otter$groomer=="M15")&(otter$groomee=="F9")&(otter$season=="N")])
mtf.D.N=(otter$frequency[(otter$groomer=="M6")&(otter$groomee=="F5")&(otter$season=="N")]/otter$time[(otter$groomer=="M6")&(otter$groomee=="F5")&(otter$season=="N")])
mtf.H.N=(otter$frequency[(otter$groomer=="M23"|otter$groomer=="M24")&(otter$groomee=="F21"|otter$groomee=="F22")&(otter$season=="N")]/otter$time[(otter$groomer=="M23"|otter$groomer=="M24")&(otter$groomee=="F21"|otter$groomee=="F22")&(otter$season=="N")])
mtf.NBS=c(mtf.A.N,mtf.B.N,mtf.C.N,mtf.D.N,mtf.H.N)
#construct colorful boxplot to distiguish
boxplot(ftm.BS,ftm.NBS,mtf.BS,mtf.NBS,ylim=c(0,0.2),col=c("hotpink1","cadetblue1","hotpink1","cadetblue1"),
        main="Distribution and Comparison of Grooming rate in Different Seasons",ylab="Gromming rate per minute",names=c("Female to Male","Female to Male","Male to Female","Male to Female"),xlab="Female and Male")
legend("topleft",legend = c("Bredding","Non-Breeding"),cex = 0.8,fill=c("hotpink1","cadetblue1"))



#@@@#following code trying to examine difference between male to male,female to female in breeding and non breeding season
mtm.A.B=(otter$frequency[(otter$groomer=="M2"|otter$groomer=="M3"|otter$groomer=="M4")&(otter$groomee=="M2"|otter$groomee=="M3"|otter$groomee=="M4")&(otter$season=="B")]/otter$time[(otter$groomer=="M2"|otter$groomer=="M3"|otter$groomer=="M4")&(otter$groomee=="M2"|otter$groomee=="M3"|otter$groomee=="M4")&(otter$season=="B")])
mtm.H.B=(otter$frequency[(otter$groomer=="M23"|otter$groomer=="M24")&(otter$groomee=="M23"|otter$groomee=="M24")&(otter$season=="B")]/otter$time[(otter$groomer=="M23"|otter$groomer=="M24")&(otter$groomee=="M23"|otter$groomee=="M24")&(otter$season=="B")])
mtm.B=c(mtm.A.B,mtm.H.B)
mtm.A.N=(otter$frequency[(otter$groomer=="M2"|otter$groomer=="M3"|otter$groomer=="M4")&(otter$groomee=="M2"|otter$groomee=="M3"|otter$groomee=="M4")&(otter$season=="N")]/otter$time[(otter$groomer=="M2"|otter$groomer=="M3"|otter$groomer=="M4")&(otter$groomee=="M2"|otter$groomee=="M3"|otter$groomee=="M4")&(otter$season=="N")])
mtm.H.N=(otter$frequency[(otter$groomer=="M23"|otter$groomer=="M24")&(otter$groomee=="M23"|otter$groomee=="M24")&(otter$season=="N")]/otter$time[(otter$groomer=="M23"|otter$groomer=="M24")&(otter$groomee=="M23"|otter$groomee=="M24")&(otter$season=="N")])
mtm.N=c(mtm.A.N,mtm.H.N)

ftf.H.B=(otter$frequency[(otter$groomer=="F21"|otter$groomer=="F22")&(otter$groomee=="F21"|otter$groomee=="F22")&(otter$season=="B")]/otter$time[(otter$groomer=="F21"|otter$groomer=="F22")&(otter$groomee=="F21"|otter$groomee=="F22")&(otter$season=="B")])
ftf.H.B=ftf.H.B[ftf.H.B<=0.2]
ftf.H.N=(otter$frequency[(otter$groomer=="F21"|otter$groomer=="F22")&(otter$groomee=="F21"|otter$groomee=="F22")&(otter$season=="N")]/otter$time[(otter$groomer=="F21"|otter$groomer=="F22")&(otter$groomee=="F21"|otter$groomee=="F22")&(otter$season=="N")])


boxplot(ftm.BS,ftm.NBS,mtf.BS,mtf.NBS,mtm.B,mtm.N,ftf.H.B,ftf.H.N,ylim=c(0,0.2),col=c("hotpink1","cadetblue1","hotpink1","cadetblue1","hotpink1","cadetblue1","hotpink1","cadetblue1"),
        main="Distribution and Comparison of Grooming rate in Different Seasons",ylab="Gromming rate per minute",names=c("Female to Male","Female to Male","Male to Female","Male to Female", "Male to Male","Male to Male","Female to Female","Female to Female"),xlab="Female and Male")
legend("topleft",legend = c("Bredding","Non-Breeding"),cex = 0.8,fill=c("hotpink1","cadetblue1"))

boxplot(mtm.B,mtm.N,ftf.H.B,ftf.H.N)


####Question 5 How siblings and no blood relation difference

Group.D.sib=(otter$frequency[(otter$groomer=="F5"|otter$groomer=="M6")&(otter$groomee=="F5"|otter$groomee=="M6")]/otter$time[(otter$groomer=="F5"|otter$groomer=="M6")&(otter$groomee=="F5"|otter$groomee=="M6")])
Group.C.unrelated=(otter$frequency[(otter$groomer=="F9"|otter$groomer=="M15")&(otter$groomee=="F9"|otter$groomee=="M15")]/otter$time[(otter$groomer=="F9"|otter$groomer=="M15")&(otter$groomee=="F9"|otter$groomee=="M15")])
Group.B.unrelated=(otter$frequency[(otter$groomer=="F7"|otter$groomer=="M8")&(otter$groomee=="F7"|otter$groomee=="M8")]/otter$time[(otter$groomer=="F7"|otter$groomer=="M8")&(otter$groomee=="F7"|otter$groomee=="M8")])
Group.D.sib1=Group.D.sib[Group.D.sib<=0.5] #help creating smooth data
boxplot(Group.D.sib,Group.C.unrelated,Group.B.unrelated)
vioplot(Group.D.sib,Group.C.unrelated,Group.B.unrelated,names=c("Siblings.Group D","Unrelated.C","Unrelated.B"),col="mediumpurple1",rectCol="cyan1",wex=1.1)
abline(h=0.117,lty=3,col="coral2")
title("Distribution and comparison of Grooming rates under siblings effect",ylab="Grooming Rate Per Mintue")
plot(density(Group.D.sib),col="coral2")
lines(density(Group.C.unrelated),col="blue")
     

####QUestion 6  How does age and development period affect grooming

Q6.f21f22.B=otter$frequency[(otter$groomer=="F21"& otter$groomee=="F22"& otter$season=="B")]
Q6.f21f22.N=otter$frequency[(otter$groomer=="F21"& otter$groomee=="F22"& otter$season=="N")]

#Investiage relationship when no gender and breeding effect, showing that breeding and non breeding season,young adult and adult has)
m3m4.B=otter$frequency[(otter$groomer=="M3"|otter$groomer=="M4")& (otter$groomee=="M3"|otter$groomee=="M4")& (otter$season=="B")]/otter$time[(otter$groomer=="M3"|otter$groomer=="M4")& (otter$groomee=="M3"|otter$groomee=="M4")& (otter$season=="B")]
m3m4.N=otter$frequency[(otter$groomer=="M3"|otter$groomer=="M4")& (otter$groomee=="M3"|otter$groomee=="M4")& (otter$season=="N")]/otter$time[(otter$groomer=="M3"|otter$groomer=="M4")& (otter$groomee=="M3"|otter$groomee=="M4")& (otter$season=="N")]
Q6.m23m24.B=otter$frequency[(otter$groomer=="M23"|otter$groomer=="M24")& (otter$groomee=="M23"|otter$groomee=="M24")& (otter$season=="B")]/otter$time[(otter$groomer=="M23"|otter$groomer=="M24")& (otter$groomee=="M23"|otter$groomee=="M24")& (otter$season=="B")]
Q6.m23m24.N=otter$frequency[(otter$groomer=="M23"|otter$groomer=="M24")& (otter$groomee=="M23"|otter$groomee=="M24")& (otter$season=="N")]/otter$time[(otter$groomer=="M23"|otter$groomer=="M24")& (otter$groomee=="M23"|otter$groomee=="M24")& (otter$season=="N")]
vioplot(m3m4.B,m3m4.N,Q6.m23m24.B,Q6.m23m24.N,col="white")


###Q3 extension 
## Examine subadult, young adult and adlut in gender effect and breeding season
#Breeding season

subftm.B=(otter$frequency[(otter$groomer=="F21"& otter$groomee=="M23")&(otter$season=="B")]/otter$time[(otter$groomer=="F21"& otter$groomee=="M23")&(otter$season=="B")])
submtf.B=(otter$frequency[(otter$groomer=="M23"& otter$groomee=="F21")&(otter$season=="B")]/otter$time[(otter$groomer=="M23"& otter$groomee=="F21")&(otter$season=="B")])
youftm.B=(otter$frequency[(otter$groomer=="F22"& otter$groomee=="M24")&(otter$season=="B")]/otter$time[(otter$groomer=="F22"& otter$groomee=="M24")&(otter$season=="B")])
youmtf.B=(otter$frequency[(otter$groomer=="M24"& otter$groomee=="F22")&(otter$season=="B")]/otter$time[(otter$groomer=="M24"& otter$groomee=="F22")&(otter$season=="B")])
ftm.B.B=(otter$frequency[(otter$groomer=="F7"& otter$groomee=="M8")&(otter$season=="B")]/otter$time[(otter$groomer=="F7"& otter$groomee=="M8")&(otter$season=="B")])
mtf.B.B=(otter$frequency[(otter$groomer=="M8")&(otter$groomee=="F7")&(otter$season=="B")]/otter$time[(otter$groomer=="M8")&(otter$groomee=="F7")&(otter$season=="B")])
ftm.c.B=(otter$frequency[(otter$groomer=="F9"& otter$groomee=="M15")&(otter$season=="B")]/otter$time[(otter$groomer=="F9")& (otter$groomee=="M15")&(otter$season=="B")])
mtf.c.B=(otter$frequency[(otter$groomer=="M15")&(otter$groomee=="F9")&(otter$season=="B")]/otter$time[(otter$groomer=="M15")&(otter$groomee=="F9")&(otter$season=="B")])

Age.eff1<-rbind(c(subftm.B,submtf.B),c(youftm.B,youmtf.B),c(ftm.B.B,mtf.B.B))
boxplot(subftm.B,submtf.B,youftm.B,youmtf.B,ftm.B.B,mtf.B.B,ftm.c.B,mtf.c.B,ylim=c(0,0.13),col=c("hotpink1","cadetblue1","hotpink1","cadetblue1","hotpink1","cadetblue1"),
        main="Gender Preference under age effect in Breeding season",ylab="Gromming rate per minute",names=c("Subadult","Subadult","Young.Ad","Young.Ad","Adult","Adult","Adult","Adult"),xlab="Age Group")
legend("topleft",legend = c("Female to Male","Male to Female"),cex = 0.8,fill=c("hotpink1","cadetblue1"))

subftm.N=(otter$frequency[(otter$groomer=="F21"& otter$groomee=="M23")&(otter$season=="N")]/otter$time[(otter$groomer=="F21"& otter$groomee=="M23")&(otter$season=="N")])
submtf.N=(otter$frequency[(otter$groomer=="M23"& otter$groomee=="F21")&(otter$season=="N")]/otter$time[(otter$groomer=="M23"& otter$groomee=="F21")&(otter$season=="N")])
youftm.N=(otter$frequency[(otter$groomer=="F22"& otter$groomee=="M24")&(otter$season=="N")]/otter$time[(otter$groomer=="F22"& otter$groomee=="M24")&(otter$season=="N")])
youmtf.N=(otter$frequency[(otter$groomer=="M24"& otter$groomee=="F22")&(otter$season=="N")]/otter$time[(otter$groomer=="M24"& otter$groomee=="F22")&(otter$season=="N")])
ftm.B.N=(otter$frequency[(otter$groomer=="F7"& otter$groomee=="M8")&(otter$season=="N")]/otter$time[(otter$groomer=="F7"& otter$groomee=="M8")&(otter$season=="N")])
mtf.B.N=(otter$frequency[(otter$groomer=="M8")&(otter$groomee=="F7")&(otter$season=="N")]/otter$time[(otter$groomer=="M8")&(otter$groomee=="F7")&(otter$season=="N")])
ftm.C.N=(otter$frequency[(otter$groomer=="F9"& otter$groomee=="M15")&(otter$season=="N")]/otter$time[(otter$groomer=="F9"& otter$groomee=="M15")&(otter$season=="N")])
mtf.C.N=(otter$frequency[(otter$groomer=="M15")&(otter$groomee=="F9")&(otter$season=="N")]/otter$time[(otter$groomer=="M15")&(otter$groomee=="F9")&(otter$season=="N")])

Age.eff2<-rbind(c(subftm.N,submtf.N),c(youftm.N,youmtf.N),c(ftm.B.N,mtf.B.N))
boxplot(subftm.N,submtf.N,youftm.N,youmtf.N,ftm.B.N,mtf.B.N,ftm.C.N,mtf.C.N,ylim=c(0,0.10),col=c("hotpink1","cadetblue1","hotpink1","cadetblue1","hotpink1","cadetblue1"),
        main="Gender Preference under age effect in NON-Breeding season",ylab="Gromming rate per minute",names=c("Subadult","Subadult","Young.Ad","Young.Ad","Adult","Adult","Adult","Adult"),xlab="Age Group")
legend("topleft",legend = c("Female to Male","Male to Female"),cex = 0.8,fill=c("hotpink1","cadetblue1"))
#MAKE SURE GROUP B AND C SHOWS SIMLIAR PATTER
ftm.B.B=(otter$frequency[(otter$groomer=="F7"& otter$groomee=="M8")&(otter$season=="B")]/otter$time[(otter$groomer=="F7"& otter$groomee=="M8")&(otter$season=="N")])
mtf.B.B=(otter$frequency[(otter$groomer=="M8")&(otter$groomee=="F7")&(otter$season=="B")]/otter$time[(otter$groomer=="M8")&(otter$groomee=="F7")&(otter$season=="N")])




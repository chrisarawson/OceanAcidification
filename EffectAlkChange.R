library(seacarb)

loALK<-carb(flag=8,seq(7.5,9,length.out=15),0.00118,T=18,S=37)
midALK<-carb(flag=8,seq(7.5,9,length.out=15),0.00236,T=18,S=37)
hiALK<-carb(flag=8,seq(7.5,9,length.out=15),0.00354,T=18,S=37)
plot(loALK$pH,loALK$pCO2,type="b",pch=16,col="red",
     main="Relationship between Alkalinity, pH and pCO2",
     xlab="pH",ylab="pCO2")
points(midALK$pH,midALK$pCO2,type="b",pch=17,col="blue")
points(hiALK$pH,hiALK$pCO2,type="b",pch=15,col="green")
legend(8.3,800,legend=c("ALK = 0.00118 mol/kg","ALK = 0.00236 mol/kg","ALK = 0.00354 mol/kg"),
       col=c("red","blue","green"),lty="solid",pch=c(16,17,15),
       text.col="black",bty="n",y.intersp=1)

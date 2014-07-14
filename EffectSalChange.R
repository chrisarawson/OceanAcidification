loSAL<-carb(flag=8,seq(7.5,9,length.out=15),0.00472,T=18,S=17)
midSAL<-carb(flag=8,seq(7.5,9,length.out=15),0.00472,T=18,S=27)
hiSAL<-carb(flag=8,seq(7.5,9,length.out=15),0.00472,T=18,S=37)
par(mfrow=c(2,2))
plot(loSAL$pH,loSAL$pCO2,type="b",pch=16,col="red",
     main="Alkalinity (=0.00472 mol/kg), pH and pCO2",
     xlab="pH",ylab="pCO2",ylim=c(0,800),xlim=c(7.5,8.5))
points(midSAL$pH,midSAL$pCO2,type="b",pch=17,col="blue")
points(hiSAL$pH,hiSAL$pCO2,type="b",pch=15,col="green")
legend(8.0,800,legend=c("SAL = 17 ppt","SAL = 27 ppt","SAL = 37 ppt"),
       col=c("red","blue","green"),lty="solid",pch=c(16,17,15),
       text.col="black",bty="n",y.intersp=1)
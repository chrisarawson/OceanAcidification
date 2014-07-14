library(seacarb)

loTEMP<-carb(flag=8,seq(7.5,9,length.out=15),0.00236,T=10,S=37)
midTEMP<-carb(flag=8,seq(7.5,9,length.out=15),0.00236,T=18,S=37)
hiTEMP<-carb(flag=8,seq(7.5,9,length.out=15),0.00236,T=26,S=37)
plot(loTEMP$pH,loTEMP$pCO2,type="b",pch=16,col="red",
     main="Relationship between Alkalinity, pH and pCO2",
     xlab="pH",ylab="pCO2",ylim=c(0,800),xlim=c(7.5,8.5))
points(midTEMP$pH,midTEMP$pCO2,type="b",pch=17,col="blue")
points(hiTEMP$pH,hiTEMP$pCO2,type="b",pch=15,col="green")
legend(8.0,800,legend=c("TEMP = 15C","TEMP = 18C","TEMP = 26C"),
       col=c("red","blue","green"),lty="solid",pch=c(16,17,15),
       text.col="black",bty="n",y.intersp=1)

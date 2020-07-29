x=c(340892,44010,26982,3078) #raw number of weather related accidents 
x1=(x/414962)*100 #raw weather accident propability
x1 
y=c(290,50,20,5)
y1=(y/365)*100
y2=100/y1 #normalization factor 
x2=x1*y2 #new proportional probability 
x3=(x2/sum(x2))*100
x3 #normalized accident proportion
prop.test(x=c(11090,128681),n=c(26982,414962),alternative="greater")
plot(x1,xlim=c(0,5),ylim=c(0,100),type="o",col="royalblue",ylab="probability",xlab="case number",main="weather conditions risk graph")
plot(x3,xlim=c(0,5),ylim=c(0,100),type="o",col="royalblue",ylab="proportional probability",xlab="case number",main="normalized weather conditions risk graph")






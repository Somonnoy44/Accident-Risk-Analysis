x=c(9408,34244,39549,32788,22462,9384)#Raw data without normalization factor
y=((x/147913)*100)#percentage of different age groups involved in various accidents
x
y #Raw percentage fatalities by age group
x1=c(420654696,204022884,186754260,153014324,138069971,103849040) #population distribution by age group
y1=((x1/1206365195)*100) #population percentage
x1
y1
x2=100/y1 #Normalization factor
x2 #Normalization factor
z=x2*y
z 
sum(z)
z1=(z/sum(z))*100 #percentage of deaths after normalization
z1
plot(z1,xlim=c(0,6),ylim=c(0,100),type="o",col="red",xlab="case type",ylab="normalized probability",main="normalized age group risk graph")
plot(y,xlim=c(0,6),ylim=c(0,100),type="o",col="red",xlab="case type",ylab=" probability",main="age group risk graph")




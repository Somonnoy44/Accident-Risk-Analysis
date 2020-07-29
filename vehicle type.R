x=c(44092,6762,31183,10651,37505) #vehicle type in line two-wheeler,auto,4-wheeler,buses,goods trucks 
x1=(x/130193)*100 #raw percentage
x1
y=c(73.5,6,13.6,1,4.4)
y1=100/y
x2=x1*y1
x3=(x2/sum(x2))*100 #normalized precentage 
x3
prop.test(x=c(12088,141210),n=c(37487,458814),alternative="greater")
prop.test(x=c(39504,141210),n=c(101085,458814),alternative="greater")
plot(x1,xlim=c(0,6),ylim=c(0,100),main="vehicle type risk graph",type="o",ylab="probability",xlab="case number")
plot(x3,xlim=c(0,6),ylim=c(0,100),main="normalized vehicle type risk graph",type="o",ylab="normalized probability",xlab="case number")
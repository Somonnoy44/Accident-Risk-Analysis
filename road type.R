x=c(142359,121655,216638)#raw data on road type 
x1=(x/480652)*100 # raw percentage 
x1
y=c(1.803,3.143,95.107) #percentage of roads NH,SH,SIDE ROADS 
y1=100/y #normalization factor
y1
x2=x1*y1 
x3=(x2/sum(x2))*100
x3 #normalized percentage 
prop.test(x=c(52075,150785),n=c(142359,480652),alternative="greater")
prop.test(x=c(42067,150785),n=c(121655,480652),alternative="greater")
plot(x1,type="o",xlim=c(0,4),ylim=c(0,100),xlab="case type",ylab="probability",main="road type risk graph")
plot(x3,type="o",xlim=c(0,4),ylim=c(0,100),xlab="case type",ylab="normalized probability",main="normalized road type risk graph")

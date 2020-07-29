#age distribution data 
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
plot(z1,xlim=c(0,6),ylim=c(0,100),type="o",col="red")
plot(y,xlim=c(0,6),ylim=c(0,100),type="o",col="red")


#road type data 
#x=c(142359,121655,216638)#raw data on road type 
x1=(x/480652)*100 # raw percentage 
x1
y=c(1.803,3.143,95.107)
y1=100/y #normalization factor
y1
x2=x1*y1 
x3=(x2/sum(x2))*100
x3 #normalized percentage 
prop.test(x=c(52075,150785),n=c(142359,480652),alternative="greater")
prop.test(x=c(42067,150785),n=c(121655,480652),alternative="greater")

#type of violation
x=c(327448,29148,14071,8526,6324)#
y=c(98613,9527,4776,3172,1826)
x1=y/x
x2=sum(y)/sum(x)
x1
x2
prop.test(x=c(3172,147913),n=c(8526,464910),alternative="greater")


#vehicle time period 
x=c(194198,157370,74149,45358)
y=c(56329,49536,23775,17073)
x1=y/x
x2=sum(y)/sum(x)
x1# fatality rate of different running time period of vehicles 
x2 # mean fatality rate 
prop.test(x=c(17073,146713),n=c(45358,471075),alternative="greater")


#vehicle type 
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


#x=c(340892,44010,26982,3078) #raw number of weather related accidents 
x1=(x/414962)*100 #raw weather accident propability
x1 
y=c(290,50,20,5)
y1=(y/365)*100
y2=100/y1 #normalization factor 
x2=x1*y2 #new proportional probability 
x2
x3=(x2/sum(x2))*100
x3 #normalized accident proportion
prop.test(x=c(11090,128681),n=c(26982,414962),alternative="greater")




x=c(194198,157370,74149,45358)
y=c(56329,49536,23775,17073)
x1=y/x
x2=sum(y)/sum(x)
x1# fatality rate of different running time period of vehicles 
x2 # mean fatality rate 
prop.test(x=c(17073,146713),n=c(45358,471075),alternative="greater")


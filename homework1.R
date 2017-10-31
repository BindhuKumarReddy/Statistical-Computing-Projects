# question 1
7+8+5**3-5/6+sqrt(62)
log(3,base=exp(1))+sqrt(2)*pi-exp(3)
2*(5+3)-sqrt(6)+9**2
log(5,base=exp(1))-exp(2)+2**3
(9/2)*4-sqrt(10)+log(6,base=exp(1))-exp(1)
log(14,base=10)+log(14,base=exp(1))+47%%5
# question 2
seq(50,-5)
a<-seq(1,100)
a[-((1:10)**2)]
factorial(seq(0,10))
v1<-rep(seq(1,5),c(4,4,4,4,4))
print(v1)
v2<-rep(c("MATH","STAT","ECE","BIO"),c(2,5,3,2))
v2<-noquote(v2)
print(v2)
# question 3
M<-matrix(seq(1,20),nrow=4,byrow=F)
colnames(M)<-colnames(M,do.NULL=FALSE,prefix="Column-")
rownames(M)<-rownames(M,do.NULL=FALSE,prefix="Experiment-")
dim(M)
M[1:2,]
colSums(M)
rowSums(M)
apply(M,1,sample)
# question 4
test1<-c(56,78,87,89,95,98,NA,78,87,98,54,89,78,98,97)
test2<-c(86,67,78,89,87,67,94,78,81,83,78,NA,93,98,100)
a<-test1[!is.na(test1)]
length(a[a>80])
b<-test2[!is.na(test2)]
length(b[b>85])
if (length(test1[!is.na(test1)])==length(test2[!is.na(test2)])) print("yes") else print ("no")
test1[is.na(test1)]<-0
test2[is.na(test2)]<-0
print("the number of students scored more in test2 than in test1")
print(sum(test2>test1))
print("the number of students scored equally in both tests")
print(sum(test1==test2))
#question 5
a=matrix(c(1 ,2, -1, 3, -1, 1, -3, 1, 2, -1, 2, 1, 1, -3, 1, 1, -1, 2, 1, -1, 2, 1, -1, 2, 1),nrow=5,byrow=T)
b<-matrix(c(0,-9,12,1,-2),nrow=5,byrow=T)
x=solve(a,b)
print(x)
#question 6
Fibonacci <- numeric(50)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:50) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
print(Fibonacci)

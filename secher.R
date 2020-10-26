rmr<-read.table("secher.txt",header=T)
model<-lm(bwt~bpd, data=rmr)
sum.model<-summary(model)
R2<-sum.model$r.squared
f<-sum.model$fstatistic
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
output<-sprintf("R2 = %f and p-value=%f", R2, p.value)
cat(output)
intercept<-model$coefficients[1]
slope<-model$coefficients[2]
output<-sprintf("slope=%f intercept=%f",slope, intercept)
cat(output)
png("bwt_bpd.png")
plot(bwt~bpd, data=rmr)
abline(model)
dev.off()
model<-lm(bwt~ad, data=rmr)
sum.model<-summary(model)
R2<-sum.model$r.squared
f<-sum.model$fstatistic
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
output<-sprintf("R2 = %f and p-value=%f", R2, p.value)
cat(output)
intercept<-model$coefficients[1]
slope<-model$coefficients[2]
output<-sprintf("slope=%f intercept=%f",slope, intercept)
cat(output)
png("bwt_ad.png")
plot(bwt~ad, data=rmr)
abline(model)
dev.off()
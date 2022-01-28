print("Plotting Basics: Patel")
pacman:: p_load(FSA,FSAdata,magrittr,dplyr,plotrix,ggplot2,moments)
headtail(BullTroutRML2,3)
s=filter(BullTroutRML2,lake=="Harrison")
s
headtail(s,5)
str(s)
summary(s)

plot(age ~ fl, data = s, xlim=c(0,500), ylim=c(0,15), las=2,
     ylab = "Age (yrs)", xlab ="Fork Length (mm)", main="Plot 1: Harrison Lake Trout")


hist(s$age, xlab = "Age (yrs)", main = "Plot 2: Harrison Fish Age Distribution", 
     xlim =c(0,15), ylim =c(0,15), las=2, col = "cadetblue")


plot(age ~ fl, data = s, xlim=c(0,500), ylim=c(0,15), las= 2, pch=c(16,16), col=c("lightgreen","green"),
     ylab = "Age (yrs)", xlab ="Fork Length (mm)", main="Plot 3: Harrison Density Shaded by Era")
tmp = headtail(BullTroutRML2,3) 
tmp
select(tmp,'era')
pchs <- c(3, 4)
cols <- c("red", "gray60")
sapply(tmp, class)
te <- as.numeric(tmp$era)
typeof(te)
cols[s$era]
plot(age ~ fl, data = s, xlim=c(0,500), ylim=c(0,15), las= 2, pch=pchs[s$era], col=cols[s$era],
     ylab = "Age (yrs)", xlab ="Fork Length (mm)", main="Plot 4: Symbol & Color by Era")

plot(age ~ fl, data = s, xlim=c(0,500), ylim=c(0,15), las= 2, pch=pchs[s$era], col=cols[s$era],
     ylab = "Age (yrs)", xlab ="Fork Length (mm)", main="Plot 5: Regression Overlay")
abline(lm(age ~ fl, data= s))

plot(age ~ fl, data = s, xlim=c(0,500), ylim=c(0,15), las= 2, pch=pchs[s$era], col=cols[s$era],
     ylab = "Age (yrs)", xlab ="Fork Length (mm)", main="Plot 6: :Legend Overlay")
abline(lm(age ~ fl, data= s))
legend(1,14,legend = c("1977-80", "1997-01"), col=c("red", "gray60"), pch=c(3,4), bty="n")
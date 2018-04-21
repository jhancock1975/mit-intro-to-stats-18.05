for(n in c(3:11)){
sigma=5/sqrt(n)
alpha=0.04
xcrit=qnorm(1-alpha, mu, sigma)
power=1-pnorm(xcrit, 45, sigma)
cat(sprintf("n = %d, power = %f\n", n,  power))
}

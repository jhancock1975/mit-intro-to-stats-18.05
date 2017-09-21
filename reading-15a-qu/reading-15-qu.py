import numpy as np

mu_prior=2
sigma2_prior=10.0
n=5


x = [2.0,2,4,-1,3]
x_avg = sum(x)/len(x)

a=1.0/sigma2_prior
b=n/6


mu_post = (a*mu_prior + b*x_avg)/(a + b)
sigma2_post = 1.0/(a+b)

print("mu_post = ", mu_post)
print("sigma2_post = ", sigma2_post)


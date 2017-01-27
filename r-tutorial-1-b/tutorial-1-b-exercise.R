# By the multiplication principle the theoretical probability
# of rolling a die twice and both outcomes equalling 6 is 
# 1/6 * 1/6 = 0.02777778

# Simulate 10,000 trials of rolling a die twice
x=matrix(sample(1:6,20000,replace = TRUE),nrow = 2,ncol = 10000)

# Create a matrix of boolean values where an entry is true if
# a column of x has two sixes, and false otherwise
y = x==c(6,6)

# Calculate the mean value of columns that have TRUE in both
# rows
z=colSums(y)
mean(z==2)

# Compare to theoretical value
1/6*1/6

# Compute the errror
abs(1/6*1/6 - mean(z==2))

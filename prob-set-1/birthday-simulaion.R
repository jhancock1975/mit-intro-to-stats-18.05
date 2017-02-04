# compose the length and unique functions
lengthUnique <- function(x){
  return( length(unique(x)))
  }

# produce a matrix with n rows and 10,000 columns
# 
# check if the number of unique elements in a column
# equals n, then all of the numbers in the column
# are distinct. Map columns to true or false depending
# on the outcome of this check.
#
# convert true to 1 and 0 to false
#
# sum the 1's and 0's
#
# divide by the number of columns in the matrix
# 
# return the fraction of columns that have distinct
# values
simulate_no_common_birthday <- function(n){
  return (sum(
    as.integer(
      apply( x <-matrix(sample(1:365,n*10000, replace=TRUE), n, 10000),  2, lengthUnique) 
        == n ) 
    ) /ncol(x)
  )
}

# the fraction of columns where some two elements in the
# matrix we created when executing simulate_common_birthday
# is 1 - simulate_common_birthday
fraction_common_birthday <- function(n){
  return (1 - simulate_no_common_birthday(n))
}

# run 10 trials of finding fraction of columns where some two
# elements of a column are the same
birthday_experiment <- function(){
  return(apply(matrix(c(1:100), 1, 100), 2, fraction_common_birthday))
}

# do the birthday experiment
print(birthday_experiment());


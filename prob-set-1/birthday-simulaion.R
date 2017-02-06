# compose the length and unique functions
lengthUnique <- function(x){
  return( length(unique(x)))
  }


# produce a matrix of birthdays
# column represents one trial
# number of entries in a column is number of
# people in a group
# entry is the Julian date of a person's birthday
birth_mat <- function(num_persons, num_trials){
  return ( matrix(sample(1:365, num_persons * num_trials, replace=TRUE), 
    num_persons, num_trials ) )
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
  num_trials <- 10000;
  return (sum( as.integer( apply( x <-birth_mat(n, num_trials),  2, lengthUnique)  == n ) )  /ncol(x))
}

# the fraction of columns where some two elements in the
# matrix we created when executing simulate_common_birthday
# is 1 - simulate_common_birthday
fraction_common_birthday <- function(n, min_percent){
  return ( 1 - simulate_no_common_birthday(n) )
}

# run 10 trials of finding fraction of columns where some two
# elements of a column are the same, where the length of a column
# goes from 1 to 100.
# This estimates the percentage of groups of people where 
# some two people in the group share a birthday, for groups ranging
# in size from 1 to 100.
# We then return the postion of the first element in the list greater 
# than the minimum percentage.
birthday_experiment <- function(min_percentage){
  return( min(which( apply(matrix(c(1:100), 1, 100), 2, fraction_common_birthday) > min_percentage)))
}

# do the birthday experiment a few times
print(apply(matrix(rep(0.9, 4), 1, 4), 2, birthday_experiment));


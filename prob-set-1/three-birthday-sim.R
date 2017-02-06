# compose the length and unique functions
lengthUnique <- function(x){
  return( length(unique(x)))
  }

# return an array of 3-combinations of x
threeCombn <- function(x) { 
  return (combn(x, 3))
  }

# generate a matrix M where columns of the matrix represent a
# list of birthdays
birth_mat <- function(num_persons, num_trials){
  return ( matrix(sample(1:365, num_persons * num_trials, replace=TRUE), 
    num_persons, num_trials ) )
}


# for the number of trials
# produce a sample of length n
# sort the sample
# check if 3 consecutive elements of the sorted sample are the same
# break to avoid overcounting in the case
# where more than 3 people in the group share
# the same birthday
simulate_3_common_birthday <- function(n){
  num_trials <- 10000;
  num_three_same = 0;
  for (i in 1:num_trials){
    x = sample(1:365, n, replace=TRUE);
    x = sort(x);
    for (j in 1:(length(x)-2)){
      if (x[j] == x[j+1] && x[j+1] == x[j+2]){
        num_three_same = num_three_same + 1;
        
        break;
      }
    }
  }
  return(num_three_same/num_trials);
}

# run 10 trials of finding fraction of columns where some three
# elements of a column are the same, where the length of a column
# goes from 1 to 100.
# This estimates the perentage of groups of people where 
# some three people in the group share a birthday, for groups ranging
# in size from 1 to 100.
# We then return the postion of the first element in the list greater 
# than the minimum percentage.
birthday_experiment <- function(min_percentage){
  return(  apply(matrix(c(86:88), 1, 3), 2, simulate_3_common_birthday)  )
}

# do the birthday experiment a few times
 birthday_experiment(0.5)
#simulate_3_common_birthday(78)


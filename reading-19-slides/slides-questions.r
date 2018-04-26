observed=c(50,30,12)
expected=c(47.6, 34.9, 9.5)
g <- function(observed,expected){
  return(2*sum(observed*log(observed/expected)))
}
g(observed, expected)

2*(50*log(50/47.6)+30*log(30/34.9)+12*log(12/9.5))

observed=c(3,10,15,13,7,3)
expected=c(0.19, 1.53, 5.36, 10.72, 13.40, 17.80)
g(observed, expected)

observed=c(30,14,34,45,57, 20)
expected=c(20,20,30,40,60,30)
g(observed, expected)

observed=c(1528,106,117,381)
expected=c(1199,400,400,133)
g(observed,expected)

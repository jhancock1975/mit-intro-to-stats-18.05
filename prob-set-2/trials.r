trial <- function(){
  nflips=50;
  trial  = rbinom(nflips, 1, 0.5);
  maxRun = max(rle(trial)$lengths);
  return (sum(maxRun >= 8))
}
experiment <- function(){
  sum = 0;
  
  numTrials = 10000;
  for (i in 1 : numTrials){
  sum = sum + trial();
  }
  return(sum/numTrials);
}
experiment();

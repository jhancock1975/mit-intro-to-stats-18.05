# this code does not get the right result
outcomes=c(0:6)

observation_count = 5 + 11 + 13 + 7 + 2 + 1 + 1

observation_prbs = c(5, 11, 13, 7, 2, 1, 1)/observation_count

expecteds = observation_count*dbinom(outcomes, 0.4, size=6)

2*sum(observation_prbs*log(observation_prbs/expecteds))

51*pbinom(c(0,1,2,3,4,5), prob=0.5, size=8)

t.end   <- 10^5 # duration of sim
t.clock <- 0    # sim time
Ta <- 2.0000   # interarrival period
Ts <- 1.0000    # service period
t1 <- 0         # time for next arrival
t2 <- t.end     # time for next departure
tn <- t.clock   # tmp var for last event time
tb <- 0         # tmp var for last busy-time start
n <- 0          # number in system
s <- 0          # cumulative number-time product
b <- 0          # total busy time
c <- 0          # total completions
qc <- 0         # plot instantaneous q size
tc <- 0         # plot time delta
arrivalTimes = 0
enterServiceTime = 0
plotSamples <- 100
set.seed(1)

while (t.clock < t.end) {
  if (t1 < t2) {      # arrival event
    t.clock <- t1
    arrivalTimes = append(arrivalTimes, t1)
    s <- s + n * (t.clock - tn)  # delta time-weighted number in queue
    n <- n + 1
    if (t.clock < plotSamples) { 
      qc <- append(qc,n)
      tc <- append(tc,t.clock) 
    }
    tn <- t.clock
    t1 <- t.clock + rexp(1, 1/Ta)
    if(n == 1) { 
      tb <- t.clock
      t2 <- t.clock + rexp(1, 1/Ts)  # exponential  interarrival period
      enterServiceTime = append(enterServiceTime, t.clock)
    }
  } else {            # departure event
    t.clock <- t2
    s <- s + n * (t.clock - tn)  # delta time-weighted number in queue
    n <- n - 1
    if (t.clock < plotSamples) { 
      qc <- append(qc,n)
      tc <- append(tc,t.clock)
    }
    tn <- t.clock
    c <- c + 1
    if (n > 0) { 
      t2 <- t.clock + rexp(1, 1/Ts)  # exponential  service period
      enterServiceTime = append(enterServiceTime, t.clock)
    }
    else { 
      t2 <- t.end
      b <- b + t.clock - tb
    }
  }   
}
plot(cumsum(tc),qc,type="s", xlab="Time",ylab="Queue length",
     main="M/M/1 Simulation")
mtext(paste("mean queue length=",s/t.clock))
N <- s/t.clock
print("The average no. of jobs in the queue is:")
print(N)
print("The average delay time is:")
x <- c/t.clock
r <- N/x
print(r)
avgWait = mean(enterServiceTime - arrivalTimes)
print("The average waiting time in queue is:")
print(avgWait)
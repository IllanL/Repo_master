aapl <- rnorm(100)
googl <- rnorm(100)

importe = 0

for (i in 1:1000) {
  if (googl[i] > aapl[i]) {
    importe <- importe + googl[i]
  }
  
}

importe


sum(googl[googl>aapl])
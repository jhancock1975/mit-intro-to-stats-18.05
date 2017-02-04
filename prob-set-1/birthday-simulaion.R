for (i in 1:365){
  for (t in 1:10){
    for (j in 1:1000){
      omega = sample(1:365, i, replace=TRUE)
      print(omega)
     }
  }
}


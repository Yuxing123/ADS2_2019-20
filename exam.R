set1 <- c()
set2 <- c()
for (n in 1:50) {
  count1 <- 0 
  count2 <- 0
  for (k in 1:1000) {
    #answer <- sample(c('A','B','C','D'), 20, replace = TRUE)
    answer <- sample(toupper(rep(letters[1:4],5)), 20, replace = FALSE)
    #myanswer1 <- sample(c('A','B','C','D'), 20, replace = TRUE)
    myanswer1 <- sample(toupper(rep(letters[1:4],5)), 20, replace = FALSE)
    myanswer2 <- sample(c('A'), 20, replace = TRUE)
    for (i in 1:20) {
      if(answer[i] == myanswer1[i]){
        count1 = count1 + 1
      }
      if(answer[i] == myanswer2[i]){
        count2 =count2 +1
      }
      i = i + 1
    }
    k = k + 1
  }
  set1[n] <- count1/20000
  set2[n] <- count2/20000
  n = n+1
}
hist(set1)


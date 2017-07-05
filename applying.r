resultTwo <- function(x){
  r <- sum(x)
  p <- r/3
  if (p>50){
    "pass"
  }else{
    "fail"
  }
}
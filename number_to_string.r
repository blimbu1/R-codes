numberReturn <- function(digit){
  return(switch(digit,'one','two','three','four','five','six','seven','eight','nine'))
}
teen <- function(digits){
  return (switch(digits,"0" = 'ten',"1" = 'eleven',"2" ='twelve',"3" = 'thirteen',"4" = 'fourteen',"5"='fifteen',"6"='sixteen',
                 "7" = 'seventeen',"8"='eighteen','9'='ninteen'))
}
tenPower <- function(len,digi){
  return(switch(len,
       number(digi),
       {switch(digi,"1" = "dummy",
                   "2" = 'twenty',
                   "3" = 'thirty',
                   "4" = 'fourty',
                   "5" = 'fifty',
                   "6" = 'sixty',
                   "7" = 'seventy',
                   "8" = 'eighty',
                   "9" = 'ninety')},
       'hundred',
       'thousand'))
}

numberOne <- readline("Enter your number please: ")
len1 <- nchar(numberOne)
count <- 1
repeat{
  number<- substring(numberOne,count,len1)
  num <- as.numeric(substring(number,1,1))
  len <- nchar(number)
  if (is.na(num)){
    break
  }
  if (num == 0 ){
    if (len == 3){
      print("and")
    }
    count<- count + 1
    next
  }
  #print(len)
  if(len==4){
    print(numberReturn(num))
    print(tenPower(len,num))
    count <- count+1
  }
  else if(len==3){
    print(numberReturn(num))
    print(tenPower(len,num))
    print("and")
    count <- count+1
  }
  else if(len==2){
    if (num!=1){
      print(tenPower(len,num))
      count <- count+1
    }else{
      print(teen(substring(numberOne,len1,len1)))
      count<-count+2
    }
  }
  else if(len==1){
    print(numberReturn(num))
    count <- count+1
  }
  

}

  
  

         
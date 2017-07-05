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
                {switch(digi,
                        "1" = "dummy",
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

numberInput<-function(numberOne){
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
}

bill <- as.numeric(readline("Please enter the bill amount: "))
paid <- as.numeric(readline("Please enter the denomiation used to pay the bill: "))
change <- round((paid - bill),2)
print(change)
pound <- change%/%1
pennies <- round((change%%1),2)
cat("pound :",pound)
cat(" pennies: ",pennies,"\n")
val <- change
if (pound > 0){
  numberInput(pound)
  print("pounds")
}
if (pennies>0){
  print("and")
  numberInput(pennies*100)
  print("pence")
  
}
notes<- c(50,20,10,5,2,1,0.5,0.2,0.1,0.05,0.02,0.01)
for (i in notes[notes<=change]){
  if(val%/%i >=1.0){
    cat("£",i,"=",val%/%i,"\n")
    val <- round((val%%i),2)
  }
}
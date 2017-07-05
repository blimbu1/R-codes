phy <- as.numeric(readline("Enter Marks for physics between 0 and 150: "))
mat <- as.numeric(readline("Enter Marks for mathematics between 0 and 150: "))
che <- as.numeric(readline("Enter Marks for chemistry between 0 and 150: "))
total <- phy + mat + che
per <- total*100/450 
count <- 0
if (mat<80){
  count <-count + 1
}
if (phy<80){
  count<-count+ 1
}
if (che<80){
  count<-count+ 1
}
if (count ==1){
  print(" retake exam")
} else if (count == 2){
  print("retake course")
}else if (count == 3){
  print("go home!!")
}
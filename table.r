from <- as.numeric(readline("Enter the value to start with: "))
end <- as.numeric(readline("Enter the value to end with: "))
if(end<from){
  by = -1
}else{
  by = 1
}
for (b in seq(from,end,by)){
  for (a in 1:10){
    cat(b,"x",a,"=",b*a,"\n")
  }
  #print("\n")
}
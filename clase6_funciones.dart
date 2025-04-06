void main(){
 
  print (greetEveryone());
  print ("suma: ${addTwoNumbers(10,20)}");
  print ("Suma opcional ${addTwoNumbersOptional (30,40)}");
  
}

greetEveryone() => "Hello everyone";

//int addTwoNumbers (int a,int b){
  //return a+b; 
//}

int addTwoNumbers (int a,int b) => a+b;

int addTwoNumbersOptional (int a,[int b=0]){
  //b = b ?? 0;
  return a+b;
}

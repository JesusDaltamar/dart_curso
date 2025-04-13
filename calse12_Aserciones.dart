void main(){
  
  final mySquare = Square (side:-15);
  
  
  //mySquare.side=-8;
  
  print ("area: ${mySquare.area}");
  
}

//clase para calcular el area de un cuadrado
class Square{
  double _side; //side * side
  
  Square({required double side})
    :assert(side>=0,"El lado debe ser mayor o igual a 0"), //asercion, indica reglas que se deben cumplir, se parece al IF
    _side = side;
  
  double get area{
    return _side*_side;
  }
  
  set side(double value){
    print("el lado es: $value");
    if(value<0) throw "el valor debe ser >=0";
    
    _side = value;
    
  }
  
  double calculateArea(){
    return _side*_side;
  }
  
}
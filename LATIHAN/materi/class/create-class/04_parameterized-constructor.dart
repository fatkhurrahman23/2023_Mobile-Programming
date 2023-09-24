class Rectangle{
  double panjang, lebar;

  //parameterized constructor
  Rectangle(this.panjang, this.lebar);

  num luas(){
    return this.panjang * this.lebar;
  }
}
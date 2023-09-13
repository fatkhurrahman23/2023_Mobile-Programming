// program untuk mengkonversi suhu Celcius menjadi Reamur dan Fahrenhait. 

void main(List<String> args) {
  var celcius = 20;
  var reamur = (4 / 5) * celcius;
  var fahrenhait = ((9 / 5) * celcius) + 32;

  print('Suhu dalam Celcius : $celcius');
  print('Suhu dalam Reamur : $reamur');
  print('Suhu dalam Fahrenhait : $fahrenhait');
}
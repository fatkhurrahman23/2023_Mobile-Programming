// decision making menggunakan if-else dan ternary operator

void main(){
  int nilai = 90;

  // menggunakan if-else
  if(nilai >= 91 && nilai <= 100){
    print('Sangat Baik');
  } else if(nilai >= 81 && nilai <= 90){
    print('Baik');
  } else if(nilai >= 71 && nilai <= 80){
    print('Cukup');
  } else if(nilai >= 61 && nilai <= 70){
    print('Kurang');
  } else if(nilai >= 0 && nilai <= 60){
    print('Sangat Kurang');
  } else {
    print('Nilai Invalid');
  }

  // menggunakan ternary operator
  nilai >= 91 && nilai <= 100 ? print('Sangat Baik') :
  nilai >= 81 && nilai <= 90 ? print('Baik') :
  nilai >= 71 && nilai <= 80 ? print('Cukup') :
  nilai >= 61 && nilai <= 70 ? print('Kurang') :
  nilai >= 0 && nilai <= 60 ? print('Sangat Kurang') : print('Nilai Invalid');
  
}


// Sistem Penilaian Makanan (A - E)
// # A : Sangat Enak
// # B : Enak
// # C : Cukup
// # D : Kurang
// # E : Belajar Dulu
// # Selain itu : Nilai Invalid
// Buatlah decision makin sistem penilaian diatas menggunakan switch case!

void main(List<String> args) {
  String nilai = 'A';

  switch(nilai){
    case 'A':
      print('Sangat Enak');
      break;
    case 'B':
      print('Enak');
      break;
    case 'C':
      print('Cukup');
      break;
    case 'D':
      print('Kurang');
      break;
    case 'E':
      print('Belajar Dulu');
      break;
    default:
      print('Nilai Invalid');
  }
} 
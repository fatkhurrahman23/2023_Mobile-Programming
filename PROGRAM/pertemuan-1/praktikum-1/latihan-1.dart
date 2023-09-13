var namaRestoran = 'Electra Seafood';
var tahunDidirikan = 2022;
var pemilik = 'Mbok Yem';
var alamat = 'JL. Prof. Soedarto Tembalang';
var statusBuka = true;

// daftar Makanan dan Minuman menggunakan Map
var daftarMakanan = {
  'Kepiting Rebus' : 40000,
  'Nasi Goreng' : 20000,
  'Udang Asam Manis' : 50000,
  'Sate Cumi' : 30000
};

var daftarMinuman = {
  'Es Jeruk' : 5000,
  'Es Kelapa' : 10000,
  'Es Teh' : 3000
};

void main() {
  print('Data Restoran');
  print('---------------------------------------------------------------');
  print('Nama\t\t\t\t\t\t: $namaRestoran');
  print('Tahun Didirikan\t: $tahunDidirikan');
  print('Pemilik \t\t\t\t: $pemilik');
  print('Alamat\t\t\t\t\t: $alamat');
  print('Status Buka \t\t: ${statusBuka ? 'Buka' : 'Tutup'}');
  print('Daftar Makanan \t:');

  for (var makanan in daftarMakanan.keys) {
    print('\t- $makanan (${daftarMakanan[makanan]})');
  }
  
  print('Daftar Minuman :');
  for (var minuman in daftarMinuman.keys) {
    print('\t- $minuman (${daftarMinuman[minuman]})');
  }
}

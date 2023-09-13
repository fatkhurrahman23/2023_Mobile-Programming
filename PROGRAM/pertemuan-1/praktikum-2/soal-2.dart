// program menghitung total harga sepatu

//output: 
// Harga Sepatu : Rp 750.000 
// Diskon : 10% 
// Diskon(Rp) : Rp 75.000 
// Total Harga : Rp 675.000 

void main(List<String> args) {
  var harga = 750000;
  var diskon = 10;
  var total = harga - (harga * diskon / 100);

  print('Harga Sepatu : Rp $harga');
  print('Diskon : $diskon%');
  print('Diskon(Rp) : Rp ${harga * diskon / 100}'); 
  print('Total Harga : Rp $total');
}

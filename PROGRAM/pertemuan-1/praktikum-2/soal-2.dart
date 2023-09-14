// program menghitung total harga sepatu

void main(List<String> args) {
  var harga = 750000;
  var diskon = 10;
  var total = harga - (harga * diskon / 100);

  print('Harga Sepatu : Rp $harga');
  print('Diskon : $diskon%');
  print('Diskon(Rp) : Rp ${harga * diskon / 100}'); 
  print('Total Harga : Rp $total');
}

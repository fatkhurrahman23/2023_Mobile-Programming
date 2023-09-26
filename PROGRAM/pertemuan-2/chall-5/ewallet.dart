// Buatlah class E-Wallet dengan ketentuan sebagai berikut :
// # Properties :
// - namaPemilik
// - saldo
// - mutasi
// # Methods:
// - Getters dan Setters untuk setiap properties
// - transfer() // dari rekening pemilik
// - request() // ke rekening pemilik

class EWallet {
  String namaPemilik = "";
  int saldo = 0;
  List mutasi = [];

  EWallet(){
    this.namaPemilik = "Moh Fatkhur Rahman";
    this.saldo = 1000000;
    this.mutasi = [];
  }

  void setNamaPemilik(String namaPemilik) {
    this.namaPemilik = namaPemilik;
  }

  String getNamaPemilik() {
    return this.namaPemilik;
  }

  void setSaldo(int saldo) {
    this.saldo = saldo;
  }

  int getSaldo() {
    return this.saldo;
  }

  void setMutasi(List mutasi) {
    this.mutasi = mutasi;
  }

  List getMutasi() {
    return this.mutasi;
  }

  void transfer(String namaPenerima, int nominal){
    if(this.saldo >= nominal) {
      this.saldo -= nominal;
      this.mutasi.add("Transfer ke $namaPenerima sebesar Rp. $nominal. Sisa saldo Rp. ${this.saldo}");
    } else {
      this.mutasi.add("Transfer ke $namaPenerima sebesar Rp. $nominal tidak dapat dijalankan, saldo tidak cukup.");
    }
  }

  void request(String namaPengirim, int nominal) {
    this.saldo += nominal;
    this.mutasi.add("Request dari $namaPengirim sebesar Rp. $nominal. Sisa saldo Rp. ${this.saldo}");
  }

}

void main(){
  EWallet ewallet = new EWallet();
  ewallet.transfer("Moh Fatkhur Rahman", 100000);
  ewallet.request("Moh Fatkhur Rahman", 100000);

  print(ewallet.getMutasi());
}
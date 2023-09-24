class Student {
  String nama = "";
  int umur = 10;

  void set nama_murid(String nama) {
    this.nama = nama;
  }

  void set umur_murid(int umur) {
    if (umur < 5) {
      print("Umur tidak boleh kurang dari 5 tahun");
    } else {
      this.umur = umur;
    }
  }

  String get nama_murid {
    return nama;
  }

  int get umur_murid {
    return umur;
  }
}

void main(List<String> args) {
  Student murid = new Student();
  murid.nama_murid = "M Fakhur Rahman";
  murid.umur_murid = 4;

  print("Nama murid adalah ${murid.nama_murid}");
  print("Umur murid adalah ${murid.umur_murid}");
}
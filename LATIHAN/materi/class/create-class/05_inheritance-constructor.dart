class Binatang{
    String name;

    Binatang(this.name);
}

class Kucing extends Binatang{
    String jenis;

    Kucing(String name, this.jenis) : super(name);
}
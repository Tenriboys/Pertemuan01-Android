import 'anggota.dart';
import 'buku.dart';

class Peminjaman extends Buku {
  Anggota anggota;
  DateTime? tanggalPinjam;

  Peminjaman(String judul, String pengarang, int tahunTerbit, this.anggota)
      : super(judul, pengarang, tahunTerbit) {
    tanggalPinjam = DateTime.now(); //menampilkan tanggal peminjaman saat ini
  }

  @override
  void info() {
    super.info(); //memanggil info dari kelas buku
    print('Dipinjam oleh: ${anggota.nama}, Tanggal Pinjam: ${tanggalPinjam}');
  }
}

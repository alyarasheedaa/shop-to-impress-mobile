# Tugas 7

**Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.**
- Stateless Widget adalah widget yang tidak berubah ketika aplikasi berjalan. Ini cocok digunakan untuk UI yang statis, seperti teks, ikon, atau dekorasi yang tidak membutuhkan perubahan.
- Stateful Widget adalah widget yang dapat berubah atau responsif terhadap interaksi pengguna, misalnya tombol yang berubah warna saat ditekan. Dengan Stateful Widget, bisa mengubah tampilan berdasarkan interaksi atau data yang berubah.

**Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.**
- Scaffold: Menyediakan struktur dasar halaman (seperti AppBar dan body).
- AppBar: Untuk menampilkan judul di bagian atas aplikasi.
- Column dan Row: Untuk menyusun widget secara vertikal atau horizontal.
- GridView: Menampilkan list item dalam bentuk grid (kotak).
- Card: Untuk membuat kotak informasi seperti InfoCard.
- Text: Menampilkan teks statis.
- InkWell: Untuk membuat interaksi dengan efek seperti tombol ketika ditekan.

**Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.**
- Fungsi setState() digunakan di dalam Stateful Widget untuk memberitahu Flutter bahwa ada perubahan data yang harus di-render ulang. Ketika setState() dipanggil, Flutter akan memperbarui UI berdasarkan perubahan yang terjadi. Biasanya, variabel yang berada di dalam State class dari widget akan terdampak oleh setState().

**Jelaskan perbedaan antara const dengan final.**
- const: Digunakan untuk nilai yang tetap dan diketahui sejak kompilasi, artinya nilainya tidak berubah selamanya.
- final: Nilainya diberikan sekali saat runtime, tetapi bisa tidak diketahui saat kompilasi. Final tetap tidak bisa diubah setelah diberi nilai pertama kali.

**Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.**
- Buat proyek baru: Gunakan perintah flutter create shop_to_impress di terminal.
- Tambahkan tiga tombol di halaman utama: Di dalam file main.dart, buat class HomePage yang berfungsi sebagai halaman utama. Di dalamnya, tambahkan tiga tombol menggunakan Card dan InkWell. Menggunakan widget GridView untuk menampilkan tombol-tombol ini secara rapi.
- Set warna tombol: Pada class ItemCard, menambahkan properti color untuk setiap Card. Menggunakan Material untuk menyesuaikan warna background tombol.
- Tampilkan snackbar: Pada setiap tombol, tambahkan aksi onTap di dalam InkWell yang akan memunculkan SnackBar saat tombol ditekan. SnackBar ini akan menampilkan teks sesuai tombol yang ditekan
- Menjalankan aplikasi: Jalankan aplikasi dengan perintah flutter run di terminal. Akan ada tiga tombol di layar dengan warna yang berbeda. Saat setiap tombol ditekan, snackbar akan muncul dengan pesan yang sesuai.

# Tugas 8
**Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?**
- Kegunaan: const dipakai untuk bikin objek yang tidak bisa diubah-ubah setelah dibuat (immutable). Jadi, Flutter bisa langsung tahu nilainya saat kompilasi.
- Keuntungan:
    Hemat Memori: Objek const tidak dibuat ulang terus-menerus.
    Performa Lebih Cepat: Karena tidak perlu render ulang objek yang sama.
    Lebih Aman: Objeknya tidak akan berubah tanpa sengaja.
- Kapan pakai const? Saat widgetnya tidak akan berubah, misal judul atau ikon yang statis. Tapi jangan pakai kalau nilai widget bisa berubah sesuai data pengguna.

**Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!**
- Column: Buat susun widget vertikal, dari atas ke bawah.
    Column(
        children: [
            Text("Judul"),
            SizedBox(height: 10),
            Text("Deskripsi"),
        ],
    )

- Row: Buat susun widget horizontal, dari kiri ke kanan.
    Row(
        children: [
            Icon(Icons.home),
            Text("Menu"),
        ],
    )

**Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!**
- Yang dipakai: TextFormField untuk input teks dan ElevatedButton untuk tombol "Save".
- Alternatif lain:
    - Checkbox, Radio, Switch (untuk pilihan)
    - DropdownButton (untuk pilihan dropdown)
    - Slider (untuk pilih nilai dalam rentang tertentu)
    Elemen di atas tidak dipakai di tugas ini karena hanya butuh input teks.

**Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?**
- Menggunakan ThemeData di MaterialApp buat atur warna, font, dan gaya agar konsisten di seluruh aplikasi.
        MaterialApp(
            theme: ThemeData(
                primaryColor: Colors.blue,
                colorScheme: ColorScheme.fromSwatch().copyWith(
                primary: Colors.blue,
                secondary: Colors.amber,
                ),
            ),
        )

**Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?**
- Menggunakan Navigator untuk geser halaman. 
- Navigator.push untuk halaman baru.
- Navigator.pushReplacement buat ganti halaman sekarang.
- Navigator.pop buat balik ke halaman sebelumnya.
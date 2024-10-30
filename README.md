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

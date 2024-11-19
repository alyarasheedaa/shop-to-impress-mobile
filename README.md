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

# Tugas 9
**Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?**
- Model dibutuhkan untuk mempermudah pengelolaan data JSON. Dengan model, kita dapat mengubah data JSON menjadi objek Dart yang lebih mudah diakses dan dikelola. Jika tidak membuat model, kita harus mem-parsing data secara manual, yang bisa memicu error seperti type mismatch atau kesalahan dalam penanganan struktur data yang kompleks.

**Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini**
- Library http digunakan untuk melakukan permintaan HTTP (GET, POST, dll.) ke web service. Dalam tugas ini, library ini membantu Flutter mengambil data dari API Django, mengirim data input pengguna, serta memproses respons berupa JSON.

**Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.**
- CookieRequest adalah alat untuk mengelola sesi pengguna dengan cara menyimpan dan mengirim cookie di setiap permintaan ke server.
Mengapa perlu dibagikan ke semua komponen?
    - Menjamin konsistensi sesi pengguna di seluruh aplikasi, seperti status login.
    - Mempermudah autentikasi otomatis tanpa perlu mengirim ulang kredensial di setiap permintaan.

**Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.**
- Input data di Flutter: Pengguna memasukkan data melalui form di Flutter.
- Kirim ke server: Data dikirim melalui permintaan HTTP POST (misalnya, menggunakan fungsi postJson di CookieRequest).
- Server memproses: Django menerima data, memvalidasi, lalu menyimpan ke database atau mengembalikan respons (seperti pesan sukses).
- Tampilkan di Flutter: Respons JSON diubah menjadi model Dart dan ditampilkan ke UI Flutter menggunakan widget seperti FutureBuilder.

**Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.**
a. Login
- Flutter mengirimkan data login (username, password) ke Django melalui endpoint /auth/login/.
- Django memvalidasi kredensial:
    - Jika valid: Django menghasilkan session cookie dan mengembalikannya ke Flutter bersama pesan sukses.
    - Jika tidak valid: Django mengembalikan pesan error.
- Flutter menyimpan session cookie menggunakan CookieRequest. Setelah login, pengguna diarahkan ke halaman utama.
b. Register
- Data pendaftaran dikirimkan dari Flutter ke Django melalui endpoint /auth/register/.
- Django memeriksa validitas data:
    - Memastikan username unik.
    - Memastikan password cocok.
- Jika valid, Django membuat akun pengguna baru, mengembalikan pesan sukses, dan Flutter menampilkan pesan kepada pengguna.
c. Logout
- Flutter mengirim permintaan logout ke endpoint /auth/logout/.
- Django menghapus session pengguna di sisi server.
- Flutter menghapus session cookie dan mengarahkan pengguna ke halaman login dengan pesan logout berhasil.

**Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).**
1. Pastikan Django Sudah Jalan dan Bisa Diakses
- Pastikan server Django sudah siap, baik di local (localhost) atau platform hosting (contohnya Heroku atau Render).  
  Cek endpoint API-nya pakai Postman atau browser, pastikan data JSON bisa diambil dengan baik.  

2. Bikin Fitur Registrasi di Flutter  
- Buat halaman form untuk pengguna mendaftar akun. Form ini minimal ada username, password, dan konfirmasi password.  
  Kirim data ke API Django lewat `CookieRequest.postJson`. Kalau berhasil, tampilkan pesan sukses, kalau gagal, kasih tahu pengguna apa yang salah.  

#### **3. Tambahkan Halaman Login**  
- **Apa yang Dilakukan**:  
  Buat form login di Flutter yang minta username dan password.  
  Gunakan `CookieRequest.login` buat kirim datanya ke Django. Kalau berhasil, simpan status login dan arahkan ke halaman utama aplikasi.  

---

#### **4. Hubungkan Autentikasi Django ke Flutter**  
- **Apa yang Dilakukan**:  
  Gunakan package `pbp_django_auth` untuk mengelola sesi autentikasi dengan Django.  
  Pastikan Django mengatur sesi dengan session cookie. Di Flutter, gunakan `Provider` supaya instance `CookieRequest` bisa diakses di semua halaman aplikasi.  

---

#### **5. Buat Model Dart Sesuai Django**  
- **Apa yang Dilakukan**:  
  Analisis JSON yang dikembalikan oleh API Django, lalu bikin model di Flutter sesuai strukturnya.  
  Bisa pakai Quicktype untuk otomatis bikin model atau tulis sendiri. Pastikan ada fungsi `fromJson` untuk parsing data JSON ke Dart.  

---

#### **6. Tampilkan Daftar Item di Halaman List**  
- **Apa yang Dilakukan**:  
  Buat halaman baru untuk menampilkan daftar item dari API Django. Gunakan `ListView.builder` supaya datanya dinamis.  
  Lakukan fetch data dengan `http.get` atau `CookieRequest.get`, lalu tampilkan name, price, dan description setiap item di halaman.  

---

#### **7. Tambahkan Halaman Detail Item**  
- **Apa yang Dilakukan**:  
  Buat navigasi dari daftar item ke halaman detail. Misalnya, kalau pengguna klik item tertentu, data item dikirim ke halaman detail.  
  Di halaman detail, tampilkan semua atribut item, seperti nama, harga, deskripsi, dll. Tambahkan tombol untuk kembali ke halaman daftar.  

---

#### **8. Filter Daftar Item Berdasarkan Pengguna Login**  
- **Apa yang Dilakukan**:  
  Ubah endpoint Django supaya hanya mengembalikan item yang terhubung dengan pengguna login (gunakan `request.user`).  
  Di Flutter, pastikan permintaan ke API dilakukan setelah login, dan tampilkan data yang relevan untuk pengguna itu saja di halaman daftar.  

---

### **Bagaimana Semuanya Terhubung?**
1. Pastikan Django sudah berfungsi sebagai backend yang bisa diakses oleh Flutter.
2. Implementasi login dan registrasi di Flutter untuk autentikasi pengguna.
3. Ambil data dari Django dan tampilkan di Flutter, seperti daftar item dan halaman detail.
4. Filter data supaya hanya item milik pengguna login yang ditampilkan.

Dengan langkah-langkah ini, aplikasi kamu akan terhubung dengan Django dan berjalan sesuai checklist! 😊
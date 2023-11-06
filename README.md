# inventori

## Tugas 7

### 1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
Stateless widgets tidak mengubah tampilan UI setelah mereka dibuat, apabila data atau keadaan aplikasi berubah, maka diperlukan pembuatan ulang widget stateless dengan data yang diperbarui, sedangkan Stateful widgets memiliki state internal yang memungkinkan widget untuk merespons terhadap perubahan data dan keadaan dalam aplikasi.

### 2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
1) MaterialApp: root widget dari aplikasi Flutter yang berfungsi menyediakan elemen-elemen dasar seperti tema dan title
2) Scaffold: Widget yang menyediakan kerangka kerja dasar untuk halaman dengan AppBar, FloatingActionButton
3) AppBar: Menampilkan bar di bagian atas aplikasi dengan judul yang ditentukan
4) SingleChildScrollView: Membungkus child widget dengan tampilan scroll vertikal
5) Padding: Digunakan untuk menambahkan padding pada child widget
6) Column: Widget ini digunakan untuk mengatur child widget secara vertikal dalam satu kolom
7) Text: Menampilkan teks pada tampilan
8) GridView.count: Digunakan untuk membuat tata letak grid dengan jumlah kolom yang ditentukan
9) Material: Ini adalah wrapper untuk merender kontennya dengan efek material design
10) InkWell: Ini digunakan untuk membuat area yang responsif terhadap sentuhan pengguna
11) Container: Digunakan untuk menyusun tampilan
12) Icon: Menampilkan ikon
13) SnackBar: Digunakan untuk menampilkan pesan cepat yang muncul sementara di bagian bawah layar setelah pengguna melakukan tindakan tertentu

### 3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
Pertama-tama saya membuat folder proyek flutter dengan nama inventori dengan command `flutter create inventori`, lalu saya membuat file baru pada folder lib dengan nama `menu.dart`, dari main.dart class MyHomePage akan dipindahkan ke menu.dart dan class _MyHomePageState akan dihapus, lalu dari file `main.dart` akan diimport menu.dart untuk menggunakan class MyHomePage `import 'package:inventori/menu.dart';`, lalu pada main.dart home akan diubah kodenya menjadi MyHomePage() dan mengubah colorScheme menjadi warna Indigo, lalu pada menu.dart class MyHomePage akan diubah menjadi stateless widget dan merubah parameter menjadi `({Key? key}) : super(key: key);` lalu menambahkan widget Build yang mengembalikan Scaffold, setelah itu akan ditambahkan tombol dengan membuat class ShopItem dan ShopCard, setelah itu widget build akan diisi menggunakan widget untuk tampilan seperti SingleChildScrollView, Column, Padding, dll. Setelah itu ditambahkan widget ShopCard yang menerima parameter dari widget ShopItem yang telah didefinisikan pada list items, pada bonus class ShopCard diberi tambahan atribut color untuk memberi custom color pada ShopCard. 

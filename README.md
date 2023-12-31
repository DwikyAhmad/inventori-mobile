# inventori

## Tugas 9

### 1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Ya, kita bisa mengambil JSON tanpa membuat model, kita bisa memasukkan data-data JSON ke dalam map. Namun, hal itu kurang efektif karena pengambilan data dan melakukan assign pada data menjadi lebih sulit, sehingga lebih baik  membuat model terlebih dahulu agar kita dapat mengetahui jenis data apa yang mau diambil.

### 2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest digunakan untuk melakukan handling http request dengan autentikasi berbasis cookie dan mengatur cookie user session, CookieRequest ini akan dibagikan ke seluruh widget menggunakan provider agar dapat digunakan cookies tersebut pada widget lainnya.

### 3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
Pertama, akan dibuat sebuah model Item pada flutter, lalu akan dilakukan sebuah request pada web service django yang akan memberikan data item dalam bentuk JSON, setelah itu model akan digunakan untuk membuat instance dari item dan masing-masing dari item tersebut akan ditampilkan pada halaman di flutter.

### 4. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Pada halaman LoginPage, akan diberikan sebuah form yang menerima input data berupa username dan password, username dan password tersebut akan dikirimkan melalui POST request ke url aplikasi authentication pada web service django, dari views.py pada aplikasi authentication akan dilakukan autentikasi dan dikirimkan response berupa JSON yang mengindikasikan autentikasi berhasil atau tidak, jika berhasil maka akan dipindahkan ke halaman menu

### 5. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
- TextField Widget: widget ini digunakan untuk menerima input username dan password untuk melakukan autentikasi
- ElevatedButton Widget: widget digunakan untuk melakukan submission pada proses autentikasi dan saat melakukan integrasi create item dengan django
- SizedBox Widget: Widget digunakan untuk memberikan ruang pemisah antar elemen, digunakan untuk memberikan jarak  antara widget TextField username dan password

### 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
Pertama-tama saya membuat aplikasi authentication pada aplikasi django, lalu menambahkan views.py yang berisi function dengan decorator @csrf_exempt untuk melakukan login dan logout yang memberikan response JSON untuk digunakan pada integrasi dengan aplikasi Flutter, lalu pada aplikasi flutter akan dibuat sebuah halaman login page yang akan ditampilkan pada awal dijalannya aplikasi untuk user melakukan autentikasi dan bisa masuk ke menu, lalu akan dibuat sebuah model item yang akan digunakan untuk melakukan fetch data dari web service django. Setelah itu tombol lihat item akan diberikan fungsionalitas untuk menampilkan masing-masing data yang diberikan dari response web django, tombol logout akan diberikan fungsionalitas untuk melakukan logout dengan menggunakan views logout yang ada di aplikasi django pada aplikasi authentication. Untuk melakukan fungsionalitas tersebut ada beberapa dependecy yang diperlukan seperti django-cors-headers, provider, pbp_django_auth, dan http.

## Tugas 8

### 1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
Perbedaan antara method push dan pushReplacement terletak pada manipulasi stack navigasinya, navigator.push() menambahkan sebuah page route ke dalam stack sebagai halaman baru, sehingga dapat kembali ke halaman sebelumnya dengan menggunakan tombol back atau Navigator.pop(), sedangkan Navigator.pushReplacement() mengganti stack halaman yang sedang ditampilkan menjadi halaman baru, sehingga jika navigation stack dilakukan pop, tidak akan bisa kembali ke halaman sebelumnya karena halaman tersebut telah digantikan dengan halaman yang baru. Contoh penggunaan Navigator.push() adalah memunculkan form untuk membuah sebuah produk sehingga bisa kembali ke layar utama, sedangkan Navigator.pushReplacement() dapat digunakan untuk menggantikan halaman setelah login dengan halaman utama, sehingga user tidak dapat kembali ke halaman login page

### 2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
1) Container Widget: digunakan sebagai wadah untuk menempatkan dan mengatur widget lainnya seperti Text, Image, dll.
2) Row Widget: Digunakan untuk mengatur widget secara horizontal.
3) Column Widget: digunakan untuk mengatur widget secara vertikal.
4) Stack Widget: Mengatur widget dalam tumpukan, dapat digunakan untuk membuat tata letak yang kompleks
5) Expanded & Flexible Widget: Expanded dan Flexible digunakan dalam Row atau Column untuk mengatur bagaimana child akan mengisi ruang yang tersedia. 
6) ListView & GridView Widget: ListView dan GridView digunakan untuk menampilkan daftar item dalam bentuk daftar linier (vertikal atau horizontal) atau grid (dalam bentuk baris dan kolom).
7) Wrap Widget: Digunakan untuk mengatur widget dalam baris atau kolom, jika tidak cukup ruang, maka akan dilompatkan ke baris atau kolom berikutnya/

### 3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
Elemen input pada form yang digunakan adalah TextFormField, widget tersebut digunakan karena sudah tersedia di material.dart, widget ini dapat menerima input dari user dan dapat melakukan validasi yang sudah disesuaikan untuk digunakan dalam form.

### 4. Bagaimana penerapan clean architecture pada aplikasi Flutter?
Clean Architecture pada Flutter merupakan sebuah prinsip software design yang digunakan untuk memisahkan kode menjadi lebih modular, scalable, dan testable codebase.

Dalam konteks flutter, terdapat layer:

1) Presentation Layer (UI): Layer ini mengandung user interface, seperti widgets, screens, dan views. Layer ini bertanggung jawab dalam menangani interaksi dengan user dan melakukan render pada UI.
2) Domain Layer (Business Logic): Domain layer merepresentasikan inti dari logika bisnis dari sebuah aplikasi, layer ini berisi use cases, entities, dan business rules.
3) Data Layer: Data layer bertanggung jawab atas penerimaan data dan penyimpanan, layer ini terdiri dari repositories dan data sources.

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
Pertama saya membuat class leftDrawer pada file `left_drawer.dart` yang memiliki button untuk ke halaman utama, dan tambah produk yang nantinya akan ditambahkan fungsi navigator.push() ketika tombol itu ditekan sehingga akan pindah halaman, lalu leftDrawer tersebut akan dipasang ke menu dan halaman form pada atribut drawer di Scaffold. Setelah itu, saya membuat file baru `shoplist_form.dart` yang berisi class stateful yang akan menerima input dari user dengan menggunakan TextFormField yang juga akan dilakukan validasi ketika tombol save ditekan, apabila berhasil akan dimunculkan popup yang memperlihatkan detail atribut dari item tersebut. Setelah itu akan dilakukan refactoring file dengan memindahkan halaman-halaman ke folder screens.

Untuk bonus, saya membuat file baru bernama `show_item.dart` yang berisi class Item dengan atribut name, amount, description yang menyimpan List yang berisi Item, lalu dari shoplist_form.dart form tersebut saya modifikasi untuk setiap menekan tombol save, akan dibuat sebuah objek item baru yang akan disimpan ke listItem yang nantinya akan di display pada halaman lihat item, setelah itu akan ditambahkan navigasi ke halaman ShowItemPage pada drawer dan tombol halaman utama.

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

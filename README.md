# stream_jejen

## **Praktikum 1: Dart Streams**


## Getting Started
**Soal 1**

- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda. (**done**)

- Gantilah warna tema aplikasi sesuai kesukaan Anda. (**done**)

- Lakukan commit hasil jawaban Soal 1 dengan pesan "P1: Jawaban Soal 1"

![Screenshoot stream_jejen](images/JawabanSoal1.png)

**Soal 2**

Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors  (**done**)

Lakukan commit hasil jawaban Soal 2 dengan pesan "P1: Jawaban Soal 2"

![Screenshoot stream_jejen](images/JawabanSoal2.png)

**Soal 3**
Jelaskan fungsi keyword yield* pada kode tersebut!

yield* digunakan untuk meneruskan stream yang dihasilkan oleh Stream.periodic ke dalam stream utama. Artinya, stream ini akan terus menghasilkan warna berdasarkan interval waktu yang sudah ditentukan.

Apa maksud isi perintah kode tersebut?

- Fungsi getColors() adalah generator stream yang mengeluarkan warna secara periodik, setiap detik, berdasarkan 
  daftar warna yang ada dalam colors.

- Stream.periodic memungkinkan pembuatan stream yang mengeluarkan nilai pada interval waktu tertentu (1 detik 
  dalam hal ini).

- Setiap detik, warna yang dihasilkan akan berputar sesuai dengan panjang array warna yang ada (menggunakan  
  modulus untuk memilih indeks).

- Fungsi ini sangat berguna jika Anda ingin memperbarui UI atau data secara berkala dalam aplikasi Flutter, 
  seperti mengubah warna latar belakang setiap detik.

Lakukan commit hasil jawaban Soal 3 dengan pesan "P1: Jawaban Soal 3"

![Screenshoot stream_jejen](images/JawabanSoal3.png)

**Soal 4**
Capture hasil praktikum Anda berupa GIF dan lampirkan di README. **done**

Lakukan commit hasil jawaban Soal 4 dengan pesan "P1: Jawaban Soal 4" **done**

![Screenshoot stream_jejen](images/JawabanSoal4.png)

**Soal 5**
Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !

**listen**

.listen() adalah metode yang digunakan untuk "mendengarkan" stream dan mengeksekusi callback setiap kali stream mengeluarkan nilai baru.


**Kelebihan**:

-Tidak menghalangi jalannya eksekusi kode lainnya (non-blocking).

- Ideal ketika Anda ingin stream terus berlanjut tanpa harus menunggu secara eksplisit setiap nilai stream yang 
  diterima.

**Kekurangan**:

- Karena tidak ada mekanisme untuk menunggu atau menghentikan stream, kita tidak bisa langsung melakukan 
  tindakan lain setelah mendengarkan stream. Kode akan langsung melanjutkan eksekusi tanpa menunggu stream selesai.

- Tidak bisa menghentikan stream di tengah jalan secara langsung (diperlukan manajemen manual).

**await for**

await for adalah cara untuk menunggu dan menangani setiap nilai yang dikeluarkan oleh stream satu per satu.

**Kelebihan**:

- Menunggu setiap nilai stream secara berurutan, yang berguna jika Anda perlu 
  memproses stream secara sekuensial.

- Penanganan yang lebih jelas dan mudah untuk kasus di mana Anda memerlukan 
  tindakan berurutan untuk setiap item stream.

**Kekurangan**:

- Blocking: Ini menghalangi eksekusi program sementara Anda menunggu stream selesai, jadi jika stream tidak 
  mengeluarkan data cepat, bisa membuat UI terasa "terhenti" sementara.

- Tidak ada cara untuk berhenti mendengarkan stream lebih awal dengan cara yang langsung (berbeda dengan 
  .listen() yang memberikan kontrol lebih besar).

  Lakukan commit hasil jawaban Soal 5 dengan pesan "P1: Jawaban Soal 5" (**done**)

## **Praktikum 2: Stream controllers dan sinks**

**Soal 6**

Jelaskan maksud kode langkah 8 dan 10 tersebut!

**Pada langkah 8** kode yang digunakan ialah initState() yang digunakan untuk mendengarkan stream (numberStreamController.stream) ketika widget pertama kali diinisialisasi.

**Pada langkah 10** kode yang digunakan ialah addRandomNumber(), Pada kode ini, bertujuan untuk menambahkan data baru ke stream.

Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

![Screenshoot stream_jejen](images/JawabanSoal5.png)

Lalu lakukan commit dengan pesan "P2: Jawaban Soal 6". (**done**)


**Soal 7**
Jelaskan maksud kode langkah 13 sampai 15 tersebut!

Kembalikan kode seperti semula pada Langkah 15, comment addError() agar Anda dapat melanjutkan ke praktikum 3 berikutnya.

Lalu lakukan commit dengan pesan "P2: Jawaban Soal 7".

![Screenshoot stream_jejen](images/JawabanSoal7.png)
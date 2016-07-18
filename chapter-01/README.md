# Belajar-SQL
Supporting Content untuk tutorial [Belajar SQL](http://pojokprogrammer.net/tags/belajar-sql) di [Pojok Programmer](http://pojokprogrammer.net/content/atur-data-anda)

**Bagian pertama dari rangkaian artikel tentang konsep database relational dan  dasar-dasar SQL**

Rangkaian artikel ini ditujukan untuk teman-teman yang ingin mempelajari SQL namun masih baru atau belum memahami sepenuhnya tentang konsep database relasional dan cara memanfaatkan dan membuat SQL dengan baik. Pada artikel pertama ini, pembahasan akan difokuskan pada konsep dasar database relasional dan beberapa hal mendasar yang harus diketahui jika kita ingin membuat sebuah perintah SQL.

### Bagaimana Data Anda Tersimpan di database

Kemampuan kita untuk **memvisualisasikan** bagaimana data tersimpan di database menjadi syarat penting agar kita dapat **menemukembalikan (*retrieve*) data** tersebut dengan mudah dan cepat. Pada saat kita mengambil uang di mesin ATM pada dasarnya kita sedang membaca dan mengubah data tabungan kita di bank. Pada saat kita memesan barang atau membeli tiket secara online pada dasarnya kita juga sedang membaca dan mengubah data. Jadi apapun yang kita lakukan secara elektronis sangat mungkin pada saat yang bersamaan kita sedang berinteraksi dengan database relasional.

### Perintah SQL Pertama Anda

Dengan **perintah SQL** kita bisa mendefinisikan tabel yang akan kita gunakan untuk menyimpan data menggunakan perintah *CREATE*. Perintah seperti ini umumnya dikategorikan sebagai perintah **DDL** (***Data Definition Language***). Selain ini kita pastinya juga bisa menambahkan data baru, mengubah data yang sudah ada, menghapus data, dan membaca (temu kembali = *retrieve*) data yang tersimpan di database, biasa disebut sebagai **DML** (***Data Manupulation Laguage***)

Sebagai contoh, perintah SQL DDL berikut ini digunakan untuk membuat tabel *EMPLOYEE*, sekaligus dengan kolom-kolom (atribut) dan tipe datanya:

<pre>CREATE TABLE employee
   (employee_id    INTEGER,
    first_name     VARCHAR(50),
    last_name      VARCHAR(50),
    hire_date      DATE,
    salary         NUMERIC(9,2),
    manager        INTEGER,
    dept_id        INTEGER,
    dept_name      VARCHAR(50),
    ofice_1        VARCHAR(50),
    ofice_2        VARCHAR(50),
    ofice_3        VARCHAR(50)
);</pre>

Untuk membaca data yang tersimpan di dalam tabel *EMPLOYEE* maka kita menggunakan perintah *SELECT*. Sebagai contoh jika kita ingin mengambil data nama karyawan dan tanggal mulai bekerjanya, maka kita gunakan perintah SQL DML seperti ini:

<pre>SELECT first_name, last_name, hire_date
  FROM employee;</pre>

Cukup mudah bukan?

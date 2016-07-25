# Membuat Model Basis Data

Supporting Content untuk tutorial [Belajar SQL](http://pojokprogrammer.net/tags/belajar-sql) di [Pojok Programmer](http://pojokprogrammer.net/content/membuat-model-basis-data)

**Bagian kedua dari rangkaian artikel tentang konsep database relational dan  dasar-dasar SQL**

Pada bagian pertama kita sudah membahas tentang bagaimana cara membuat relasi antar tabel dan melakukan normalisasi terhadap data yang kita miliki. Bagian kedua ini akan membahas cara kita memodelkan data dan kardinalitas dari relasi.

### Pentingnya Analisa dan Desain

Sebelum kita membuat desain sebuah database, maka pertama-tama yang perlu kita lakukan ***requirements gathering***, yaitu mengumpulkan semua kebutuhan dan keinginan para pengguna (*users*) kemudian melakukan analisa terhadap kebutuhan dan keinginan tersebut. Salah satu *kebutuhan* yang harus didapatkan dalam proses analisa ini adalah *data apa saja* yang ingin disimpan ke dalam database.

Seorang analis sistem (*system analyst*) kemudian harus dapat mengidetifikasikan apa saja entitas (*entity*) yang terlibat dalam sistem yang ingin dikembangkan. Setelah semua entitas teridentifikasi maka kita buatkan ***Conceptual Model*** berupa relasi antar entitas tersebut. Perhatikan bahwa dalam *Conceptual Model* kita hanya menggambarkan relasi antar entitas saja, tidak termasuk atribut dari entitas tersebut.

### Diagram ERD

Diagram ERD dalam artikel ini menggunakan tools ER Assistant yang bisa diunduh gratis di [website ini](http://highered.mheducation.com/sites/0072942207/student_view0/e_r_assistant.html).

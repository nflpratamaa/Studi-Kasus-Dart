# 🧩 Tugas 5 - Pertemuan 7  
## Dasar Pemrograman Dart – Studi Kasus Sepak Bola  

---

## 🪪 Identitas  

* **Nama**       : Naufal Aulia Pratama  
* **NIM**        : H1D023046  
* **Shift KRS**  : E  
* **Shift**      : A  

---

## Penjelasan Program
Program ini merupakan **studi kasus sederhana penerapan dasar bahasa pemrograman Dart** dengan tema **analisis statistik pemain sepak bola**.  
Data yang digunakan adalah daftar pemain **Liverpool FC musim 2024/2025** beserta jumlah gol dan assist mereka.  

Tujuan program:
1. Menampilkan data statistik setiap pemain.  
2. Menghitung total gol, assist, dan kontribusi tim.  
3. Menentukan pemain dengan kontribusi tertinggi.  
4. Menghitung rata-rata kontribusi per pemain.  

Program ini mengimplementasikan konsep-konsep dasar Dart seperti:
- **Class dan Object**
- **List dan Looping**
- **Fungsi (Method)**
- **Operator dan Perhitungan Numerik**

---

## 🔍 Alur Program  

1. **Class `Player`**  
   Menyimpan data pemain seperti `name`, `goals`, dan `assists`.  
   Class ini memiliki dua method utama:
   - `totalContribution()` → menghitung total kontribusi (gol + assist).  
   - `showInfo()` → menampilkan informasi pemain ke konsol.  

2. **List Pemain (Data Input)**  
   Data lima pemain Liverpool dimasukkan ke dalam `List<Player> players`.  

3. **Perulangan Data**  
   Menggunakan perulangan `for (var player in players)` untuk menampilkan informasi tiap pemain.  

4. **Perhitungan Statistik Tim**  
   - Total gol dihitung dengan `fold()`.  
   - Total assist dihitung dengan `fold()`.  
   - Rata-rata kontribusi dihitung dengan total kontribusi dibagi jumlah pemain.  

5. **Menentukan Pemain Terbaik**  
   Menggunakan `reduce()` untuk mencari pemain dengan kontribusi tertinggi.  

6. **Menampilkan Hasil Akhir**  
   Semua hasil ditampilkan menggunakan `print()` ke konsol.  


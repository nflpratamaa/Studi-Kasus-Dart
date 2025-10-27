// TUGAS 5 - PERTEMUAN 7
// Studi Kasus: Analisis Statistik Pemain Sepak Bola (Liverpool FC)
// Bahasa Pemrograman Dart

// Membuat class Player untuk menyimpan data pemain
class Player {
  String name;
  int goals;
  int assists;

  Player(this.name, this.goals, this.assists);

  // Menghitung total kontribusi gol (gol + assist)
  int totalContribution() {
    return goals + assists;
  }

  // Menampilkan info pemain
  void showInfo() {
    print("Nama: $name | Gol: $goals | Assist: $assists | Total Kontribusi: ${totalContribution()}");
  }
}

// Fungsi utama
void main() {
  print("=== Statistik Pemain Liverpool FC Musim 2024/2025 ===");

  // Membuat list pemain (contoh sederhana)
  List<Player> players = [
    Player("Mohamed Salah", 10, 6),
    Player("Darwin Núñez", 8, 3),
    Player("Luis Díaz", 5, 4),
    Player("Dominik Szoboszlai", 3, 7),
    Player("Virgil van Dijk", 2, 1),
  ];

  // Menampilkan semua data pemain
  print("\nDaftar Pemain dan Statistik:");
  for (var player in players) {
    player.showInfo();
  }

  // Menghitung total gol dan assist tim
  int totalGoals = players.fold(0, (sum, p) => sum + p.goals);
  int totalAssists = players.fold(0, (sum, p) => sum + p.assists);

  // Menghitung rata-rata kontribusi
  double avgContribution = players.fold(0, (sum, p) => sum + p.totalContribution()) / players.length;

  print("\n=== Statistik Tim ===");
  print("Total Gol Tim: $totalGoals");
  print("Total Assist Tim: $totalAssists");
  print("Rata-rata Kontribusi Pemain: ${avgContribution.toStringAsFixed(2)}");

  // Menentukan pemain dengan kontribusi tertinggi
  Player topPlayer = players.reduce(
    (a, b) => a.totalContribution() > b.totalContribution() ? a : b,
  );
  print("\nPemain dengan Kontribusi Tertinggi: ${topPlayer.name} (${topPlayer.totalContribution()} kontribusi)");
}

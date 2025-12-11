# Pokédex Flutter Application

![Pokédex App Preview](https://github.com/user-attachments/assets/da8a9293-b620-4733-89d3-e096d6979ab4)

## Deskripsi Proyek

Aplikasi Pokédex adalah sebuah aplikasi mobile yang dikembangkan menggunakan Flutter framework. Aplikasi ini menyediakan antarmuka pengguna yang intuitif untuk menjelajahi dan mencari informasi tentang Pokémon. Aplikasi ini menampilkan daftar Pokémon dengan fitur pencarian dan navigasi ke halaman detail untuk setiap Pokémon.

## Fitur Utama

### 1. Halaman Beranda (Home Page)
- **Grid Layout**: Menampilkan daftar Pokémon dalam format grid 2 kolom
- **Search Functionality**: Fitur pencarian Pokémon berdasarkan nama atau nomor Pokédex nasional
- **Interactive Cards**: Kartu Pokémon yang dapat di-tap untuk navigasi ke halaman detail
- **Type-based Color Coding**: Kartu Pokémon dengan warna latar belakang berdasarkan tipe Pokémon

### 2. Halaman Detail (Detail Page)
- Menampilkan informasi detail Pokémon yang dipilih
- Navigasi kembali ke halaman utama

### 3. Komponen Widget
- **CardPokemonWidget**: Widget kustom untuk menampilkan kartu Pokémon
- **Responsive Design**: Layout yang responsif untuk berbagai ukuran layar

## Arsitektur Aplikasi

### Struktur Direktori

```
lib/
├── main.dart                 # Entry point aplikasi
├── home_page.dart           # Halaman beranda
├── detail_page.dart         # Halaman detail Pokémon
├── model/
│   ├── pokemon.dart         # Model data Pokémon
│   └── dummy_data.dart      # Data dummy Pokémon
└── shared/
    └── widget/
        └── card_pokemon.dart # Widget kartu Pokémon
```

### Model Data

```dart
class Pokemon {
  final int id;           // ID unik Pokémon
  final String name;      // Nama Pokémon
  final String imageUrl;  // URL gambar Pokémon
  final String type;      // Tipe Pokémon (Fire, Water, Grass, dll.)
}
```

## Spesifikasi Teknis

### Environment Requirements
- **Flutter SDK**: ≥ 3.9.0
- **Dart SDK**: Compatible dengan Flutter 3.9.0
- **Platform Support**: Android, iOS, Web, Desktop (Windows, macOS, Linux)

### Dependencies

#### Production Dependencies
```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
```

#### Development Dependencies
```yaml
dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0
```

## Instalasi dan Setup

### Prasyarat
1. Flutter SDK terinstall di sistem
2. Editor kode (VS Code, Android Studio, atau IntelliJ IDEA)
3. Emulator atau perangkat fisik untuk testing

### Langkah Instalasi

1. **Clone Repository**
   ```bash
   git clone <repository-url>
   cd pokedex
   ```

2. **Install Dependencies**
   ```bash
   flutter pub get
   ```

3. **Verifikasi Setup Flutter**
   ```bash
   flutter doctor
   ```

4. **Run Application**
   ```bash
   flutter run
   ```

### Build untuk Production

#### Android
```bash
flutter build apk --release
flutter build appbundle --release
```

#### iOS
```bash
flutter build ios --release
```

#### Web
```bash
flutter build web --release
```

## Panduan Development

### Code Style dan Konvensi
- Menggunakan `flutter_lints` untuk memastikan kode berkualitas
- Penamaan file menggunakan snake_case
- Penamaan class menggunakan PascalCase
- Penamaan variable dan function menggunakan camelCase

### Testing
```bash
# Run unit tests
flutter test

# Run integration tests
flutter drive --target=test_driver/app.dart
```

### Debugging
```bash
# Run dengan debug mode
flutter run --debug

# Run dengan profile mode
flutter run --profile
```

## Platform Support

Aplikasi ini mendukung multi-platform deployment:

- **Android**: API level 21+ (Android 5.0+)
- **iOS**: iOS 12.0+
- **Web**: Browser modern dengan support untuk WebAssembly
- **Desktop**: Windows 10+, macOS 10.14+, Linux (Ubuntu 18.04+)

## Kontribusi

### Workflow Development
1. Fork repository
2. Buat feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit perubahan (`git commit -m 'Add some AmazingFeature'`)
4. Push ke branch (`git push origin feature/AmazingFeature`)
5. Buat Pull Request

### Code Review Guidelines
- Pastikan kode mengikuti style guide
- Tambahkan tests untuk fitur baru
- Update dokumentasi jika diperlukan
- Pastikan tidak ada breaking changes

## Performance Optimization

### Best Practices yang Diimplementasikan
- **Widget Tree Optimization**: Menggunakan const constructors untuk widget statis
- **Image Loading**: Network image caching untuk performa yang lebih baik
- **Memory Management**: Proper disposal of controllers dan resources
- **Build Optimization**: Efficient use of StatelessWidget vs StatefulWidget

## Troubleshooting

### Common Issues

1. **Build Failures**
   ```bash
   flutter clean
   flutter pub get
   flutter run
   ```

2. **iOS Build Issues**
   ```bash
   cd ios
   pod install
   cd ..
   flutter run
   ```

3. **Android Build Issues**
   - Pastikan Android SDK terinstall dengan benar
   - Check `android/local.properties` file

## Roadmap dan Future Enhancements

### Planned Features
- [ ] Integration dengan PokeAPI untuk data real-time
- [ ] Fitur favorit Pokémon
- [ ] Animasi dan transisi yang lebih smooth
- [ ] Dark mode support
- [ ] Offline capability dengan local database
- [ ] Unit dan integration tests yang comprehensive

### Technical Improvements
- [ ] State management dengan Provider/Bloc
- [ ] Internationalization (i18n) support
- [ ] Performance monitoring
- [ ] Automated CI/CD pipeline

## Lisensi

Project ini bersifat open source. Silakan merujuk ke file LICENSE untuk informasi detail mengenai lisensi.

## Tim Pengembang

Dikembangkan dengan ❤️ menggunakan Flutter framework.

---

**Catatan**: Dokumentasi ini akan terus diperbarui seiring dengan perkembangan aplikasi. Untuk pertanyaan atau masukan, silakan buat issue di repository ini.

# Öğrenci Bilgi Sistemi (OBS) Uygulaması

Bu proje, Mobil Programlama dersi kapsamında İstanbul Medeniyet Üniversitesi adına **Flutter** kullanılarak geliştirilen temel bir **Öğrenci Bilgi Sistemi (OBS)** mobil uygulamasıdır. Uygulama, üniversite öğrencileri için ders bilgilerini, haftalık ders programlarını, yapılacak görevlerini ve mezuniyet bilgilerini kolayca görüntüleyebilmelerini sağlar. Aynı zamanda giriş yapan kullanıcıya özel kişiselleştirilmiş bir deneyim sunar.

## Özellikler

- **Kullanıcı Girişi:**  
  Kullanıcı adı ve şifre ile giriş yapılır, JSON dosyasından doğrulama gerçekleştirilir.
  
- **Profil Yönetimi:**  
  Giriş yapan kullanıcının ad-soyad ve e-posta bilgileri otomatik olarak görüntülenir.
  
- **Yapılacaklar Listesi:**  
  Kullanıcı, anasayfada yapılacak görevlerini ekleyebilir, silebilir ve düzenleyebilir. Veriler, uygulama yeniden başlatıldığında da saklanır.
  
- **Ders Bilgileri:**  
  Öğrencinin aldığı dersler ve derslerin öğretim üyeleri listelenir.
  
- **Haftalık Ders Programı:**  
  Haftalık ders programı günlere göre görüntülenebilir.
  
- **Mezuniyet Bilgileri:**  
  Tamamlanan kredi, kalan kredi ve dönem bilgileri görüntülenir.
  
- **Çıkış Yapma:**  
  Kullanıcı, menüden çıkış yaparak uygulamayı sonlandırabilir.

## Ekran Görüntüleri

| **Giriş Ekranı**                     | **Anasayfa**                       |
|--------------------------------------|-----------------------------------|
| ![Giriş Ekranı](OBS_app_finish/assets/giriş.jpg)    | ![Anasayfa](OBS_app_finish/assets/anasayfa.jpg)      |

| **Menü Çubuğu**                   | **Profil Sayfası**                 |
|--------------------------------------|-----------------------------------|
| ![Dersler](OBS_app_finish/assets/menü_çubuğu.jpg)       | ![Profil](OBS_app_finish/assets/profil.jpg)     |

## Teknolojiler

- **Flutter:**  
  Uygulamanın geliştirilmesi için kullanıldı.
- **Dart:**  
  Uygulama kodlama dili olarak kullanıldı.
- **JSON:**  
  Kullanıcı verilerinin saklanması ve doğrulaması için kullanıldı.
- **Shared Preferences:**  
  Kullanıcı görevlerinin kalıcı olarak saklanması sağlandı.

## Kurulum

1. **Proje deposunu klonlayın:**

   ```bash
   git clone https://github.com/fatmazeyrek/OBS_app.git

2. **Gerekli bağımlılıkları yükleyin:**
   ```bash
   flutter pub get

3. **Gerekli bağımlılıkları yükleyin:**
   ```bash
   flutter run
**Klasör Yapısı:**
   ```bash
OBS_app/
├── lib/
│   ├── home_screen.dart          # Anasayfa kodları
│   ├── login_screen.dart         # Giriş ekranı kodları
│   ├── profile_screen.dart       # Profil ekranı kodları
│   ├── courses_screen.dart       # Ders bilgileri ekranı kodları
│   ├── schedule_screen.dart      # Ders programı ekranı kodları
│   ├── custom_drawer.dart        # Menü çubuğu kodları
│   └── globals.dart              # Global değişkenler
├── assets/
│   ├── users.json                # Kullanıcı verileri
│   ├── imu_logo.png              # Uygulama logosu
│   └── 200x200.png               # Giriş ekranı görseli
└── pubspec.yaml                  # Bağımlılık dosyası

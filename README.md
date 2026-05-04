# Çılgın Şef (Mad Chef) - Mobil Arayüz Tasarımı

Bu proje, **Mobil Programlama** dersi vize ödevi kapsamında geliştirilmiş bir Flutter uygulaması arayüzüdür[cite: 1]. Uygulama, modern mizanpaj tekniklerini ve Flutter'ın temel yapı taşlarını (Widget'lar) kullanarak tasarlanmıştır[cite: 2, 3].

## Proje Özellikleri

Ödev gereksinimleri doğrultusunda uygulamada aşağıdaki teknik özellikler eksiksiz olarak uygulanmıştır[cite: 1]:

*   **Oransal Ekran Bölünmesi:** Ekran alanı `Expanded` widget'ları kullanılarak dikeyde **2/5** ve **3/5** oranlarında iki ana bölüme ayrılmıştır[cite: 1, 3].
*   **Dinamik Renk Ataması:** Üst bölümün arka plan rengi, öğrenci numaramın son iki hanesine göre formüle edilmiş ve **#585050** HEX kodu ile oluşturulmuştur[cite: 1].
*   **Özel Font Kullanımı:** Proje varlıklarına (assets) **Monoton** fontu eklenmiş ve başlık metinlerinde (fontFamily) kullanılmıştır[cite: 1, 2].
*   **Hibrit Liste Yapısı (ListView):** Alt bölümde yer alan içerikler için 7 elemanlı bir `ListView.builder` yapısı kurulmuştur[cite: 1, 3].
*   **Çoklu Veri Kaynağı:** Listedeki görsellerin 3'ü yerel cihaz dosyalarından (`Image.asset`), 4'ü ise internet üzerinden (`Image.network`) asenkron olarak çekilmektedir[cite: 1, 2].
*   **Kırpma ve Taşma Kontrolleri:** 
    *   Liste görsellerinin köşeleri `ClipRRect` ve `BorderRadius` kullanılarak yuvarlatılmıştır[cite: 1, 3].
    *   Liste metinlerindeki (Lorem Ipsum) taşmalar `TextOverflow.ellipsis` özelliği ile kontrol altına alınmıştır[cite: 1, 2].


##  Kullanılan Teknolojiler

*   **Framework:** Flutter
*   **Dil:** Dart
*   **Temel Widget'lar:** `Scaffold`, `AppBar`, `Column`, `Row`, `Expanded`, `ListView`, `ClipRRect`, `BoxDecoration`[cite: 2, 3].

##  Kurulum ve Çalıştırma

Projeyi kendi bilgisayarınızda çalıştırmak için aşağıdaki adımları izleyebilirsiniz:

1. Depoyu bilgisayarınıza klonlayın:
   ```bash
   git clone [https://github.com/FatmaKamer/flutter-ui-design-app.git](https://github.com/FatmaKamer/flutter-ui-design-app.git)
   
```

2. Proje dizinine gidin:
   ```bash
   cd flutter-ui-design-app
   
```

3. Gerekli bağımlılıkları yükleyin (Font ve Asset paketleri için):
   ```bash
   flutter pub get
   
```

4. Uygulamayı bir mobil emülatörde veya fiziksel cihazda çalıştırın:
   ```bash
   flutter run
   
```
---
**Geliştirici:** Fatma Kamer Durusoy

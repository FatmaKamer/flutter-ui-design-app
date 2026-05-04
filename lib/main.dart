import 'package:flutter/material.dart';

void main() {
  runApp(const CilginSefApp());
}

class CilginSefApp extends StatelessWidget {
  const CilginSefApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScaffolPage(),
    );
  }
}

final List<Map<String, String>> yemekListesi = [
  {"cesit": "asset", "url": "assets/images/yemek1.jpg"},
  {"cesit": "asset", "url": "assets/images/yemek2.jpg"},
  {"cesit": "asset", "url": "assets/images/yemek3.jpg"},
  {"cesit": "network", "url": "https://i.pinimg.com/736x/f6/db/69/f6db699d9833b0ac074ee239b9a7b04e.jpg"},
  {"cesit": "network", "url": "https://i.pinimg.com/736x/6e/7c/52/6e7c520f3ab67f36503ba795511694f3.jpg"},
  {"cesit": "network", "url": "https://i.pinimg.com/1200x/1d/c0/ba/1dc0ba970257be2af0c8f2c9bf6da665.jpg"},
  {"cesit": "network", "url": "https://i.pinimg.com/736x/86/2e/d5/862ed5d0ea5b9b1197a3da6a838479c4.jpg"},
];

class ScaffolPage extends StatelessWidget {
  final arkaplanrengi = const Color(0xFF585050);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ÇILGIN ŞEF"),
        backgroundColor: Colors.green,
        leading: const Icon(Icons.arrow_back),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: arkaplanrengi,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(97, 183, 160, 160),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.play_arrow, size: 80, color: Colors.black54),
                ),
              ),
            ),
          ),
          
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "BUNLARI DA BEĞENEBİLİRSİNİZ",
                    style: TextStyle(
                      fontFamily: 'Monoton',
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: yemekListesi.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(13),
                                child: SizedBox(
                                  width: 100,
                                  height: 80,
                                  child: yemekListesi[index]["cesit"] == "asset"
                                  ? Image.asset(yemekListesi[index]["url"]!, fit: BoxFit.cover)
                                  : Image.network(yemekListesi[index]["url"]!, fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: Text("OOOooo veryy delicioussss",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: "Monoton",
                                  fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    )
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
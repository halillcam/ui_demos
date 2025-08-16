import 'package:flutter/material.dart';

class KufaorlerTestUi extends StatelessWidget {
  KufaorlerTestUi({super.key});

  final List<Map<String, dynamic>> kuaforler = [
    {
      "isim": "Gold Kuaför",
      "puan": 4.8,
      "yorum": 120,
      "resim": "https://picsum.photos/200/200?random=1"
    },
    {
      "isim": "Trend Hair",
      "puan": 4.5,
      "yorum": 85,
      "resim": "https://picsum.photos/200/200?random=2"
    },
    {
      "isim": "Modern Style",
      "puan": 4.2,
      "yorum": 60,
      "resim": "https://picsum.photos/200/200?random=3"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kuaförler")),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: kuaforler.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            var kuafor = kuaforler[index];
            return GestureDetector(
              onTap: () {
                // Kart tıklandığında yapılacaklar
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(16)),
                      child: Image.network(
                        kuafor["resim"],
                        width: double.infinity,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      kuafor["isim"],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.blue),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 18),
                        SizedBox(width: 4),
                        Text(
                          "${kuafor["puan"]}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "(${kuafor["yorum"]} yorum)",
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 12),
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

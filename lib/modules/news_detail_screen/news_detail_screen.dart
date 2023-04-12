import 'package:flutter/material.dart';
import '../../models/news.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen({
    super.key,
    required this.news,
  });
  final News news;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox( height: MediaQuery.of(context).padding.top),
            Image.network(
              widget.news.imageUrl,
              // fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      Text(
                        widget.news.id,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.news.title,
                    maxLines: 100,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.news.content,
                    maxLines: 100,
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewsDetailScreenHot extends StatefulWidget {
  const NewsDetailScreenHot({
    super.key, 
    required this.newsDetailHot,
  });
  final String newsDetailHot;

  @override
  State<NewsDetailScreenHot> createState() => _NewsDetailScreenHotState();
}

class _NewsDetailScreenHotState extends State<NewsDetailScreenHot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://i.postimg.cc/NFBxBshP/059557800-1626167508-sergio-capuzzimati-SITw-DBhar6w-unsplash.jpg",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                   const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment:MainAxisAlignment.center ,
                      children: const [
                        Text(
                          'Ikan Koi',
                           style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                    'Salah satu hal yang paling menarik tentang ikan koi adalah keragaman jenis dan warna yang dapat ditemukan di antara mereka. Dari Kohaku putih-merah klasik hingga kemilau metalik Kin Gin Rin, ada banyak jenis ikan koi yang bisa dipilih. Setiap jenis ikan koi memiliki karakteristik uniknya sendiri, seperti warna, pola, dan jenis skala, yang membuatnya menonjol dan menarik bagi selera yang berbeda. Ikan koi adalah spesies ikan hias yang menarik dan dicintai yang telah memikat hati banyak pemilik hewan peliharaan di seluruh dunia. Dengan warna cerah, pola khas, dan umur panjang, koi telah menjadi simbol keberuntungan, kemakmuran, dan ketekunan di banyak budaya. Setiap jenis ikan koi memiliki keunikan, yang menjadikannya subjek yang menarik untuk dipelihara atau sekadar mengagumi kecantikan ikan ini.',
                    maxLines: 16,
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                  ),
                  ],
                ),
              ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                      const SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment:MainAxisAlignment.start ,
                          children: const [
                            Text(
                              'Jenis Koi',
                              style:
                                TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                        'Dari Kohaku putih-merah klasik hingga kemilau metalik Kin Gin Rin, ada banyak jenis ikan koi yang bisa dipilih. Setiap jenis ikan koi memiliki karakteristik uniknya sendiri, seperti warna, pola, dan jenis skala, yang membuatnya menonjol dan menarik bagi selera yang berbeda. Ikan koi adalah spesies ikan hias yang menarik dan dicintai yang telah memikat hati banyak pemilik hewan peliharaan di seluruh dunia. Dengan warna cerah, pola khas, dan umur panjang, koi telah menjadi simbol keberuntungan, kemakmuran, dan ketekunan di banyak budaya. Setiap jenis ikan koi memiliki keunikan, yang menjadikannya subjek yang menarik untuk dipelihara atau sekadar mengagumi kecantikan ikan ini.',
                        maxLines: 16,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                      ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                      const SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment:MainAxisAlignment.start ,
                          children: const [
                            Text(
                              'Sejarah',
                              style:
                                TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                        'Ikan koi berasal dari ikan mas atau carper (Cyprinus carpio) yang merupakan ikan nasional Jepang (kokugyo). Nenek moyang koi adalah ikan mas yang berasal dari Asia Timur terutama Jepang. Koi masuk ke Jepang sekitar tahun 1804-1830 di desa Pegunungan Niigata. Saat itu ikan koi ini diproduksi peternak yang membudidayakan ikan mas hitam sebagai sumber makanan untuk bertahan hidup. Suatu hari ada ikan mas yang menghasilkan anakan ikan mas berwarna cerah yang menonjol dari ikan-ikan lainnya.',
                        maxLines: 16,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                      ),
                      ],
                    ),
                  ),
              ],
          
        ),
      ),
    );
  }
}
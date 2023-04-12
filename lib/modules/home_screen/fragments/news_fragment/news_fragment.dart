import 'package:flutter/material.dart';

class NewsFragment extends StatelessWidget {
  const NewsFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Berita Terbaru'),
      ),
      body: ListView.builder(
        itemCount: dummyNews.length,
        itemBuilder: (context, index) {
          final news = dummyNews[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: InkWell(
                onTap: () {
                  // Aksi ketika kartu berita di-tap
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.network(
                        news.imageUrl,
                        height: 200, // mengatur ukuran gambar
                      ),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        news.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        news.description,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        'Penulis: ${news.author}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class News2 {
  final String imageUrl;
  final String title;
  final String description;
  final String author;

  const News2({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.author,
  });
}

final List<News2> dummyNews = [
  const News2(
    imageUrl: 'https://i.postimg.cc/qvh2fhhv/088737400-1664962686-page.jpg',
    title: 'Pemilik Syok, Ikan Koi Seharga Ratusan Juta Dimakan Berang-Berang',
    description:
        'Salah satu hal yang paling menarik tentang ikan koi adalah keragaman jenis dan warna yang dapat ditemukan di antara mereka. Dari Kohaku putih-merah klasik hingga kemilau metalik Kin Gin Rin, ada banyak jenis ikan koi yang bisa dipilih. Setiap jenis ikan koi memiliki karakteristik uniknya sendiri, seperti warna, pola, dan jenis skala, yang membuatnya menonjol dan menarik bagi selera yang berbeda. Ikan koi adalah spesies ikan hias yang menarik dan dicintai yang telah memikat hati banyak pemilik hewan peliharaan di seluruh dunia. Dengan warna cerah, pola khas, dan umur panjang, koi telah menjadi simbol keberuntungan, kemakmuran, dan ketekunan di banyak budaya. Setiap jenis ikan koi memiliki keunikan, yang menjadikannya subjek yang menarik untuk dipelihara atau sekadar mengagumi kecantikan ikan ini.',
    author: 'Woro Anjar Verianty',
  ),
  const News2(
    imageUrl: 'https://i.postimg.cc/gJDgwXKP/001508600-1673423354-Screenshot-751.jpg',
    title: 'BERANI BERUBAH: Dari Hobi, Kini Jadi Hoki dari Ikan Koi',
    description:
        'Sementara itu, Ahmad mematok harga ikan koi mulai Rp 150-250 ribu. Untuk ukurannya, itu beragam mulai 30-35 cm. Akan tetapi, kata Ahmad, perlu diingat bahwa ikan koi itu tidak diukur dari harganya yang mahal, namun dari kualitas ikan koi itu sendiri. “Ada yang size kecil itu udah Rp 1,5 juta, size besar malah cuma Rp 500 ribu itu ada,” tutur dia. Bisnis budi daya ikan koi Ahmad ini sudah menyebar dari Sabang sampai Merauke. Dia pernah mengirim ikan koi sampai ke Papua, Aceh, hingga Riau. Bahkan hingga sampai ke luar negeri, seperti ke Malaysia, Selangor, dan Kuala Lumpur. Dari situ Ahmad berhasil meraup keuntungan bukan hanya untuk diri sendir, tapi juga membuka peluang kerja untuk orang lain. Seperti salah satu pekerjanya bernama Ayuk Kurniawati. Dia merasa bersyukur bisa bekerja bersama Ahmad membudidayakan ikan koi ini. “Sebelum bekerja di sini, saya bekerja di salah satu restoran di Kota Semarang. Saya sangat bersyukur harapan saya ke depannya semoga semakin sukses, semakin dikenal oleh banyak orang, kemudian bisnisnya juga bisa berkembang lebih besar lagi bisa mempunyai greenhouse yang lebih besar lagi di Kota Semarang,” kata Ayuk. Sejak bisnis ini, Ahmad bersyukur bisa mendapatkan penghasilan untuk membeli sesuatu hingga menyenangkan keluarganya. Dia mengatakan, anak muda yang ingin mulai bisnis ikan koi harus punya semangat tinggi dan terus belajar dengan mentor yang tepat.',
    author: 'Dyah Mulyaningtyas',
  ),
  const News2(
    imageUrl: 'https://i.postimg.cc/Kvkv5n3Q/058932700-1643950365-pexels-ryutaro-tsukata-6249270.jpg',
    title: 'Badan Karantina Surabaya Lepas 80 Ekor Ikan Koi ke Malaysia',
    description:
        'Ekspor 80 ekor ikan koi ke Malaysia ini merupakan yang pertama," katanya saat dikonfirmasi usai pemberangkatan ekspor, Kamis (9/6/2022), dilansir dari Antara. Ia mengatakan, ikan koi asal Kabupaten Blitar tersebut belum pernah diekspor karena untuk pengiriman keluar negeri terlebih dahulu melalui daerah lain. "Dengan ekspor perdana ini kami ingin mengedukasi kepada masyarakat kalau ekspor itu gampang, mengingat saat pandemi seperti sekarang ini potensi ekspor ikan koi terbuka lebar," ujarnya. Ia mengatakan, untuk Jawa Timur ekspor ikan sudah cukup banyak, tetapi untuk koi masih pertama kali dilakukan. "Potensi ikan hidup sebagai ikan hias air tawar yang melalui Bandara Internasional Juanda juga menunjukkan angka yang signifikan. Pada tahun 2021 tercatat kurang lebih 6 miliar ekor ikan hias yang telah dilalulintaskan," katanya. Ia mengatakan, dengan kegiatan ini diharapkan pemerintah bersinergi dengan pelaku usaha ikan koi di Blitar agar mampu melaksanakan ekspor koi ke luar negeri secara mandiri. "Dengan adanya ekspor mandiri diharapkan mampu memberi rangsangan kepada pelaku usaha koi agar lebih mengembangkan usahanya," ujarnya.',
    author: 'Ebek Suhendi',
  )
];

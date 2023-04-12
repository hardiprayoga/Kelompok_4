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
              "https://upload.wikimedia.org/wikipedia/commons/3/3c/Mount_Cikuray_from_Cisurupan.JPG",
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
                          'Gunung Cikuray',
                           style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                    'sebuah gunung bertipe Stratovolcano yang terletak di Dayeuhmanggung, Kabupaten Garut, Jawa Barat, Indonesia. Gunung Cikuray yang mempunyai ketinggian 2.821 meter di atas permukaan laut ini tidak mempunyai kawah aktif dan merupakan gunung tertinggi keempat di Jawa Barat setelah Gunung Ciremai, Gunung Pangrango dan Gunung Gede. Gunung ini berada di perbatasan kecamatan Bayongbong dari sini bisa naik melalui jalur Cilegug atau kampung Jambansari dekat markas HdG Team, Cikajang, Kiara Janggot dan Dayeuhmanggung. Iklim di daerah Gunung Cikuray dan sekitarnya dikategorikan sebagai daerah beriklim tropis basah (humid tropical climate). Curah hujan di sekitar Gunung Cikuray mencapai 3500-4000mm dengan kalkulasi bulan basah 9 bulan dan bulan kering 3 bulan dan juga variasi temperatur dari 10 °C hingga 24 °C.',
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
                        'Beberapa naskah kuno menyebut Gunung Cikuray sebagai Gunung Larang Srimanganti atau Srimanganten.Sekitar abad ke-17, lereng Gunung Cikuray menjadi mandala, yaitu pusat pertapaan para pendeta dan kegiatan tulis menulis Kerajaan Sunda (Kabuyutan). Bukti-bukti tertulis mengenai mandala ini masih tersimpan di sebuah cagar budaya Ciburuy di Kecamatan Cigedug.',
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
                              'Pendakian',
                              style:
                                TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                        'Untuk mencapai Cikuray dapat ditempuh dengan naik kendaraan umum dari Bandung atau dari Tasikmalaya menuju terminal Guntur. Dari sana diteruskan dengan angkutan kota menuju jalur pendakian, (Desa Dangiang, Bayongbong, Cikajang, dan Dayeuhmanggung). Keempat jalur tersebut menawarkan medan yang sangat menarik dengan karakteristik masing-masing. Jalur Desa Dangiang adalah jalur yang landai dan terdapt sumber air juga Sinyal HP, sehingga dapat cepat sampai menuju puncak. Karena letaknya paling tinggi di Kabupaten Garut, kaki gunung Cikuray dipakai untuk stasiun pemancar TV swasta dan TVRI. Gunung Cikuray mempunyai kawasan hutan Dipterokarp Bukit, hutan Dipterokarp Atas, Hutan Montane dan Hutan Ericaceous.',
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
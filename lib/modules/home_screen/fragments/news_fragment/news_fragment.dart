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
    imageUrl: 'https://picsum.photos/1920/1080',
    title: 'Berita Pertama',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget tortor neque. Aenean consequat ac metus et mattis. Vestibulum semper vulputate massa, vitae lacinia elit tincidunt eu. Suspendisse aliquam mi eu nunc fermentum placerat. Etiam consectetur lectus nisi, ut consectetur ante tristique in. Sed eu mauris velit.',
    author: 'Nama Penulis',
  ),
  const News2(
    imageUrl: 'https://picsum.photos/1080/720',
    title: 'Berita Kedua',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget tortor neque. Aenean consequat ac metus et mattis. Vestibulum semper vulputate massa, vitae lacinia elit tincidunt eu. Suspendisse aliquam mi eu nunc fermentum placerat. Etiam consectetur lectus nisi, ut consectetur ante tristique in. Sed eu mauris velit.',
    author: 'Nama Penulis',
  ),
  const News2(
    imageUrl: 'https://picsum.photos/200/300',
    title: 'Berita Ketiga',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget tortor neque. Aenean consequat ac metus et mattis. Vestibulum semper vulputate massa, vitae lacinia elit tincidunt eu. Suspendisse aliquam mi eu nunc fermentum placerat. Etiam consectetur lectus nisi, ut consectetur ante tristique in. Sed eu mauris velit.',
    author: 'Nama Penulis',
  )
];

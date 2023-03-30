import 'package:flutter/material.dart';
import 'package:pertemuan5/models/news_detail.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen(
      {super.key,
      required this.id,
      required this.title,
      required this.content});
  final String id;
  final String title;
  final String content;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

// class _NewsDetailScreenState extends State<NewsDetailScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(
//           widget.id,
//         ),
//       ),
//     );
//   }
// }

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  int likeCount = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Latest News",
        ),
      ),
      body: Column(
        children: [
          Image.network(
            "https://akcdn.detik.net.id/community/media/visual/2023/03/09/plt-ketua-dpd-pdi-perjuangan-jawa-timur-said-abdullah-1_43.jpeg?w=700&q=90",
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                // ignore: prefer_const_constructors
                Text(
                  'Said Abdullah Bantah Tudingan Politik Uang: Saya Paham Aturan Kampanye',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Ketua Badan Anggaran DPR RI Said Abdullah bersama para pengurus cabang PDI Perjuangan se-Madura membagikan 175 ribu paket sembako kepada masyarakat miskin di Madura, Jumat (24/3). Selain paket sembako, dalam kesempatan itu Said juga memberikan bantuan berupa uang tunai kepada warga.",
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Namun aksi tersebut mendapat sorotan miring dari sejumlah pihak. Salah satunya berasal dari akun anonim @PartaiSocmed yang membuat framing seolah-olah Said melakukan politik uang (money politic).",
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Like: $likeCount'),
                          const SizedBox(width: 10),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          setState(() {
            likeCount++;
          });
          print(likeCount);
        },
        child: const Icon(
          Icons.favorite,
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
  int likeCount = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hot News!",
        ),
      ),
      body: Column(
        children: [
          Image.network(
            "https://asset.kompas.com/crops/Gd0R9dG0j0CnAED4yAPGgzRvty8=/0x0:0x0/750x500/data/photo/2023/03/27/6421705938881.jpg",
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                // ignore: prefer_const_constructors
                Text(
                  'Sepakat dengan Dubes Palestina, Jokowi: Jangan Campur Adukkan Urusan Olahraga dengan Politik',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Presiden Joko Widodo memberikan penjelasannya atas polemik keikutsertaan tim nasional (timnas) sepak bola Israel dalam ajang Piala Dunia U20 yang akan digelar di Indonesia. Menurut Jokowi, persoalan olahraga sebaiknya tidak dicampuradukkan dengan politik. 'Dalam urusan Piala Dunia U-20 kita sependapat dengan Duta Besar Palestina untuk Indonesia, bahwa FIFA memiliki aturan yang harus ditaati anggotanya,' ujar Jokowi dalam keterangan pers secara daring pada Selasa (28/3/2023). 'Jadi jangan mencampuradukkan urusan olahraga dan urusan politik,' tegasnya.",
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 10),
                    Text(' Like: $likeCount')
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          setState(() {
            likeCount++;
          });
          print(likeCount);
        },
        child: const Icon(Icons.favorite),
      ),
    );
  }
}

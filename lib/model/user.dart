class InfoBuah {
  final String buah;
  final String kalori;
  final String lemak;
  final String karbohidrat;
  final String protein;
  final String deskripsi;
  final String imageAsset;

  InfoBuah({
    required this.buah,
    required this.kalori,
    required this.lemak,
    required this.karbohidrat,
    required this.protein,
    required this.deskripsi,
    required this.imageAsset,
  });

  static InfoBuah fromJson(json) => InfoBuah(
      buah: json['buah'],
      kalori: json['kalori'],
      lemak: json['lemak'],
      karbohidrat: json['karbohidrat'],
      protein: json['protein'],
      deskripsi: json['deskripsi'],
      imageAsset: json['imageAsset']);
}

var InfoBuahList = [
  InfoBuah(
    buah: 'Alpukat',
    kalori: 'Kal : 322',
    lemak: 'Lemak: 29,47 g',
    karbohidrat: 'Karb: 17,15 g',
    protein: 'Prot: 4,02 g',
    deskripsi:
        'Buah apel berasal dari tanaman dengan nama ilmiah Malus domestica dalam genus Malus. Terdapat berbagai warna buah apel, meliputi merah, hijau, dan kuning, sesuai dengan variasinya. Konsumsi buah apel dapat berguna untuk kesehatan tubuh. Apel kaya akan serat, vitamin C, dan berbagai antioksidan. Konsumsi apel dapat membuat kenyang lebih lama meski jumlah kalorinya rendah. Studi menunjukkan bahwa makan apel dapat memiliki banyak manfaat untuk kesehatan Anda.',
    imageAsset: 'assets/apel.jpg',
  ),
  InfoBuah(
    buah: 'Alpukat',
    kalori: 'Kal : 322',
    lemak: 'Lemak: 29,47 g',
    karbohidrat: 'Karb: 17,15 g',
    protein: 'Prot: 4,02 g',
    deskripsi:
        'Buah apel berasal dari tanaman dengan nama ilmiah Malus domestica dalam genus Malus. Terdapat berbagai warna buah apel, meliputi merah, hijau, dan kuning, sesuai dengan variasinya. Konsumsi buah apel dapat berguna untuk kesehatan tubuh. Apel kaya akan serat, vitamin C, dan berbagai antioksidan. Konsumsi apel dapat membuat kenyang lebih lama meski jumlah kalorinya rendah. Studi menunjukkan bahwa makan apel dapat memiliki banyak manfaat untuk kesehatan Anda.',
    imageAsset: 'assets/apel.jpg',
  ),
  InfoBuah(
    buah: 'Alpukat',
    kalori: 'Kal : 322',
    lemak: 'Lemak: 29,47 g',
    karbohidrat: 'Karb: 17,15 g',
    protein: 'Prot: 4,02 g',
    deskripsi:
        'Buah apel berasal dari tanaman dengan nama ilmiah Malus domestica dalam genus Malus. Terdapat berbagai warna buah apel, meliputi merah, hijau, dan kuning, sesuai dengan variasinya. Konsumsi buah apel dapat berguna untuk kesehatan tubuh. Apel kaya akan serat, vitamin C, dan berbagai antioksidan. Konsumsi apel dapat membuat kenyang lebih lama meski jumlah kalorinya rendah. Studi menunjukkan bahwa makan apel dapat memiliki banyak manfaat untuk kesehatan Anda.',
    imageAsset: 'assets/apel.jpg',
  ),
  InfoBuah(
    buah: 'Alpukat',
    kalori: 'Kal : 322',
    lemak: 'Lemak: 29,47 g',
    karbohidrat: 'Karb: 17,15 g',
    protein: 'Prot: 4,02 g',
    deskripsi:
        'Buah apel berasal dari tanaman dengan nama ilmiah Malus domestica dalam genus Malus. Terdapat berbagai warna buah apel, meliputi merah, hijau, dan kuning, sesuai dengan variasinya. Konsumsi buah apel dapat berguna untuk kesehatan tubuh. Apel kaya akan serat, vitamin C, dan berbagai antioksidan. Konsumsi apel dapat membuat kenyang lebih lama meski jumlah kalorinya rendah. Studi menunjukkan bahwa makan apel dapat memiliki banyak manfaat untuk kesehatan Anda.',
    imageAsset: 'assets/apel.jpg',
  ),
];
// var InfoBuahList = [
//   InfoBuah(
//     buah: 'Alpukat',
//     kalori: 'Vitamin A, Vitamin B1, Vitamin B2, Vitamin C,',
//     lemak:
//         'Buah apel berasal dari tanaman dengan nama ilmiah Malus domestica dalam genus Malus. Terdapat berbagai warna buah apel, meliputi merah, hijau, dan kuning, sesuai dengan variasinya. Konsumsi buah apel dapat berguna untuk kesehatan tubuh. Apel kaya akan serat, vitamin C, dan berbagai antioksidan. Konsumsi apel dapat membuat kenyang lebih lama meski jumlah kalorinya rendah. Studi menunjukkan bahwa makan apel dapat memiliki banyak manfaat untuk kesehatan Anda.',
//     karbohidrat: 'assets/images/apel.jpg',
//     protein: '',
//     description: '',
//     imageAsset: ''
//   ),
// ]
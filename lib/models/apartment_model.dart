class Apartment {
  String imgUrl;
  String title;
  int price;
  double rating;
  String address;
  int community;
  int agent;
  List<String> agentName;
  List<String> agentUrl;
  List<String> agentTitle;
  int room;
  Apartment(
      {required this.imgUrl,
      required this.title,
      required this.price,
      required this.rating,
      required this.address,
      required this.community,
      required this.agent,
      required this.agentName,
      required this.agentUrl,
      required this.room,
      required this.agentTitle});
}

String agentFirstImgUrl = 'assets/images/dinesh.jpg';

String agentSecondImgUrl = 'assets/images/binita.jpg';
List<Apartment> apartments = [
  Apartment(
      imgUrl: 'assets/images/duplex.jpeg',
      title: 'Duplex Apartment',
      price: 750,
      rating: 4.9,
      address: 'Chauthe, Pokhara',
      community: 15,
      agent: 3,
      agentName: ['Srijana Khattri', 'Dinesh Bohara', 'Binita Kc'],
      agentUrl: [
        'assets/images/srijana.jpg',
        agentFirstImgUrl,
        agentSecondImgUrl
      ],
      agentTitle: ['Owner', 'Side Agent', 'Side Agent'],
      room: 8),
  Apartment(
      imgUrl: 'assets/images/nacry.jpeg',
      title: 'Nacry Apartment',
      price: 650,
      rating: 4.3,
      address: 'RatnaChowk, Pokhara',
      community: 20,
      agent: 2,
      room: 5,
      agentName: [
        'Bijay Bhandari',
        'Dinesh Bohara',
      ],
      agentUrl: [
        'assets/images/bijay.jpg',
        agentFirstImgUrl,
      ],
      agentTitle: [
        'Owner',
        'Side Agent'
      ]),
  Apartment(
      imgUrl: 'assets/images/triplex.webp',
      title: 'Triplex Apartment',
      price: 600,
      rating: 4.5,
      address: 'Leknath, Pokhara',
      community: 40,
      agent: 3,
      room: 20,
      agentName: ['Anil Thapa', 'Dinesh Bohara', 'Binita Kc'],
      agentUrl: ['assets/images/anil.jpg', agentFirstImgUrl, agentSecondImgUrl],
      agentTitle: ['Owner', 'Side Agent', 'Side Agent']),
  Apartment(
      imgUrl: 'assets/images/high_rise.webp',
      title: 'High Rise Apartment',
      price: 680,
      rating: 4.3,
      address: 'Lakeside, Pokhara',
      community: 60,
      agent: 2,
      room: 10,
      agentName: ['Shristi Gurung', 'Binita Kc'],
      agentUrl: ['assets/images/shristi.jpg', agentSecondImgUrl],
      agentTitle: ['Owner', 'Side Agent']),
  Apartment(
      imgUrl: 'assets/images/micro.jpeg',
      title: 'Micro Apartment',
      price: 550,
      rating: 4.1,
      address: 'Miyapatan, Pokhara',
      community: 10,
      agent: 1,
      room: 3,
      agentName: [
        'Rohit Kc',
      ],
      agentUrl: [
        'assets/images/rohit.jpg'
      ],
      agentTitle: [
        'Owner'
      ])
];

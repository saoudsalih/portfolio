class RecentWork {
  final String? image, category, title, playstore, appstore;
  final int? id;

  RecentWork({
    this.id,
    this.image,
    this.category,
    this.title,
    this.playstore,
    this.appstore,
  });
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
      id: 1,
      title: "Traxsmart AIS140 VLTD App",
      category: "Flutter App",
      image: "assets/images/traxsmart_vltd.png",
      playstore:
          "https://play.google.com/store/apps/details?id=com.traxsmart.mobile&hl=en",
      appstore: "https://apps.apple.com/in/app/traxsmart-ais140/id6460889316"),
  RecentWork(
      id: 2,
      title: "Ventel",
      category: "Flutter",
      image: "assets/images/ventel.jpg",
      playstore: "https://play.google.com/store/apps/details?id=com.ventel.app",
      appstore: "https://apps.apple.com/in/app/ventel/id6612035093"),
  RecentWork(
      id: 3,
      title: "Parchai Parent Connect",
      category: "Flutter",
      image: "assets/images/parchai.png",
      playstore:
          "https://play.google.com/store/apps/details?id=io.parchai.parents_connect",
      appstore: "https://apps.apple.com/in/app/parent-connect/id1643139110"),
  RecentWork(
      id: 4,
      title: "Traxsmart",
      category: "Android & iOS Native",
      image: "assets/images/traxsmart.png",
      playstore:
          "https://play.google.com/store/apps/details?id=com.traxsmart.automobile",
      appstore: "https://apps.apple.com/in/app/traxsmart-vts/id1365758842"),
  RecentWork(
      id: 5,
      title: "Traxsmart AIS140 Fitter App",
      category: "Flutter",
      image: "assets/images/fitter_app.png",
      playstore:
          "https://play.google.com/store/apps/details?id=in.traxsmart.fitter",
      appstore:
          "https://apps.apple.com/in/app/traxsmart-vltd-fitter-app/id6502940661"),
  // RecentWork(
  //   id: 6,
  //   title: "Ajmer Smart City Citizen's App",
  //   category: "Android & iOS Native",
  //   image: "assets/images/traxsmart.png",
  // ),
];

import 'package:flutter/material.dart';

class Person {
  final String id, image, name, descriptionThumbnail, description, lahir, wafat;
  Person({
    required this.id,
    required this.image,
    required this.name,
    required this.descriptionThumbnail,
    required this.description,
    required this.lahir,
    required this.wafat,
  });
}

List<Person> persons = [
  Person(
      id: '1',
      name: "Syekh Muhammad Arsyad Al Banjari",
      descriptionThumbnail: "Ulama fiqih mazhab Syafi\'i yang berasal dari kota Martapura di Tanah Banjar, Kalimantan Selatan...",
      description: dummyText,
      image: "https://3.bp.blogspot.com/-68nbmdoVwK0/WyZAYeMyk3I/AAAAAAAAI3w/OnTXefXArf8lXvZEdoXUEHfFvE-paElJQCLcBGAs/s1600/FB_IMG_1529233353649.jpg",
      lahir: "17 Maret 1710",
      wafat: "13 Oktober 1812",
      ),
  Person(
      id: '2',
      name: "KH. Muhammad Zaini Abdul Ghani",
      descriptionThumbnail: "Muhammad Zaini bin Abdul Ghani al-Banjari adalah salah seorang ulama dan tokoh yang sangat kharismatik dan populer di Kalimantan...",
      description: dummyText,
      image: "https://peloporkrimsus.com/wp-content/uploads/2018/03/20180326_165341.jpg",
      lahir: "11 Februari 1942",
      wafat: "10 Agustus 2005",
      ),
  Person(
      id: '3',
      name: "Syekh Muhammad as-Samman al-Madani",
      descriptionThumbnail: "Syekh Muhammad bin Abdul Karim as-Samman al-Madani, adalah seorang ulama besar keturunan Nabi Muhammad SAW...",
      description: dummyText,
      image: "https://jejakbanua.com/wp-content/uploads/2022/01/CB61455F-533F-4004-8112-357600F1AA8C.jpeg",
      lahir: "1718 M",
      wafat: "1775 M",
      ),
  Person(
      id: '4',
      name: "Tuan Guru Ahmad Zuhdiannoor",
      descriptionThumbnail: "Tuan Guru Ahmad Zuhdiannoor atau dikenal dengan nama Abah Guru Zuhdi adalah pemuka agama sekaligus tokoh masyarakat yang dikenal sebagai ulama besar berpengaruh dan...",
      description: dummyText,
      image: "https://www.laduni.id/panel/themes/default/uploads/post/abahguruzuhdipesanberharga.jpg",
      lahir: "10 Februari 1972",
      wafat: "2 Mei 2020",
      ),
];

String dummyText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

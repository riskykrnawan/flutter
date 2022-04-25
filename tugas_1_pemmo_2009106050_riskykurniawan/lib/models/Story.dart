import 'package:flutter/material.dart';

class Story {
  final String id, name, descriptionThumbnail, description;
  Story({
    required this.id,
    required this.name,
    required this.descriptionThumbnail,
    required this.description,
  });
}

List<Story> stories = [
  Story(
      id: '1',
      name: "Doa Masuk WC",
      descriptionThumbnail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown...",
      description: dummyText,
      ),
  Story(
      id: '2',
      name: "Doa Makan",
      descriptionThumbnail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown...",
      description: dummyText,
      ),
  Story(
      id: '3',
      name: "Doa Niat Sahur",
      descriptionThumbnail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown...",
      description: dummyText,
      ),
  Story(
      id: '4',
      name: "Doa Berbuka Puasa",
      descriptionThumbnail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown...",
      description: dummyText,
      ),
];

String dummyText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown...";

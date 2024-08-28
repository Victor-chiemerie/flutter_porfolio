import 'dart:io';

import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Projects extends Equatable {
  final String id;
  final String name;
  final String title;
  final String description;
  List<String>? images;
  String? link;
  String? gitHub;
  File? file;

  Projects({
    required this.id,
    required this.name,
    required this.title,
    required this.description,
    this.file,
    this.gitHub,
    this.images,
    this.link,
  }) {
    images = images ?? [];
  }

  Projects copyWith({
    String? id,
    String? name,
    String? title,
    String? description,
    List<String>? images,
    String? link,
    String? gitHub,
    File? file,
  }) {
    return Projects(
      id: id ?? this.id,
      name: name ?? this.name,
      title: title ?? this.title,
      description: description ?? this.description,
      images: images ?? this.images,
      link: link ?? this.link,
      gitHub: gitHub ?? this.gitHub,
      file: file ?? this.file,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "title": title,
      "description": description,
      "images": images,
      "link": link,
      "gitHub": gitHub,
      "file": file,
    };
  }

  factory Projects.fromMap(Map<String, dynamic> map) {
    return Projects(
      id: map["id"] ?? "",
      name: map["name"] ?? "",
      title: map["title"] ?? "",
      description: map["description"] ?? "",
      images: map["images"],
      link: map["link"],
      gitHub: map["gitHub"],
      file: map["file"],
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        title,
        description,
        images,
        link,
        gitHub,
        file,
      ];
}

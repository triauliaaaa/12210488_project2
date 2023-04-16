class BeritaModel {
  String? author;
  String? title;
  String? description;
  String? url;
  String? source;
  String? image;
  String? category;
  String? publishedAt;

  BeritaModel({
    this.author,
    this.title,
    this.description,
    this.url,
    this.source,
    this.image,
    this.category,
    this.publishedAt,
  });

  factory BeritaModel.fromMap(Map<String, dynamic> json) => BeritaModel(
        author: json['author'] as String?,
        title: json['title'] as String?,
        description: json['description'] as String?,
        url: json['url'] as String?,
        source: json['source'] as String?,
        image: json['image'] as String?,
        category: json['category'] as String?,
        publishedAt: json['published_at'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'author': author,
        'title': title,
        'description': description,
        'url': url,
        'source': source,
        'image': image,
        'category': category,
        'published_at': publishedAt,
      };
}

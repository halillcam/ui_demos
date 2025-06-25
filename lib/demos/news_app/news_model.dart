class NewsModel {
  String? uuid;
  String? title;
  String? description;
  String? snippet;
  String? url;
  String? imageUrl;
  String? language;
  String? publishedAt;
  String? source;
  List<String>? categories;

  NewsModel({
    this.uuid,
    this.title,
    this.description,
    this.snippet,
    this.url,
    this.imageUrl,
    this.language,
    this.publishedAt,
    this.source,
    this.categories,
  });

  NewsModel.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    title = json['title'];
    description = json['description'];
    snippet = json['snippet'];
    url = json['url'];
    imageUrl = json['image_url'];
    language = json['language'];
    publishedAt = json['published_at'];
    source = json['source'];
    categories = json['categories'] != null ? List<String>.from(json['categories']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uuid'] = uuid;
    data['title'] = title;
    data['description'] = description;
    data['snippet'] = snippet;
    data['url'] = url;
    data['image_url'] = imageUrl;
    data['language'] = language;
    data['published_at'] = publishedAt;
    data['source'] = source;
    data['categories'] = categories;
    return data;
  }
}

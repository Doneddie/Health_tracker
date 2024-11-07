class HealthTip {
  final String id;
  final String title;
  final String description;
  final String source;

  HealthTip({
    required this.id,
    required this.title,
    required this.description,
    required this.source,
  });

  factory HealthTip.fromJson(Map<String, dynamic> json) {
    return HealthTip(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      source: json['source'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'source': source,
    };
  }
}

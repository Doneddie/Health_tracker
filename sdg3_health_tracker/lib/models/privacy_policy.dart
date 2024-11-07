class PrivacyPolicy {
  final String id;
  final String content;
  final DateTime lastUpdated;

  PrivacyPolicy({
    required this.id,
    required this.content,
    required this.lastUpdated,
  });

  factory PrivacyPolicy.fromJson(Map<String, dynamic> json) {
    return PrivacyPolicy(
      id: json['id'],
      content: json['content'],
      lastUpdated: DateTime.parse(json['lastUpdated']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'content': content,
      'lastUpdated': lastUpdated.toIso8601String(),
    };
  }
}

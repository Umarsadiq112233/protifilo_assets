class Project {
  final String title;
  final String description;
  final String imageUrl;
  final String? link;
  final List<String> tags;

  const Project({
    required this.title,
    required this.description,
    required this.imageUrl,
    this.link,
    required this.tags,
  });
}

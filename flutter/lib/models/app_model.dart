class AppItem {
  final int id;
  final String title;
  final String? description;

  const AppItem({
    required this.id,
    required this.title,
    this.description,
  });

  factory AppItem.fromJson(Map<String, dynamic> json) {
    return AppItem(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
    };
  }
}

class AppState {
  final List<AppItem> items;
  final bool isLoading;
  final String? error;

  const AppState({
    this.items = const [],
    this.isLoading = false,
    this.error,
  });

  AppState copyWith({
    List<AppItem>? items,
    bool? isLoading,
    String? error,
  }) {
    return AppState(
      items: items ?? this.items,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}

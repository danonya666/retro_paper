class ArticleModel {
  String title;
  String text;
  String description;
  String introduction;
  String afterword;
  List<String> images;
  String date;
  String id;

  ArticleModel(
      {this.title, this.id, this.text, this.description, this.images, this.introduction, this.afterword, this.date});
}
import 'package:intl/intl.dart';

class ItemModel {
  ItemModel(
      {required this.title,
      required this.id,
      required this.imageURL,
      required this.relaseDate});

  final String title;
  final String id;
  final String imageURL;
  final DateTime relaseDate;

  String daysLeft() {
    return relaseDate.difference(DateTime.now()).inDays.toString();
  }

  String releaseDateFormated() {
    return DateFormat.yMMMEd().format(relaseDate);
  }
}

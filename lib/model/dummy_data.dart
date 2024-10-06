import 'package:flutter_web_task/utilities/image_manager.dart';

class Item {
  final String title;
  final String status;
  final String image;
  final String date;
  final String taskReminder;
  final List<String> personImages;

  Item(this.title, this.status, this.image, this.date, this.taskReminder,
      this.personImages);
}

List<Item> items = [
  Item(
      'Item title',
      'Pending Approval',
      AppImages.place3,
      'Jan 16 - Jan 20, 2024',
      '4 unfinished tasks',
      [AppImages.person1, AppImages.person2]),
  Item(
      'Long item title highlighti...',
      'Pending Approval',
      AppImages.place2,
      '5 Nights (Jan 16 - Jan 20, 2024) ',
      '4 unfinished tasks',
      [AppImages.person1, AppImages.person2]),
  Item(
      'Item title',
      'Pending Approval',
      AppImages.place3,
      '5 Nights (Jan 16 - Jan 20, 2024) ',
      '4 unfinished tasks',
      [AppImages.person1, AppImages.person2]),
  Item(
      'Item title',
      'Pending Approval',
      AppImages.place1,
      '5 Nights (Jan 16 - Jan 20, 2024) ',
      '4 unfinished tasks',
      [AppImages.person1, AppImages.person2]),
  Item(
      'Item title',
      'Pending Approval',
      AppImages.place3,
      '5 Nights (Jan 16 - Jan 20, 2024) ',
      '4 unfinished tasks',
      [AppImages.person1, AppImages.person2]),
  Item(
      'Item title',
      'Pending Approval',
      AppImages.place3,
      '5 Nights (Jan 16 - Jan 20, 2024) ',
      '4 unfinished tasks',
      [AppImages.person1, AppImages.person2]),
  Item(
      'Item title',
      'Pending Approval',
      AppImages.place2,
      '5 Nights (Jan 16 - Jan 20, 2024) ',
      '4 unfinished tasks',
      [AppImages.person1, AppImages.person2]),
  Item(
      'Item title',
      'Pending Approval',
      AppImages.place3,
      '5 Nights (Jan 16 - Jan 20, 2024) ',
      '4 unfinished tasks',
      [AppImages.person1, AppImages.person2]),
];

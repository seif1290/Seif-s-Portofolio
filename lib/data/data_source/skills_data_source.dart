import 'package:seif_portofolio/core/constants/app_icons.dart';
import 'package:seif_portofolio/data/model/skill_model.dart';

abstract class SkillsDataSource {
  static List<SkillModel> get getSkills {
    return [
      SkillModel(icon: AppIcons.flutter, name: "Flutter"),
      SkillModel(icon: AppIcons.dart, name: "Dart"),
      SkillModel(icon: AppIcons.android, name: "Android"),
      SkillModel(icon: AppIcons.androidStudio, name: "Android Studio"),
      SkillModel(icon: AppIcons.bloc, name: "BLoC"),
      SkillModel(icon: AppIcons.cleanArchitecture, name: "Clean Architecture"),
      SkillModel(icon: AppIcons.dataStructures, name: "Data Structures"),
      SkillModel(icon: AppIcons.firebase, name: "Firebase"),
      SkillModel(icon: AppIcons.git, name: "Git"),
      SkillModel(icon: AppIcons.github, name: "GitHub"),
      SkillModel(icon: AppIcons.hive, name: "Hive"),
      SkillModel(icon: AppIcons.kotlin, name: "Kotlin"),
      SkillModel(icon: AppIcons.mvvm, name: "MVVM"),
      SkillModel(icon: AppIcons.mysql, name: "MySQL"),
      SkillModel(icon: AppIcons.postman, name: "Postman"),
      SkillModel(icon: AppIcons.restApi, name: "REST API"),
      SkillModel(icon: AppIcons.sqlite, name: "SQLite"),
      SkillModel(icon: AppIcons.supabase, name: "Supabase"),
      SkillModel(icon: AppIcons.vsCode, name: "VS Code"),
      SkillModel(icon: AppIcons.algorithms, name: "Algorithms"),
      // SkillModel(icon: AppIcons.jetpackCompose, name: "Jetpack Compose"),
    ];
  }
}

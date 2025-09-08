import 'package:seif_portofolio/core/constants/app_images.dart';
import 'package:seif_portofolio/data/model/project_model.dart';

abstract class ProjectsDataSource {
  static List<ProjectModel> get getProjects => [
    ProjectModel(
      image: AppImages.uninotes,
      name: 'Uninotes App',
      description:
          '• An interactive application platform where study materials are collected, allowing students to contribute content for all academic years, admins review and approve submissions to ensure quality.\n\n• Used MVVM architecture patern, BLoC for state management, Restful API and Firebase Auth, Firestore, Storage.\n\n• Added push notifications to alert users about new materials and announcements.',
      link: 'https://github.com/IOTeamDev/fcisLOL-mobile',
      technologies: [
        'Flutter',
        'Dart',
        'Firebase',
        'RestApi',
        'Bloc',
        'MVVM',
        'SharedPreferences',
      ],
    ),
    ProjectModel(
      image: AppImages.bookly,
      name: 'Bookly App',
      description:
          '• Used google books API to fetch a book with a certain category (e.g sports, programming, ...).\n\n• Applied search feature to ensure ease of getting a certain book and made a simple web view to the book source.',
      link: 'https://github.com/seif1290/bookly_app',
      technologies: ['Flutter', 'Dart', 'Firebase', 'Bloc', 'MVVM'],
    ),
    ProjectModel(
      image: AppImages.ecommercy,
      name: 'Ecommercy App',
      description:
          '• Multi-role app: Buyer and Seller modes• Product listings, cart, login/signup, add/edit/delete products, Firebase integration.\n\n• Used MVVM architecture patern, BLoC for state management, and Firebase Auth, Firestore. management.',
      link: 'https://github.com/IOTeamDev/fcisLOL-mobile',
      technologies: ['Flutter', 'Dart', 'Firebase', 'RestApi', 'Bloc', 'MVVM'],
    ),
  ];
}

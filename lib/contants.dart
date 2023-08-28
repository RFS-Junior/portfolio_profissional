class Project {
  final String title;
  final String subtitle;
  final DateTime periodic;

  const Project(
      {required this.title, required this.subtitle, required this.periodic});
}

class Contants {
  static List<Project> projects = [
    Project(
      title: "Geevo Platform",
      subtitle:
          "Big company announcement or simple sub-header taking two or more lines.",
      periodic: DateTime(2023),
    ),
    Project(
      title: "Projeto VigiFome",
      subtitle:
          "Big company announcement or simple sub-header taking two or more lines.",
      periodic: DateTime(2022),
    ),
    Project(
      title: "Projeto Guardião",
      subtitle:
          "Big company announcement or simple sub-header taking two or more lines.",
      periodic: DateTime(2021),
    )
  ];
}

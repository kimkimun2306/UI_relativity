class Course {
  final int id;
  final String name;
  final String imageUrl;

  Course({
    this.id,
    this.name,
    this.imageUrl,
  });
}

final Course Relativity = Course(
  id: 1,
  name: 'Relativity',
  imageUrl: 'assets/images/relativity.png',
);
final Course AtomicModels = Course(
  id: 2,
  name: 'Atomic Models',
  imageUrl: 'assets/images/atomicmodel.png',
);
final Course Simulation = Course(
  id: 3,
  name: 'Simulation',
  imageUrl: 'assets/images/simulation.png',
);

List<Course> namecourse = [
  Relativity,
  AtomicModels,
  Simulation,
];

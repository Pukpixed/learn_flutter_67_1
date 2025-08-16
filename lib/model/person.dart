//class Person {
//  String name;
//  int age;
//  String job;

  // Constructor
//  Person({required this.name, required this.age, required this.job});
//}

//List<Person> personList = [
//  Person(name: "สมชาย", age: 30, job: "Engineer"),
//  Person(name: "สมหญิง", age: 28, job: "Doctor"),
//  Person(name: "สมศรี", age: 25, job: "Teacher"),
// Person(name: "สมปอง", age: 35, job: "Artist"),
// Person(name: "สมจิตร", age: 40, job: "Chef"),
//];

import 'package:flutter/material.dart';

/// ENUM: อาชีพ (มี title, image, และสี)
enum Job {
  engineer(
    title: "Engineer",
    image: "assets/images/1.jpg",
    color: Colors.blue,
  ),
  doctor(
    title: "Doctor",
    image: "assets/images/2.jpg",
    color: Colors.green,
  ),
  teacher(
    title: "Teacher",
    image: "assets/images/3.jpg",
    color: Colors.yellow,
  ),
  artist(
    title: "Artist",
    image: "assets/images/4.jpg",
    color: Colors.purple,
  ),
  chef(
    title: "Chef",
    image: "assets/images/5.jpg",
    color: Colors.orange,
  );

  final String title;
  final String image;
  final Color color;

  const Job({
    required this.title,
    required this.image,
    required this.color,
  });
}

/// CLASS: บุคคล
class Person {
  final String name;
  final int age;
  final Job job;

  const Person({
    required this.name,
    required this.age,
    required this.job,
  });
}

/// รายการบุคคลตัวอย่าง
List<Person> personList = [
  const Person(name: "สมชาย", age: 30, job: Job.engineer),
  const Person(name: "สมหญิง", age: 28, job: Job.doctor),
  const Person(name: "สมศรี", age: 25, job: Job.teacher),
  const Person(name: "สมปอง", age: 35, job: Job.artist),
  const Person(name: "สมจิตร", age: 40, job: Job.chef),
];

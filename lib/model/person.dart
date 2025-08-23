//class Person {
// String name;
//int age;
//  String job;

//Constructor
// Person({required this.name, required this.age, required this.job});
//}

//List<Person> personList = [
//  Person(name: "สมชาย", age: 20, job: "นักศึกษา"),
//  Person(name: "สมหญิง", age: 22, job: "พนักงาน"),
//Person(name: "สมศรี", age: 25, job: "ครู"),
// Person(name: "สมปอง", age: 30, job: "วิศวกร"),
//  Person(name: "สมจิตร", age: 28, job: "แพทย์"),
//];

import 'package:flutter/material.dart';

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
    color: Colors.orange,
  ),
  artist(
    title: "Artist",
    image: "assets/images/4.jpg",
    color: Colors.purple,
  );

  final String title;
  final String image;
  final Color color;
  const Job({required this.title, required this.image, required this.color});
}

class Person {
  String name;
  int age;
  Job job;

  // Constructor
  Person({required this.name, required this.age, required this.job});
}

List<Person> personList = [
  Person(name: "สมชาย", age: 20, job: Job.engineer),
  Person(name: "สมหญิง", age: 22, job: Job.doctor),
  Person(name: "สมศรี", age: 25, job: Job.teacher),
  Person(name: "สมปอง", age: 30, job: Job.artist),
  Person(name: "สมจิตร", age: 28, job: Job.engineer),
];

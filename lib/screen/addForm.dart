import 'package:flutter/material.dart';

import 'package:learn_flutter_67_1/model/person.dart';

class Addform extends StatefulWidget {
  const Addform({super.key});

  @override
  State<Addform> createState() => _AddformState();
}

class _AddformState extends State<Addform> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _age = 20;
  Job _job = Job.engineer;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Add Person",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Add Person"),
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          // child: Column(
          //  children: [
          //   TextFormField(
          //     decoration: InputDecoration(labelText: "Name"),
          //   ),
          //   TextFormField(
          //     decoration: InputDecoration(labelText: "Age"),
          //     keyboardType: TextInputType.number,
          //   ),
          //   DropdownButtonFormField(
          //   decoration: InputDecoration(labelText: "Job"),
          //   items: Job.values.map((key) {
          //     return DropdownMenuItem(
          //       value: key,
          //       child: Text(key.title));
          //   }).toList(),
          //   onChanged: (value){
          //     print("value = $value");
          //   }
          //   ),
          //   SizedBox(height: 20),
          //   FilledButton(
          //     onPressed: () {}, 
          //     style: FilledButton.styleFrom(
          //       backgroundColor: Colors.pinkAccent,
          //       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          //     ),
          //     child: Text(
          //       "Submit", 
          //        style: TextStyle(color: Colors.white, fontSize: 20),
          //   ),
          //   ),
          //  ],
          //   ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: "Name"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter name";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Age"),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter age";
                    }
                    if (int.tryParse(value) == null) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _age = int.parse(value!);
                  },
                ),
                DropdownButtonFormField(
                  value: _job,
                  decoration: InputDecoration(labelText: "Job"),
                  items: Job.values.map((key) {
                    return DropdownMenuItem(
                      value: key,
                      child: Text(key.title),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _job = value!;
                    });
                  },
                ),
                SizedBox(height: 20),
              ],
                  ),
                ),
            ),
          _formKey.currentState!.reset();
      ),
    );
  }
}import 'package:flutter/material.dart';

import 'package:learn_flutter_67_1/model/person.dart';

class Addform extends StatefulWidget {
  const Addform({super.key});

  @override
  State<Addform> createState() => _AddformState();
}

class _AddformState extends State<Addform> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _age = 20;
  Job _job = Job.engineer;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Add Person",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Add Person"),
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          // child: Column(
          //  children: [
          //   TextFormField(
          //     decoration: InputDecoration(labelText: "Name"),
          //   ),
          //   TextFormField(
          //     decoration: InputDecoration(labelText: "Age"),
          //     keyboardType: TextInputType.number,
          //   ),
          //   DropdownButtonFormField(
          //   decoration: InputDecoration(labelText: "Job"),
          //   items: Job.values.map((key) {
          //     return DropdownMenuItem(
          //       value: key,
          //       child: Text(key.title));
          //   }).toList(),
          //   onChanged: (value){
          //     print("value = $value");
          //   }
          //   ),
          //   SizedBox(height: 20),
          //   FilledButton(
          //     onPressed: () {}, 
          //     style: FilledButton.styleFrom(
          //       backgroundColor: Colors.pinkAccent,
          //       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          //     ),
          //     child: Text(
          //       "Submit", 
          //        style: TextStyle(color: Colors.white, fontSize: 20),
          //   ),
          //   ),
          //  ],
          //   ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: "Name"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter name";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Age"),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter age";
                    }
                    if (int.tryParse(value) == null) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _age = int.parse(value!);
                  },
                ),
                DropdownButtonFormField(
                  value: _job,
                  decoration: InputDecoration(labelText: "Job"),
                  items: Job.values.map((key) {
                    return DropdownMenuItem(
                      value: key,
                      child: Text(key.title),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _job = value!;
                    });
                  },
                ),
                SizedBox(height: 20),
              ],
                  ),
                ),
            ),
          ),
        );
  }
}
import 'package:flutter/material.dart';
import 'package:learn_flutter_67_1/model/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _ageCtrl = TextEditingController();
  Job? _selectedJob;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _ageCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Person"),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _nameCtrl,
                decoration: const InputDecoration(labelText: "Name"),
                validator: (v) =>
                    (v == null || v.trim().isEmpty) ? "กรอกชื่อด้วยครับ" : null,
              ),
              TextFormField(
                controller: _ageCtrl,
                decoration: const InputDecoration(labelText: "Age"),
                keyboardType: TextInputType.number,
                validator: (v) {
                  if (v == null || v.trim().isEmpty) return "กรอกอายุด้วยครับ";
                  final n = int.tryParse(v);
                  if (n == null || n <= 0) return "อายุต้องเป็นจำนวนเต็มบวก";
                  return null;
                },
              ),
              DropdownButtonFormField<Job>(
                value: _selectedJob,
                decoration: const InputDecoration(labelText: "Job"),
                items: Job.values
                    .map(
                      (job) => DropdownMenuItem<Job>(
                        value: job,
                        child: Text(job.title), // สมมติว่า model มี field title
                      ),
                    )
                    .toList(),
                onChanged: (job) {
                  setState(() {
                    _selectedJob = job;
                  });
                },
                validator: (v) =>
                    v == null ? "เลือกอาชีพด้วยครับ" : null,
              ),
              const SizedBox(height: 20),
              FilledButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final person = Person(
                      name: _nameCtrl.text.trim(),
                      age: int.parse(_ageCtrl.text.trim()),
                      job: _selectedJob!,
                    );

                    // TODO: ส่ง person กลับหรือบันทึกตามที่ต้องการ
                    // Navigator.pop(context, person);

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("บันทึกข้อมูลเรียบร้อย")),
                    );
                  }
                },
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 50),
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

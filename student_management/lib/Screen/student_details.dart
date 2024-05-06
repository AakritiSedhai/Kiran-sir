import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:student_management/Common/my_card.dart';

import 'package:student_management/Model/student_model.dart';


class StudentDetailsScreen extends StatefulWidget {
  const StudentDetailsScreen({super.key});

  @override
  State<StudentDetailsScreen> createState() => _StudentDetailsScreenState();
}

class _StudentDetailsScreenState extends State<StudentDetailsScreen> {
  @override
  final _gap = const SizedBox(
    height: 10,
  );

  late TextEditingController _fnameController;
  late TextEditingController _lnameController;
  late TextEditingController _cityController;
  List<DropdownMenuItem> cities = [];

  @override
  void initState() {
    _fnameController = TextEditingController();
    _lnameController = TextEditingController();
    _cityController = TextEditingController();

    cities = [
      const DropdownMenuItem(value: 'Kathmandu', child: Text('Kathmandu')),
      const DropdownMenuItem(value: 'Bhaktapur', child: Text('Bhaktapur')),
      const DropdownMenuItem(value: 'Lalitpur', child: Text('Lalitpur')),
    ];
    super.initState();
  }

  @override
  void dispose() {
    _fnameController.dispose();
    _lnameController.dispose();
    _cityController.dispose();
    super.dispose();
  }

  final _key = GlobalKey<FormState>();
  List<Student> students = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Details"),
      ),
      body: Column(children: [
        TextFormField(
          controller: _fnameController,
          decoration: const InputDecoration(
              hintText: "enter first name", border: OutlineInputBorder()),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter fname';
            }
            return null;
          },
        ),
        _gap,
        TextFormField(
          controller: _lnameController,
          decoration: const InputDecoration(
            hintText: 'Last Name',
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter lname';
            }
            return null;
          },
        ),
        _gap,
        DropdownButtonFormField(
          items: cities,
          onChanged: (value) {
            _cityController.text = value.toString();
          },
          decoration: const InputDecoration(
            hintText: 'Select city',
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null) {
              return 'Please select city';
            }
            return null;
          },
        ),
        _gap,
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              if (_key.currentState!.validate()) {
                final student = Student(
                  fname: _fnameController.text,
                  lname: _lnameController.text,
                  city: _cityController.text,
                );
                setState(() {
                  students.add(student);
                });
              }
            },
            child: const Text('Add Student'),
          ),
        ),
        _gap,
        const Text(
          'Student List',
          style: TextStyle(fontSize: 20),
        ),
        _gap,
        students.isEmpty
            ? const Text("No Data")
            : Expanded(
                child: ListView.builder(
                  itemCount: students.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: MyCard(cardText: "Hello")
                    );
                    // return ListTile(
                    //   leading: const Icon(
                    //     Icons.stacked_bar_chart,
                    //   ),
                    //   title: Text(students[index].fname),
                    //   subtitle: Text(students[index].city),
                    //   trailing: IconButton(
                    //     icon: const Icon(Icons.delete),
                    //     onPressed: () {
                    //       setState(() {
                    //         students.removeAt(index);
                    //       });
                    //     },
                    //   ),
                    // );
                  },
                ),
              ),
      ]),
    );
  }
}



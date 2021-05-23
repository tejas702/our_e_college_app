import 'package:flutter/material.dart';
import 'package:our_e_college_app/utils/assignmentItem.dart';

class Assignment extends StatefulWidget {
  @override
  _AssignmentState createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  final List items = [
    AssignmentItem(
        subject: "DSA",
        title: "Merge Sort",
        submissionTime: "11:59 PM",
        submissionDate: "28 May 2021",
        hasSubmitted: false),
    AssignmentItem(
        subject: "DSA",
        title: "Merge Sort",
        submissionTime: "11:59 PM",
        submissionDate: "27 May 2021",
        hasSubmitted: false),
    AssignmentItem(
        subject: "DSA",
        title: "Merge Sort",
        submissionTime: "11:59 PM",
        submissionDate: "26 May 2021",
        hasSubmitted: true),
    AssignmentItem(
        subject: "DSA",
        title: "Merge Sort",
        submissionTime: "11:59 PM",
        submissionDate: "25 May 2021",
        hasSubmitted: false),
    AssignmentItem(
        subject: "DSA",
        title: "Merge Sort",
        submissionTime: "11:59 PM",
        submissionDate: "24 May 2021",
        hasSubmitted: true),
    AssignmentItem(
        subject: "DSA",
        title: "Merge Sort",
        submissionTime: "11:59 PM",
        submissionDate: "23 May 2021",
        hasSubmitted: true),
  ];
  // List numbers = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    items.sort((a, b) => a.submissionDate.compareTo(b.submissionDate));
    // print(numbers);
    return Scaffold(
        appBar: AppBar(
          title: Text("Assignment"),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            padding: EdgeInsets.only(top: 15),
            children: List.generate(items.length, (index) => items[index])
            // children: [
            //   // print(numbers);
            //   AssignmentItem(
            //       subject: "DSA",
            //       title: "Merge Sort",
            //       submissionTime: "11:59 PM",
            //       submissionDate: "25 May 2021",
            //       hasSubmitted: true),
            //   AssignmentItem(
            //       subject: "DSA",
            //       title: "Merge Sort",
            //       submissionTime: "11:59 PM",
            //       submissionDate: "25 May 2021",
            //       hasSubmitted: true),
            //   AssignmentItem(
            //       subject: "DSA",
            //       title: "Merge Sort",
            //       submissionTime: "11:59 PM",
            //       submissionDate: "25 May 2021",
            //       hasSubmitted: false),
            //   AssignmentItem(
            //       subject: "DSA",
            //       title: "Merge Sort",
            //       submissionTime: "11:59 PM",
            //       submissionDate: "25 May 2021",
            //       hasSubmitted: true),
            //   AssignmentItem(
            //       subject: "DSA",
            //       title: "Merge Sort",
            //       submissionTime: "11:59 PM",
            //       submissionDate: "25 May 2021",
            //       hasSubmitted: false),
            //   AssignmentItem(
            //       subject: "DSA",
            //       title: "Merge Sort",
            //       submissionTime: "11:59 PM",
            //       submissionDate: "25 May 2021",
            //       hasSubmitted: false),
            // ],
          ),
        ));
  }
}
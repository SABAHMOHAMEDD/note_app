import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.deepOrangeAccent.shade100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Flutter tips",
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                "Build your career with tharwat samy",
                style: TextStyle(
                    fontSize: 18, color: Colors.black.withOpacity(0.4)),
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    size: 30,
                    color: Colors.black,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              'May21,2022',
              style:
                  TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.4)),
            ),
          )
        ],
      ),
    );
  }
}

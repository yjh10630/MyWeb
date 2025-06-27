import 'package:flutter/material.dart';

class SaveUrlTutorial extends StatelessWidget {
  const SaveUrlTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('링크 저장 튜토리얼')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            '앱에서 + 버튼을 눌러\n링크를 붙여넣고 저장하세요!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
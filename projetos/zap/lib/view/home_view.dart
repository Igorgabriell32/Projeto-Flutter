import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: Visibility(
                    visible: _controller.text.isEmpty,
                    child: GestureDetector(
                      onTap: () => clearText(),
                      child: const Icon(Icons.close_rounded),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => OpenApp(),
                child: const Text('SEND'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  refresh(value) {
    setState(() {});
  }

  clearText() {
    _controller.clear();
  }

  OpenApp() async {
    launchUrlString('whatsapp://send?phone=55${_controller.text}');
    clearText();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization/translations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Localizations',
      debugShowCheckedModeBanner: false,
      translations: Translation(),
      locale: const Locale('en'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedLang = "en";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: const TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 130,
            ),
            DropdownButton(
                value: _selectedLang,
                items: const [
                  DropdownMenuItem(
                    child: Text('English'),
                    value: "en",
                  ),
                  DropdownMenuItem(
                    child: Text('Tamil'),
                    value: "ta",
                  ),
                  DropdownMenuItem(
                    child: Text('Telugu'),
                    value: "te",
                  ),
                ],
                onChanged: (String? value) {
                  setState(() {
                    _selectedLang = value!;
                  });
                  Get.updateLocale(Locale(_selectedLang));
                })
          ],
        ),
      ),
    );
  }
}

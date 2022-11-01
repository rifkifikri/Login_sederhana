import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyAppsku(),
    );
  }
}

class MyAppsku extends StatefulWidget {
  const MyAppsku({Key? key}) : super(key: key);

  @override
  State<MyAppsku> createState() => _MyAppskuState();
}

class _MyAppskuState extends State<MyAppsku> {
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyApps'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('SELAMAT DATANG',style: TextStyle(
                color: Colors.blue, 
                fontSize: 32, 
                letterSpacing: 4.0, 
                fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: username,
                decoration: InputDecoration(
                  hintText: 'Input Username',
                  label: Text('Username'),
                  border: OutlineInputBorder(borderRadius: new BorderRadius.circular(10)),
                ),
                validator: (value) {
                        if (value!.isEmpty) {
                          return 'Username tidak boleh kosong';
                        }
                        return null;
                      },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Input Password',
                  label: Text('Password'),
                  border: OutlineInputBorder(borderRadius: new BorderRadius.circular(10)),
                ),
                validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password tidak boleh kosong';
                        }
                        return null;
                      },
              ),
            ),
            ElevatedButton(
              onPressed: (){
                if (_formKey.currentState!.validate()) {
                          Text('Halo');
                          }
              }, 
              child: Text('Log In'))
          ],)),
    );
  }
}
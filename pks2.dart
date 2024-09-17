import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
 

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       title: const Padding(
         padding: EdgeInsets.all(8.0),
         child: Center(
           child: Text(
            "Авторизация",
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 40,
            ),
                 ),
         ),
       ),
      ),
      body: Column(
        children: <Widget>[
            const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                width: 250,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: const Color.fromARGB(150, 226, 226, 226),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    hintText: "Логин",
                    hintStyle: const TextStyle(color: Colors.grey)
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                width: 250,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: const Color.fromARGB(150, 226, 226, 226),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    hintText: "Пароль",
                    hintStyle: const TextStyle(color: Colors.grey)
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                width: 150,
                child: const Row(
                  children: [
                    Checkbox(
                      value: false, 
                      onChanged: null,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: VisualDensity.compact,
                    ),
                    Text("Запомнить меня", style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: const WidgetStatePropertyAll(Colors.blueAccent),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                  ),
                  onPressed: null, 
                  child: const Text('Войти', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                width: 250,
                height: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.blueAccent),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: null, 
                  child: const Text('Регистрация', style: TextStyle(color: Colors.blueAccent)),
                ),
              ),
            ),
          ),
        
          const TextButton(onPressed: null, child: Text('Восстановить пароль'))
        ],
      ),
       
      
    );
  }
}

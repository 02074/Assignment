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
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const Login(title: 'Flutter Demo Home Page'),
    );
  }
}

class Login extends StatelessWidget {
  const Login({ Key? key, required String title }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("login"),
        centerTitle: false,
        actions: const [
          Icon(Icons.search)

        ],
      ),
      body: 
       Padding(
        padding: const EdgeInsets.all(8.0),
        
    
        child: ListView(
          
          children: [
            const SizedBox(width: 50,height: 50,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1592388607848-4b1f15d93ff8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=326&q=80"
                ),),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(label: Text("name"))
              

            ),
            TextFormField(
              decoration: InputDecoration(label: Text("location"))

            )],
        ),
      ),
      
      
      
      
      
      
      
    );
  }
}

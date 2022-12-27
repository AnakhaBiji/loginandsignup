import 'package:flutter/material.dart';
import 'package:zudio/Forgotpassword.dart';
import 'package:zudio/Homepage.dart';
import 'package:zudio/signin.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.cyan),
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State {
  @override
  Widget build(BuildContext context) {
    bool showpass =true;
    return Scaffold(
      appBar: AppBar(title: Text("ZUDIO"), centerTitle: true),
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
                child: Text("Login Page",
                    style:
                        TextStyle(fontSize: 25, ))),
            Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                      prefixIcon: Icon(Icons.account_box_sharp),
                      border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                  textInputAction:TextInputAction.next,
                ),
            ),

            Padding(padding: const EdgeInsets.all(20),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(onPressed: (){setState(() {
                      if(showpass){
                        showpass=false;
                      }else{
                        showpass=true;
                      }
                    });
                    },
                      icon: Icon(showpass==true ?Icons.visibility_off : Icons.visibility,),
                    ),
                    labelText: "PASSWORD",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40,bottom: 40),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Forgotpassword()));
                  },
                  child: Text("Forgot Password")),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              }, child: Text("Login")),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signin()));
                },
                child: Text("Not a user? Register here"))
          ]),
    );
  }
}

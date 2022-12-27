import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zudio/main.dart';

class Forgotpassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ForgotState();
}

class _ForgotState extends State {
  @override
  Widget build(BuildContext context) {
    bool showpass =true;

    return Scaffold(
      appBar: AppBar(
        title: Text("ZUDIO"),
      ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
            children: [
        const Center(
        child: Text("Create new password",
            style:
            TextStyle(fontSize: 25, ))
        ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email/ph no",
                      labelText: "Email/ph no",
                      border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                  textInputAction:TextInputAction.next,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter otp send to above email/ph no",
                      labelText: "Enter otp send to above email/ph no",
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
                      labelText: "CONFIRM PASSWORD",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                  textInputAction: TextInputAction.done,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                }, child: Text("SAVE")),
              ),
    ]
        ),
    );
  }
}

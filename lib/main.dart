import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue[800],
                  Colors.blue[600],
                ],
                begin: Alignment.topLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Expanded(
                  flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 36.0, horizontal: 24.0
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 46.0,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Enter to a beautiful World',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Color(0xFFe7edeb),
                              hintText: 'E-mail',
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Color(0xFFe7edeb),
                              hintText: 'Password',
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Forget your password?',
                                style: TextStyle(
                                  color: Colors.blue[800],
                                  decoration: TextDecoration.underline,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: RaisedButton(
                              onPressed: (){

                              },
                              color: Colors.blue[800],
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: RaisedButton(
                              onPressed: (){

                              },
                              color: Colors.blue[800],
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  "Sign in",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

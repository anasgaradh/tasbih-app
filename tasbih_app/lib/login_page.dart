import 'package:flutter/material.dart';
import 'myapp.dart';

class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black45,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //icon_slogan
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Container(
                    child: Image(
                      image: AssetImage(
                          'assets/images/login_page/icon_slogan.png'),
                    ),
                  ),
                )
              ],
            ),
            //icon_slogan end
            //input fields start
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Form(
                    child: Expanded(
                      child: Column(
                        children: [
                          //username input start
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
                            child: Theme(
                                data: ThemeData(
                                  primaryColor: Colors.white.withOpacity(0.8),
                                  primaryColorDark:
                                      Colors.white.withOpacity(0.8),
                                ),
                                child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.8)),
                                    decoration: InputDecoration(
                                        suffixIcon: Icon(
                                          Icons.person,
                                          color: Colors.white.withOpacity(0.8),
                                        ),
                                        fillColor:
                                            Colors.white.withOpacity(0.8),
                                        hintText: 'Username',
                                        hintStyle: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.8)),
                                        //border configuration when text field is selected
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          borderSide: BorderSide(
                                            color:
                                                Colors.white.withOpacity(0.8),
                                          ),
                                        ),
                                        //border configuration when text field isn't selected
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            borderSide: BorderSide(
                                                color: Colors.white
                                                    .withOpacity(0.7)))))),
                          ),
                          //username input  end...
                          //------------------------
                          //password input start
                          Container(
                              margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
                              child: Theme(
                                  data: ThemeData(
                                    primaryColor: Colors.white.withOpacity(0.8),
                                    primaryColorDark:
                                        Colors.white.withOpacity(0.8),
                                  ),
                                  child: TextFormField(
                                      obscureText: true,
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.8)),
                                      decoration: InputDecoration(
                                          suffixIcon: Icon(
                                            Icons.lock,
                                            color:
                                                Colors.white.withOpacity(0.8),
                                          ),
                                          fillColor:
                                              Colors.white.withOpacity(0.8),
                                          hintText: 'Password',
                                          hintStyle: TextStyle(
                                              color: Colors.white
                                                  .withOpacity(0.7)),
                                          //border configuration when text field is selected
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            borderSide: BorderSide(
                                              color:
                                                  Colors.white.withOpacity(0.8),
                                            ),
                                          ),
                                          //border configuration when text field isn't selected
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              borderSide: BorderSide(
                                                  color: Colors.white
                                                      .withOpacity(0.7))))))),
                          //password input  end...
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //input fields end
            //check box and forgot password area start
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                            child: Theme(
                          child: Checkbox(
                            checkColor: Colors.black,
                            activeColor: Colors.white,
                            value: value,
                            onChanged: (value) {
                              setState(() {
                                this.value = value;
                              });
                            },
                          ),
                          data: ThemeData(
                              unselectedWidgetColor:
                                  Colors.white.withOpacity(0.8)),
                        )),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Text(
                            'Remember me',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 13.5),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'forgot password ?',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.8)),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            //check box and forgot password area end
            //login button start
            Builder(builder: (context) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 270,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => home()));
                          },
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(
                            color: Colors.white.withOpacity(0.8),
                          )),
                          child: Text(
                            'Login',
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.8)),
                          ),
                        )),
                  ],
                ),
              );
            }),

            //login button end
            //create account section start
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Text(
                      'not a member?',
                      style: TextStyle(color: Colors.white.withOpacity(0.8)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'create account',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 12),
                        ),
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(
                                color: Colors.white.withOpacity(0.8)))),
                  )
                ],
              ),
            )
            //create account section start
          ],
        ),
      ),
    ));
  }
}

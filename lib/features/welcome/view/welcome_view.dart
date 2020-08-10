import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../view_models/welcome_viewmodel.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WelcomeViewModel>.reactive(
        builder: (context, model, child) {
          return Scaffold(
            body: Container(
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text('Welcome'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            onPressed: () {
                              model.moveToLogin();
                            },
                            child: Text('Login'),
                          ),
                        ),
                        Expanded(
                          child: RaisedButton(
                            onPressed: () {
                              model.moveToSignup();
                            },
                            child: Text('Signup'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        viewModelBuilder: () => WelcomeViewModel());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_dm_di/app/presentation/models/user_model.dart';

class HomeView extends StatefulWidget {
  final UserModel userModel;
  const HomeView({
    @required this.userModel,
    Key key,
  }) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              height: 24.0,
            ),
            Text(
              widget.userModel.name,
              style: const TextStyle(fontSize: 55.0),
            ),
            Text(
              widget.userModel.id,
              style: const TextStyle(fontSize: 55.0),
            ),
            Text(
              widget.userModel.email,
              style: const TextStyle(fontSize: 55.0),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 16.0),
            //   child: Material(
            //     color: Colors.lightBlueAccent,
            //     borderRadius: const BorderRadius.all(Radius.circular(30.0)),
            //     elevation: 5.0,
            //     child: MaterialButton(
            //       onPressed: () {},
            //       minWidth: 200.0,
            //       height: 42.0,
            //       child: const Text(
            //         'Log In',
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

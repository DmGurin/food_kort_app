import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_kort_app/source/images.dart';
import 'package:food_kort_app/source/svg.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({
    Key? key,
    required this.value,
    required this.hintTextName,
    required this.hintTextLog,
  }) : super(key: key);
  final String value;
  final String hintTextName;
  final String hintTextLog;

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  final TextEditingController _controllerName = TextEditingController(text: "");
  final TextEditingController _controllerPass = TextEditingController(text: "");
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  void initState() {
    _controllerName.text = widget.value;
    _controllerPass.text = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                  right: 0,
                  left: 0,
                  child: Image.asset(
                    AppImages.ellipse,
                    fit: BoxFit.cover,
                  )),
              Center(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                  height: 500,
                  width: MediaQuery.of(context).size.width - 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 2,
                        spreadRadius: 2,
                        offset: Offset(1, 3),
                      ),
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 0,
                        spreadRadius: 0,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 50,
                            width: 250,
                            padding: const EdgeInsets.only(right: 40),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                              color: Colors.green,
                            ),
                            child: const Align(
                                alignment: Alignment.centerRight,
                                child: Text('Sign UP')),
                          ),
                          Container(
                            height: 50,
                            width: 140,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                              color: Colors.pink,
                            ),
                            child: const Center(child: Text('Log In')),
                          ),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 250,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            color: Colors.red,
                          ),
                          child: const Align(
                              alignment: Alignment.centerRight,
                              child: Center(child: Text('Log In'))),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          controller: _controllerName,
                          decoration: InputDecoration(
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            //fillColor: Colors.grey,
                            hintText: widget.hintTextName,
                          ),
                          onChanged: (text) {},
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          obscureText: _obscureText,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          controller: _controllerPass,
                          decoration: InputDecoration(
                            //counterStyle: TextStyle(color: Colors.black),
                            //hintStyle: TextStyle(color: Colors.black),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            //fillColor: Colors.grey,
                            hintText: widget.hintTextLog,
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(13),
                              child: IconButton(
                                onPressed: _toggle,
                                icon: SvgPicture.asset(
                                    _obscureText ? AppSvg.eyeClose : AppSvg.eye),
                              ),
                            ),
                          ),
                          onChanged: (text) {},
                        ),
                      ),
                      const Spacer(),
                      const Text('or'),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppSvg.google),
                          const SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset(AppSvg.facebook),
                          const SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset(AppSvg.google),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    AppImages.glass,
                    fit: BoxFit.cover,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

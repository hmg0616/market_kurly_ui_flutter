import 'package:flutter/material.dart';

import '../../constants.dart';
import '../components/default_button.dart';
import 'components/form_error.dart';

class KurlySignForm extends StatefulWidget {
  @override
  _KurlySignFormState createState() => _KurlySignFormState();
}

class _KurlySignFormState extends State<KurlySignForm> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // GlobalKey를 통해 Form 태그 안에 있는 모든 요소의 값을 한번에 관리 가능.
  final List<String> errors = [];
  String? id;
  String? password;
  String kIdNull = "아이디를 입력해주세요";
  String kPasswordNull = "비밀번호를 입력해주세요";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            _buildIdField(),
            SizedBox(height: 12),
            _buildPasswordField(),
            SizedBox(height: 20),
            DefaultButton(
              text: "로그인",
              press: () {
                if(_formKey.currentState!.validate() && errors.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('유효성 검사 확인'),
                    )
                  );
                }
              },
            ),
            SizedBox(height: 10),
            FormError(errors: errors)
          ],
        ),
      ),
    );
  }

  OutlineInputBorder outLineInputBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
        width: 1
      )
    );
  }

  TextFormField _buildIdField() {
    return TextFormField(
      onSaved: (newValue) => id = newValue,
      onChanged: (value) {
        if(value.isNotEmpty & errors.contains(kIdNull)) {
          setState(() {
            errors.remove(kIdNull);
          });
        }
      },
      validator: (value) {
        if(value!.isEmpty & !errors.contains(kIdNull)) {
          setState(() {
            errors.add(kIdNull);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        border: outLineInputBorder(kTextColor),
        focusedBorder: outLineInputBorder(kPrimaryColor),
        errorBorder: outLineInputBorder(kPrimaryColor),
        disabledBorder: InputBorder.none,
        contentPadding: EdgeInsets.only(left: 16, top: 15, bottom: 15),
        filled: true,
        fillColor: Colors.white,
        hintStyle: TextStyle(color: Colors.grey[400], fontSize: 18),
        hintText: kIdNull,
      ),
    );
  }


  TextFormField _buildPasswordField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if(value.isNotEmpty & errors.contains(kPasswordNull)) {
          setState(() {
            errors.remove(kPasswordNull);
          });
        }
      },
      validator: (value) {
        if(value!.isEmpty & !errors.contains(kPasswordNull)) {
          setState(() {
            errors.add(kPasswordNull);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        border: outLineInputBorder(kTextColor),
        focusedBorder: outLineInputBorder(kPrimaryColor),
        errorBorder: outLineInputBorder(kPrimaryColor),
        disabledBorder: InputBorder.none,
        contentPadding: EdgeInsets.only(left: 16, top: 15, bottom: 15),
        filled: true,
        fillColor: Colors.white,
        hintStyle: TextStyle(color: Colors.grey[400], fontSize: 18),
        hintText: kPasswordNull,
      ),
    );
  }
}

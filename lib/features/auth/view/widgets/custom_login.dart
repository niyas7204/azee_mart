import 'package:anm_mart/common/widgets/global_texts.dart';
import 'package:anm_mart/common/widgets/spaces.dart';
import 'package:anm_mart/features/auth/components/login_box.dart';
import 'package:anm_mart/features/auth/view/widgets/form_field.dart';
import 'package:flutter/material.dart';

class CustomLogin extends StatelessWidget {
  const CustomLogin({
    super.key,
    required this.formKey,
    required this.labels,
    required this.controllers,
  });

  final GlobalKey<FormState> formKey;
  final List<String> labels;
  final List<TextEditingController> controllers;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(150, 96, 125, 139),
          borderRadius: BorderRadius.circular(27)),
      child: Stack(
        children: [
          CustomPaint(
            painter: LoginPainter(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GlobalTexts.header1('Log In'),
                        GestureDetector(
                            onTap: () {},
                            child: SizedBox(
                              child: GlobalTexts.header1('Sign Up'),
                            )),
                      ],
                    ),
                  ),
                  Center(
                    child: Form(
                        key: formKey,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: labels.length,
                            itemBuilder: (context, index) =>
                                CustomAuthTextField(
                                    label: labels[index],
                                    controller: controllers[index],
                                    formKey: formKey))),
                  ),
                  SpaceSized.space10H,
                  ElevatedButton(
                      onPressed: () {}, child: GlobalTexts.labelText('Log In')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

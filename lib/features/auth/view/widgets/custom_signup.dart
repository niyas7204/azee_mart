import 'dart:developer';

import 'package:anm_mart/common/widgets/global_texts.dart';
import 'package:anm_mart/common/widgets/spaces.dart';
import 'package:anm_mart/constants/url.dart';
import 'package:anm_mart/features/auth/components/signup_box.dart';
import 'package:anm_mart/features/auth/data/implimentation/data_source.dart';
import 'package:anm_mart/features/auth/view/widgets/form_field.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CustomSignUp extends StatelessWidget {
  const CustomSignUp({
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
            painter: SignUpPainter(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {}, child: GlobalTexts.header1('Log In')),
                        GlobalTexts.header1('Sign Up')
                      ],
                    ),
                  ),
                  SpaceSized.space20H,
                  Column(
                    children: [
                      Form(
                          key: formKey,
                          child: ListView.builder(
                              physics: const ScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: labels.length,
                              itemBuilder: (context, index) =>
                                  CustomAuthTextField(
                                      label: labels[index],
                                      controller: controllers[index],
                                      formKey: formKey))),
                      SpaceSized.space10H,
                      ElevatedButton(
                          onPressed: () {
                            AuthImplimentation().signUp(
                                userName: controllers[0].text,
                                email: controllers[1].text,
                                password: controllers[2].text);
                          },
                          child: GlobalTexts.labelText('Sign Up')),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

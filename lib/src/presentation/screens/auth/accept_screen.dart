import 'package:accounting_app_mobile/consts.dart';
import 'package:accounting_app_mobile/src/presentation/widgets/button.dart';
import 'package:flutter/material.dart';

class AcceptScreen extends StatelessWidget {
  const AcceptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Stack(
            alignment: Alignment.topRight,
            children: [
              Image.asset('assets/images/PNG/Vector-1.png'),
              Image.asset('assets/images/PNG/Vector-2.png'),
            ],
          ),
          Image.asset('assets/images/PNG/whale.png'),
          const Center(
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                ),
                children: [
                  TextSpan(
                    text: 'Account ',
                    style: TextStyle(
                      color: CustomColors.kDarkBlue,
                    ),
                  ),
                  TextSpan(
                    text: 'Created',
                    style: TextStyle(
                      color: CustomColors.kPrimary,
                    ),
                  ),
                  TextSpan(
                    text: '!',
                    style: TextStyle(
                      color: CustomColors.kBlue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 21),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'Dear user your account has been created successfully. Continue to start using app',
                style: TextStyle(
                  height: 1.6,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: CustomColors.kDarkBlue,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Button(
              onPress: () {},
              text: 'Continue',
            ),
          ),
        ],
      ),
    );
  }
}

// (
//         icon:
//         titleList: const [
//           TextSpan(
//             text: 'Account ',
//             style: TextStyle(
//               color: CustomColors.kDarkBlue,
//             ),
//           ),
//           TextSpan(
//             text: 'Created',
//             style: TextStyle(
//               color: CustomColors.kPrimary,
//             ),
//           ),
//           TextSpan(
//             text: '!',
//             style: TextStyle(
//               color: CustomColors.kBlue,
//             ),
//           ),
//         ],
//         subTitle:
//             'Dear user your account has been created successfully. Continue to start using app',
//         children: [
//           const SizedBox(
//             height: 30,
//           ),
//           Button(
//             text: 'Continue',
//             onPress: () {},
//           ),
//         ]);

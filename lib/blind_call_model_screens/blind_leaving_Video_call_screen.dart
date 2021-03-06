import 'package:flutter/material.dart';

import '../socket.io_cubit/blind_side_cubit.dart';

class BlindLeavingVideoCallScreen extends StatelessWidget {
  const BlindLeavingVideoCallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlindCubitSide.get(context).
    speak("double tap to leave video call");
    return GestureDetector(
      onDoubleTap: (){
        BlindCubitSide.get(context).speak('Leaving Video Call');
        BlindCubitSide.get(context).destroyMe();
        Navigator.pop(context);
      },
      onTap: (){
        BlindCubitSide.get(context).
        speak("Want to leave video call");
      },
      child:
        Container(
          color: Colors.blueGrey.shade300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/exit.png'),
              const SizedBox(
                height:30.0,
              ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
                     "Your Are Leaving Video Call",
                     maxLines: 2,
                     overflow: TextOverflow.ellipsis,
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 40.0,
                       fontWeight: FontWeight.bold,
                     ),
                  ),
          ),
            ],
          ),
        ),
      // Container(
      //
      //   decoration: const BoxDecoration(
      //
      //       image: DecorationImage(
      //           fit: BoxFit. fill,
      //           image: AssetImage(
      //             'assets/images/exit.png',
      //           ))),
      //   child:  const Center(
      //     child: Text(
      //       "Your Are Leaving Video Call",
      //       maxLines: 2,
      //       overflow: TextOverflow.ellipsis,
      //       style: TextStyle(
      //         color: Colors.white,
      //         fontSize: 40.0,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //
      //   ),
      // ),

    );
  }
}

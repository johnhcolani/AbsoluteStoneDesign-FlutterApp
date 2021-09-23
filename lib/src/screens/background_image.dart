
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BackgroundImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds)=> const RadialGradient(
center: Alignment.topCenter, radius: 1.0,
        colors: [Colors.yellowAccent, Colors.blueAccent],
      ).createShader(bounds),
      blendMode: BlendMode.multiply,
      child: Stack(
        children: [

          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/background.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.blue,
                      BlendMode.dstATop),

                )
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body:Image.asset('images/Slab.png'),

          ),

        ],
      ),
    );
  }
}



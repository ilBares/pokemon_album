import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  String _url;

  CustomCard(
    this._url,
    {Key? key}
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // per settare le dimensioni del Container
      constraints: const BoxConstraints.expand(
        width: 350,
        height: 275,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            image: NetworkImage(_url),
            fit: BoxFit.cover,
          ),
          // metto i bordi al container
          borderRadius: const BorderRadius.all(Radius.circular(20.0))
      ),
    );
  }
}

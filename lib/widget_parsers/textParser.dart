
import 'package:flutter/material.dart';
import 'package:jsontesting/attribute_parsers/text_style_parser.dart';

import '../parser/parser.dart';

class TextParser with TextStyleParser {
  TextParser._();

  static getText(content) {
    return Text(
      content['text'],
      style: content.containsKey('style')
          ? TextStyleParser.getTextStyle(content['style'])
          : TextStyle(fontSize: 16, color: Colors.black),
    );
  }
}

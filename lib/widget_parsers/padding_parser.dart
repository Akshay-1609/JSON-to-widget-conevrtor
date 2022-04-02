
import 'package:flutter/material.dart';
import 'package:jsontesting/attribute_parsers/padding_parser.dart';
import '../parser/parser.dart';

class PaddingParser {
  PaddingParser._();
  static getPadding(content) {
    return Padding(
      padding: content.containsKey('padding')
          ? PaddingMethodParser.getPadding(content['padding'].toString())
          : null,
      child: content.containsKey('child') ? Parser.parse(content['child'], alreadyParsed: true) : null,
    );
  }
}

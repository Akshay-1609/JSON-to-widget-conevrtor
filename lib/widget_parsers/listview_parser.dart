
import 'package:flutter/material.dart';
import 'package:jsontesting/attribute_parsers/children_parser.dart';

class ListViewParser{
  ListViewParser._();

  static getListView(Map<String, dynamic> content) {
    return ListView(
      children: ChildrenParser.getChildren(content['children']),
      scrollDirection: (content["scrollDirection"]??"Axis.vertical").contains("vertical") ? Axis.vertical : Axis.horizontal,
      reverse: (content["reverse"] != null && content["reverse"].toString().contains("true")),
    );
  }
}

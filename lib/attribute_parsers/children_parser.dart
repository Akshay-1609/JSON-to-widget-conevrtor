import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jsontesting/parser/parser.dart';

class ChildrenParser{
  static getChildren(children) {
    if(children == null) return [Container()];
    List<Widget> childrenList = List.empty(growable: true);
    children.forEach((element){
      Widget widget = Parser.parse(element, alreadyParsed: true);
      childrenList.add(widget);
    });
    return childrenList;
  }
}
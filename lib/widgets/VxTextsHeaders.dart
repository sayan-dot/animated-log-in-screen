import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

headerTitle(String title) => VxTextBuilder(title).bold.size(50).make();
headerSubTitle(String title) =>
    VxTextBuilder(title).size(23).color(Colors.grey).bold.make();

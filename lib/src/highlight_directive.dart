import 'dart:html';
import 'package:angular/angular.dart';

@Directive(
  selector: '[myHighlight]',
)

class HighlightDirective {
  HighlightDirective(Element el)
  {
    String color = "yellow";
    el.style.backgroundColor = color;
  }
}
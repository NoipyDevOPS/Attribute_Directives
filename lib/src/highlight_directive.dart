import 'dart:html';
import 'package:angular/angular.dart';

@Directive(
  selector: '[myHighlight]',
)

class HighlightDirective {
  final Element el;

  HighlightDirective(this.el);

  @Input()
  String defaultColor;

  @Input('myHighlight')
  String highlightColor;

  @HostListener('mouseenter')
  void onMouseEnter() {
    highlight(highlightColor ?? defaultColor ?? 'red');
  }

  @HostListener('mouseleave')
  void onMouseLeave() {
    highlight();
  }

  void highlight ([String color])
  {
    el.style.backgroundColor = color;
  }
}
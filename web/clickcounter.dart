import 'package:polymer/polymer.dart';
import 'dart:html';
/**
 * A Polymer click counter element.
 */
@CustomTag('click-counter')
class ClickCounter extends PolymerElement {
  @published int count = 0;
  Element _a=null;
  Element _b=null;

  ClickCounter.created() : super.created() {
  }

   Element get _infoA {
    if (_a==null) {
      _a = new Element.tag('info-a');
    }
    return _a;
  }
  
   Element get _infoB {
     if (_b==null) {
       _b = new Element.tag('info-b');
     }
     return _b;
   }
   
  void increment() {
    Element v=null;
    Element c = shadowRoot.querySelector('#infoPad');
    count++;
    v = (count%2)==0 ? _infoA :_infoB;
    
    if (c.children.isNotEmpty)
      c.children[0]=v;
    else
      c.children.add(v);
  }
}


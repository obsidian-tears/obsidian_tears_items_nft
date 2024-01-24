import Nat8 "mo:base/Nat8";
import Text "mo:base/Text";
import ExtCore "lib/ext/Core";

import Weapons "elements/weapons";
import Armor "elements/armor";
import Items "elements/items";
import Backgrounds "elements/backgrounds";
import Modifiers "elements/modifiers";

module {
  type TokenIndex = ExtCore.TokenIndex;
  public func make(data : [Nat8], height : Text, width : Text) : Text {
    var svg : Text = "<?xml version=\"1.0\" encoding=\"utf-8\"?><svg style=\"height:" #height # "px;width:" #width # "px;\" version=\"1.1\" id=\"generated\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\" viewBox=\"0 0 " #width # " " #height # "\" xml:space=\"preserve\">";
    svg #= "<g id=\"background\"><image style=\"height:" #height # "px;width:" #width # "px;\" href=\"" #Backgrounds.elements[Nat8.toNat(data[0])] # "\" /></g>";
    if (data[1] == 0) {
      svg #= "<g id=\"item\"><image style=\"height:" #height # "px;width:" #width # "px;\" href=\"" #Weapons.elements[Nat8.toNat(data[2])] # "\" /></g>";
    };
    if (data[1] == 1) {
      svg #= "<g id=\"item\"><image style=\"height:" #height # "px;width:" #width # "px;\" href=\"" #Armor.elements[Nat8.toNat(data[2])] # "\" /></g>";
    };
    if (data[1] == 2) {
      svg #= "<g id=\"item\"><image style=\"height:" #height # "px;width:" #width # "px;\" href=\"" #Items.elements[Nat8.toNat(data[2])] # "\" /></g>";
    };
    svg #= "<g id=\"modifier\"><image style=\"height:" #height # "px;width:" #width # "px;\" href=\"" #Modifiers.elements[Nat8.toNat(data[3])] # "\" /></g>";
    svg #= "</svg>";
    return svg;
  };
};

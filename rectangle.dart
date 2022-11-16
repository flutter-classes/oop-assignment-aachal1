void main() {
  rectangle Rect = rectangle(length: 5, breadth: 8);
  Rect.areaofRect(Rect.length, Rect.breadth);
  Rect.perimeterofRect(Rect.length, Rect.breadth);
}

class rectangle {
  int length;
  int breadth;

  rectangle({required this.length, required this.breadth});

  areaofRect(int length, int breadth) {
    num area;
    area = length * breadth;
    print('Total area of Rectangle is $area');
  }

  perimeterofRect(int length, int breadth) {
    num perimeter;
    perimeter = 2 * (length * breadth);
    print('Total perimeter of Rectangle is $perimeter');
  }
}

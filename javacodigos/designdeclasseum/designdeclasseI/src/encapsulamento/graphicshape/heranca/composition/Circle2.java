package encapsulamento.graphicshape.heranca.composition;


class Point {
private int xPos;
private int yPos;
public Point(int x, int y) {
xPos = x;
yPos = y;
}
public String toString() {
return "(" + xPos + "," + yPos + ")";
}
}
// Circle.java
public class Circle2 {
private Point center; // Circle "contains" a Point object
private int radius;

public Circle2(int x, int y, int r) {
center = new Point(x, y);
radius = r;
}
public String toString() {
return "center = " + center + " and radius = " + radius;
}
public static void main(String []s) {
System.out.println(new Circle2(10, 10, 20));
}
// other members (constructors, area method, etc) are elided ...
}
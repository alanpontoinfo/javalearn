package com.alpi.classes.aninhadas;

public class StatusReporterAnonimo {


static Shape.Color getDescriptiveColor(final Shape.Color color) {
	// observe o uso de classes internas an�nimas aqui
	// - especificamente, n�o h� nome para a classe e constru�mos
	// e use a classe "on the fly" na declara��o de retorno!

return new Shape.Color() {
public String toString() {
return "You selected a color with RGB values" + color;
}
};
}
public static void main(String []args) {
Shape.Color descriptiveColor =
StatusReporterAnonimo.getDescriptiveColor(new Shape.Color(0, 0, 0));
System.out.println(descriptiveColor);
}
}
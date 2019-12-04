package encapsulamento.graphicshape.polimorfismo;

import java.awt.List;
interface Sorting {
List sort(List list);
}
class MergeSort implements Sorting {
public List sort(List list) {
// sort implementation
	list.add("Carla");
	list.add("Anderson");
	list.add("Lai");
return list;
}
}
class QuickSort implements Sorting {
public List sort(List list) {
// sort implementation
	list.add("Malan");
	list.add("alana");
	list.add("alex");
return list;
}
}
class DynamicDataSet {
Sorting sorting;
public DynamicDataSet() {
sorting = new MergeSort();
}
// DynamicDataSet implementation
}
class SnapshotDataSet {
Sorting sorting;
public SnapshotDataSet() {
sorting = new QuickSort();
}
}
// SnapshotDataSet implementation

/* Use heran�a quando uma subclasse especifica uma classe base, para que voc� possa explorar o polimorfismo din�mico.
em outros casos, use a composi��o para obter um c�digo que seja f�cil de alterar e acoplado de maneira pouco flex�vel.
 em resumo, favorece a composi��o sobre a heran�a */
package com.alp.excessao.assertion;

import java.util.NoSuchElementException;
import java.util.Scanner;

class ScanInt5 {
public static void main(String [] args) {
String integerStr = "";
System.out.println("The string to scan integer from it is: " + integerStr);
Scanner consoleScanner = new Scanner(integerStr);
try {
System.out.println("The integer value scanned from string is: " +
consoleScanner.nextInt());
} catch(NoSuchElementException | IllegalStateException multie) {
System.out.println("Error: An error occured while attempting to scan the integer");
}
}
}
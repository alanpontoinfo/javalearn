package com.alpi.lambda;

import java.util.List;
import java.util.ArrayList;
public class RemoveIfMethod {
public static void main(String []args) {
List<String> greeting = new ArrayList<>();
greeting.add("hello");
greeting.add("world");
greeting.removeIf(str -> !str.startsWith("h"));
//greeting.removeIf(((Predicate<String>) str -> str.startsWith("h")).negate());
greeting.forEach(System.out::println);
}
}
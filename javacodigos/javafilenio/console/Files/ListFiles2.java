import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.io.IOException;
import java.util.stream.Stream;
class ListFiles2 {
public static void main(String []args) throws IOException {
try(Stream<Path> entries = Files.list(Paths.get("."))) {
entries.forEach(System.out::println);
}
}
}
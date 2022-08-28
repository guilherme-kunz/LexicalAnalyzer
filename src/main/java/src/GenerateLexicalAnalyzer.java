package src;

import java.nio.file.Paths;

public class GenerateLexicalAnalyzer {

    public static void main(String[] args) {

        String rootPath = Paths.get("").toAbsolutePath().toString();
        String subPath = "/src/main/java/src/";

        String[] file = {rootPath + subPath + "src/scanner.lex"};

        jflex.Main.main(file);

    }

}

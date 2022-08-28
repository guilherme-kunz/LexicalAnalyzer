package src;

import java.io.IOException;
import java.io.StringReader;

public class LexicalAnalyzerTest {

    public static void main(String[] args) throws IOException {

        String expr = "if (i=0; i<=5; i++)"
                + "else 2 + 3+a*5/4-16 end";

        LexicalAnalyzer lexical = new LexicalAnalyzer(new StringReader(expr));
        lexical.yylex();

    }

}

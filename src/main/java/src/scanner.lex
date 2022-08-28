package src;

%%

%{
	private void print(String description, String lexeme){

		System.out.println(lexeme + "-" + description);
	}
%}

%class LexicalAnalyzer
%type void

WHITE = [\n||\t|\r]
ID = [_|a-z|A-Z][a-z|A-Z|0-9_]*
SUM = "+"
SUBTRACT = "-"
MULTI = "*"
DIVIDE = "/"
INT = 0|[1-9][0-9]*

%%

"if"			{print("Reserved word ", yytext());}
"then"			{print("Reserved word ", yytext());}
{WHITE}		{print("Blank space ", yytext());}
{ID}			{print("Identifier ", yytext());}
{SUM}			{print("Sum operator ", yytext());}
{SUBTRACT}		{print("Subtract operator ", yytext());}
{MULTI}			{print("Multiplication operator", yytext());}
{DIVIDE}			{print("Division operator", yytext());}
{INT}		{print("Integer ", yytext());}

. { throw new RuntimeException("Invalid character " + yytext()); }
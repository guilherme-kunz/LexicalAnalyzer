package src;

%%

%{
	private void print(String description, String lexeme){

		System.out.println(lexeme + "-" + description);
	}
%}

%class LexicalAnalyzer
%type void

INT = 0|[1-9][0-9]*
FLOAT = 0.0|[1.0-9.0][0.0-9.0]*
CHAR = [a-z|A-Z][a-z|A-Z]*
BOOLT = "verdadeiro"
BOOLF = "falso"
TEXT = [a-z|A-Z][a-z|A-Z]*
ASSIGMENT = ":="
SUM = "+"
SUBTRACT = "-"
MULTI = "*"
DIVIDE = "/"
PERCENT = "%"
CIRCUMFLEX = "^"
EQUAL = "="
LARGER = ">"
SMALLER = "<"
GREATEREQUAL = ">="
LESSEREQUAL = "<="
DIAMOND = "<>"
ID = [_|a-z|A-Z][a-z|A-Z|0-9_]*
OPENPARENTHESES = "("
CLOSEPARENTHESES = ")"
OPENSQUAREBRACKETS = "["
CLOSESQUAREBRACKETS = "]"
TWOPOINTS = ":"
SHARP= "#"
POINT= "."
SEMICOLON= ";"
DENIAL= "!"

%%

{INT}		{print("tipo de dado ", yytext());}
{FLOAT}		{print("tipo de dado ", yytext());}
{CHAR}		{print("tipo de dado ", yytext());}
{BOOLF}		{print("tipo de dado ", yytext());}
{BOOLT}		{print("tipo de dado ", yytext());}
{TEXT}		{print("tipo de dado ", yytext());}
{ASSIGMENT}		{print("atribuição ", yytext());}
{SUM}		{print("op. Aritm. (preced. 4) ", yytext());}
{SUBTRACT}		{print("op. Aritm. (preced. 4) ", yytext());}
{MULTI}		{print("op. Aritm. (preced. 3) ", yytext());}
{DIVIDE}		{print("op. Aritm. (preced. 3) ", yytext());}
{PERCENT}		{print("op. Aritm. (preced. 2) ", yytext());}
{CIRCUMFLEX}		{print("op. Aritm. (preced. 1) ", yytext());}
{EQUAL}		{print("operadores relacionais ", yytext());}
{LARGER}		{print("operadores relacionais ", yytext());}
{SMALLER}		{print("operadores relacionais ", yytext());}
{GREATEREQUAL}		{print("operadores relacionais ", yytext());}
{LESSEREQUAL}		{print("operadores relacionais ", yytext());}
{DIAMOND}		{print("operadores relacionais ", yytext());}
"not"			{print("operadores lógicos ", yytext());}
"and"			{print("operadores lógicos ", yytext());}
"or"			{print("operadores lógicos ", yytext());}
"xor"			{print("operadores lógicos ", yytext());}
"nor"			{print("operadores lógicos ", yytext());}
"nand"			{print("operadores lógicos ", yytext());}
"if"			{print("desvio condicional ", yytext());}
"else"			{print("desvio condicional ", yytext());}
"elseif"			{print("desvio condicional ", yytext());}
"for"			{print("repetição com controle de iteração ", yytext());}
"to"			{print("repetição com controle de iteração ", yytext());}
"do"			{print("repetição com controle de iteração ", yytext());}
"step"			{print("repetição com controle de iteração ", yytext());}
"begin"			{print("definição de inicio de bloco ", yytext());}
"end"			{print("definição de fim de bloco ", yytext());}
{ID}		{print("Identificador ", yytext());}
"while"			{print("repetição (teste no inicio) ", yytext());}
"case"			{print("estrutura condicional aninhada ", yytext());}
"of"			{print("estrutura condicional aninhada ", yytext());}
{OPENPARENTHESES}		{print("p1 ", yytext());}
{CLOSEPARENTHESES}		{print("f1 ", yytext());}
{OPENSQUAREBRACKETS}		{print("p2 ", yytext());}
{CLOSESQUAREBRACKETS}		{print("f2 ", yytext());}
"ratix"			{print("outros tokens ", yytext());}
"logarithm"			{print("outros tokens ", yytext());}
"parse"			{print("outros tokens ", yytext());}
"shift"			{print("outros tokens ", yytext());}
"var"			{print("outros tokens ", yytext());}
"const"			{print("outros tokens ", yytext());}
{TWOPOINTS}		{print("f2 ", yytext());}
"main"			{print("outros tokens ", yytext());}
"return"			{print("outros tokens ", yytext());}
"pause"			{print("outros tokens ", yytext());}
"sleep"			{print("outros tokens ", yytext());}
"include"			{print("outros tokens ", yytext());}
"define"			{print("outros tokens ", yytext());}
"endline"			{print("outros tokens ", yytext());}
{SHARP}		{print("outros tokens ", yytext());}
"break"			{print("outros tokens ", yytext());}
"continue"			{print("outros tokens ", yytext());}
"random"			{print("outros tokens ", yytext());}
"file"			{print("outros tokens ", yytext());}
"true"			{print("outros tokens ", yytext());}
"false"			{print("outros tokens ", yytext());}
{POINT}		{print("outros tokens ", yytext());}
{SEMICOLON}		{print("outros tokens ", yytext());}
{DENIAL}		{print("token de negação ", yytext());}

. { throw new RuntimeException("Invalid character " + yytext()); }
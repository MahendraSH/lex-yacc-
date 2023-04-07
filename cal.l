%{
 #include"y.tab.h"
%}
%%
[0-9]+ {yylval = atoi(yytext);
        return INT ;}
"+" return plus ;
"-" return minus ;
"*" return mul ;
"/" return divd;
"%" return rem; 
[\t]  return yytext[0];
[\n] return NL;

%%
int yywrap(){}

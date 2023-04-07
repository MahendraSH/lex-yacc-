# lex and yacc program 

## how to run them 
* ###  for only lex pro

```
flex f.l  
gcc lex.yy.c 
./a.out 

```

* ### for lex and yacc pro 
```
bison -y -d f.y
flex f.l
gcc lex.yy.c y.tab.c
./ a.out or a.exe
```
---------------
###### some lex and yacc examples 
for lex 

```
%{
  #include<stdio.h>
%}
%%
rules regular experssion
%%
int yywrap()
{

}
 int main()
 {
    yylex();
 }

 ```
 -------------------------------
 for yacc and lex

 ```
 %{
  #include"y.tab.h"
%}
%%
rules regular experssion

regular experssion { return token_class_name/token_name;}// for char
eg :

[aA] {return A;}
[bB] {return B;}
\n {return NL;}

for int

[0-9]+ {yylval = atoi(yytext);
        return INT ;}
        hear yytext take input string
        atoi() converts the string to int
        yylval gives the val to token 

to ignore 
 eg:
 [\t] {return yytext[0];}


%%
int yywrap()
{
   
}
```
-----------------------------

```
%{
  #include<stdio.h>
%}
%token INT plus minus mul divd rem NL;
%left plus minus;
%left  mul divd rem;
// tokens 

%%
s : E NL{ printf("result = %d \n",$$); } ;
E : E plus E { $$ = $1+$3;}
  |  E minus E {$$ = $1-$3;}
  | E mul E {$$ = $1*$3;}
  | E divd E {$$ = $1/$3;}
  | E rem E {$$ = $1%$3;}
  | INT {$$=$1;  }
  ;
%%
 // grmmer


int yyerror(char *msg)
{
    printf("invalid expression\n");
}// to send invalid messages
// or errors

int main()
{
    printf ("Enter the expression\n");
    yyparse();// to take input
} 
```


 
 

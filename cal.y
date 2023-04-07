%{
  #include<stdio.h>
%}
%token INT plus minus mul divd rem NL;
%left plus minus;
%left  mul divd rem;

%%
start : E NL{ printf("result = %d \n",$$); } ;
E : E plus E { $$ = $1+$3;}
  |  E minus E {$$ = $1-$3;}
  | E mul E {$$ = $1*$3;}
  | E divd E {$$ = $1/$3;}
  | E rem E {$$ = $1%$3;}
  | INT {$$=$1;  }
  ;
%%
int main()
{
    printf ("Enter the expression\n");
    yyparse();
}
int yyerror(char *msg)
{
    printf("invalid expression\n");
}
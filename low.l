%{
#include<stdio.h>
%}
%% 
[a-z] {printf("low ");}
%%
int yywrap(){
return 1;
}
void main()
{
yylex();
}
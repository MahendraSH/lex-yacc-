%{
#include<stdio.h>
int count_vol=0;
int count_con=0;
%} 
%%
[/t,/n] ;
[aeiouAEIOU] {count_vol++;}
[a-z,A-Z] {count_con++;}
%%
int yywrap()
{
  // printf("no match");j
  return 1; 
}
int main()
{
printf("Enter the string :");
 yylex();
printf("The no of vovels =%d",count_vol);
printf("The no of consonets=%d",count_con);
 return 0;
}


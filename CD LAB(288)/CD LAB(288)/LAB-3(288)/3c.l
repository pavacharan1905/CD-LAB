%{
#include<stdio.h>
#include<string.h>
int lc=0;
%}
%%
\n lc++;
%%
int yywrap()
{
return 1;
}
int main()
{
  yylex();
  printf("Number of lines are %d\n",lc);
  return 0;
}
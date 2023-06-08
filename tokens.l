%{
#include <stdio.h>

int reservadasCuenta = 0;
int escapeCuenta = 0;
int otrosCuenta = 0;
%}
%option noyywrap
%%
auto        { reservadasCuenta++; printf("Palabra reservada: auto\n"); }
break       { reservadasCuenta++; printf("Palabra reservada: break\n"); }
case        { reservadasCuenta++; printf("Palabra reservada: case\n"); }
char        { reservadasCuenta++; printf("Palabra reservada: char\n"); }
const       { reservadasCuenta++; printf("Palabra reservada: const\n"); }
continue    { reservadasCuenta++; printf("Palabra reservada: continue\n"); }
default     { reservadasCuenta++; printf("Palabra reservada: default\n"); }
do          { reservadasCuenta++; printf("Palabra reservada: do\n"); }
double      { reservadasCuenta++; printf("Palabra reservada: double\n"); }
else        { reservadasCuenta++; printf("Palabra reservada: else\n"); }
enum        { reservadasCuenta++; printf("Palabra reservada: enum\n"); }
extern      { reservadasCuenta++; printf("Palabra reservada: extern\n"); }
float       { reservadasCuenta++; printf("Palabra reservada: float\n"); }
for         { reservadasCuenta++; printf("Palabra reservada: for\n"); }
goto        { reservadasCuenta++; printf("Palabra reservada: goto\n"); }
if          { reservadasCuenta++; printf("Palabra reservada: if\n"); }
int         { reservadasCuenta++; printf("Palabra reservada: int\n"); }
long        { reservadasCuenta++; printf("Palabra reservada: long\n"); }
register    { reservadasCuenta++; printf("Palabra reservada: register\n"); }
return      { reservadasCuenta++; printf("Palabra reservada: return\n"); }
short       { reservadasCuenta++; printf("Palabra reservada: short\n"); }
signed      { reservadasCuenta++; printf("Palabra reservada: signed\n"); }
sizeof      { reservadasCuenta++; printf("Palabra reservada: sizeof\n"); }
static      { reservadasCuenta++; printf("Palabra reservada: static\n"); }
struct      { reservadasCuenta++; printf("Palabra reservada: struct\n"); }
switch      { reservadasCuenta++; printf("Palabra reservada: switch\n"); }
typedef     { reservadasCuenta++; printf("Palabra reservada: typedef\n"); }
union       { reservadasCuenta++; printf("Palabra reservada: union\n"); }
unsigned    { reservadasCuenta++; printf("Palabra reservada: unsigned\n"); }
void        { reservadasCuenta++; printf("Palabra reservada: void\n"); }
volatile    { reservadasCuenta++; printf("Palabra reservada: volatile\n"); }
while       { reservadasCuenta++; printf("Palabra reservada: while\n"); }
\t          { otrosCuenta++; printf("Carácter: tabulación\n"); }
\b          { otrosCuenta++; printf("Carácter: retroceso\n"); }
\\\\       { escapeCuenta++; printf("Carácter de escape: \\\\\n"); }
.           { otrosCuenta++; printf("Carácter: %s\n", yytext); }
contador {printf("las palabras contadas son: %d\n",reservadasCuenta);}
%%

int main()
{
    yylex();
    
    printf("Número de palabras reservadas: %d\n", reservadasCuenta);
    printf("Número de caracteres de escape: %d\n", escapeCuenta);
    printf("Número de otros caracteres: %d\n", otrosCuenta);
    
    return 0;
}

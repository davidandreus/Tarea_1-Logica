%{
#include <stdio.h>
#include <stdlib.h>
/*
FILE *fp; // puntero para el archivo de salida
fp = fopen("file.txt", "w+"); // crea el archivo de salida
fprintf(fp, "hola ..asldf a \begindoducment $$"); // inserta texto en el archivo
fprintf(fp, "respuesta"); // inserta texto en el archivo
fprintf(fp, "$$\end{document}"); // inserta texto en el archivo
fclose(fp);

literales 0
(         1
)         2
^         3
v         4
¬         5
->        6
[\]{1}[.][\n$]* {}
[#]{1}[ a-zA-Z0-9]* {}  Si encuentra una línea comentada (que comienze con '#'), la borra
[\]{1}[]* {printf(" ");}


*/
%}

%%
[\]{1}[a-zA-Z0-9]*[}]{1} {}   /*para eliminar todo, excepto lo que está entre $$ */
rightarrow {printf("6");}

%%

int main(){
    yyin = fopen("input.tex", "r");
    yylex();
    return 0;
}

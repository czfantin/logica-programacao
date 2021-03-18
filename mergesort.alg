Algoritmo "Mergesort"
// Disciplina  : Linguagem e Lógica de Programação
// Professor   : Fernando Maransatto
// Descrição   : Desenvolvimento do algoritmo Mergesort
// Autor(a)    : Cristiano Zanguetin Fantin
// Data atual  : 17/03/2021

var
   // Seção de Declarações das variáveis
   vetor_inicial: vetor [1..7] de inteiro
   x,inicial,final:inteiro

inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   vetor_inicial[1]:=22
   escreval(vetor_inicial[1])
   vetor_inicial[2]:=12
   escreval(vetor_inicial[2])
   vetor_inicial[3]:=9
   escreval(vetor_inicial[3])
   vetor_inicial[4]:=42
   escreval(vetor_inicial[4])
   vetor_inicial[5]:=61
   escreval(vetor_inicial[5])
   vetor_inicial[6]:=23
   escreval( vetor_inicial[6])
   vetor_inicial[7]:=13
   escreval(vetor_inicial[7])
   escreval()
   escreval("--------------------------------------")
   escreval()

   inicial:=1
   final:=7


Procedimento Merge_Sort(inicial, final: inteiro )
var
   meio:inteiro
inicio
   se (inicial <  final) entao
      meio:=(inicial + final) div 2
      Merge_Sort (inicial, meio)
      Merge_Sort (meio+1, final)
      Merge (inicial, meio, final)
   fimse
fimprocedimento

//***********************************************************************

procedimento Merge (inicial, meio, final: inteiro )
var
   h,i,j,k:inteiro
   vetor_final: vetor [1..7] de inteiro
inicio

   h:=inicial;
   i:=inicial;
   j:=meio + 1;
   enquanto (h<=meio) e (j<=final) faca

      se vetor_inicial[h] <=    vetor_inicial[j] entao
         vetor_final[i]:=   vetor_inicial[h];
         h:= h + 1;
      senao
         vetor_final[i]:=   vetor_inicial[j];
         j:= j + 1;
      fimse
      i:= i + 1;
   fimenquanto
   se h > meio entao
      Para k de j ate final faca
         vetor_final[i]:=    vetor_inicial[k];
         i:= i + 1;
      fimpara
   senao
      Para k de h ate meio faca
         vetor_final[i]:=   vetor_inicial[k];
         i:= i + 1;
      fimpara
   fimse
   para k de inicial ate final faca
      vetor_inicial[k]:=vetor_final[k];
   fimpara
fimprocedimento


//***********************************************************************

Merge_sort(inicial, final )

para x de 1 ate 7 faca
   escreva (   vetor_inicial[x])
fimpara
fimalgoritmo

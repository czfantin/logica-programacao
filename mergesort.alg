Algoritmo "SA5 – Atividade 2"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Maransatto
// Descrição   : Recursividade Algoritmo de Ordenação - Mergesort
// Autor(a)    : Cristiano Zanguetin Fantin
// Data atual  : 12/03/2021
Var
   // Seção de Declarações das variáveis
   fila: vetor[1..100] de inteiro
   indice,reg_total,qt_loop,loop_total, atual,proximo:inteiro
   operacao, incremento,primeiro,qte_fila,ultimo,qt_fila :inteiro
   fila_vazia:caracter

   //*************************************************************************//

procedimento menu()
inicio

   enquanto operacao <> "6" faca
      escreval()
      escreval("------------MENU-------------")
      escreval("Opção: 1 - Preenchimento Aleatorio")
      escreval("Opção: 2 - Listar")
      escreval("Opção: 3 - Ordem Crescente")
      escreval("Opção: 4 - Ordem decrescente")
      escreval("Opção: 5 - Apagar registro")
      escreval("Opção: 6 - Sair")
      escreval()
      escreval("Digite a opção desejada:")
      leia (operacao)
      se operacao = 1 então
         limpatela
         preencher()
      fimse

      se operacao = 2 então
         limpatela
         listar()
      fimse

      se operacao = 3 então
         limpatela
         crescente()
      fimse

      se operacao = 4 então
         limpatela
         decrescente()
      fimse

      se operacao = 5 então
         limpatela
         limpar()
      fimse

      se operacao = 6 então
         limpatela
         escreval("Sistema finalizado!")
fimalgoritmo
fimse
fimenquanto
fimprocedimento

//*************************************************************************//

procedimento preencher()
inicio

   escreval()
   escreval()

   indice:=1
   incremento:=-1

   primeiro :=(indice)
   enquanto (indice <=100) faça
      incremento :=incremento +2
      fila[(indice)]:= incremento
      indice:=indice+2
   fimenquanto

   se  indice = 101 então
      fila[(indice-1)]:=100
   fimse

   indice:=2
   incremento:=98

   enquanto (indice <=98) faça
      incremento :=incremento -2
      fila[(indice)]:= incremento
      indice:=indice+2
   fimenquanto

   fila[(98)]:=98

   ultimo :=(indice)
   escreva("")
   escreva("Preenchimento aleatório concluido!")
   escreval("")
   escreval("")
fimprocedimento
//*************************************************************************//

procedimento decrescente()

inicio

   indice:=0
   reg_total:=100
   qt_loop:= (reg_total -1)
   loop_total:=0
   enquanto loop_total < qt_loop faca
      limpatela
      escreval("Classificando em ordem decrescente.....")
      escreval(loop_total+2, " % concluido!")


      enquanto indice < qt_loop faca
         atual:= fila[reg_total]
         proximo:=fila[(reg_total-1)]
         se atual > proximo entao
            fila[(reg_total-1)]:=atual
            fila[reg_total]:=proximo
         senão
            fila[(reg_total-1)]:=proximo
         fimse
         reg_total:=reg_total-1
         indice:= indice+1
      fimenquanto
      indice:=0
      reg_total:=100
      loop_total:=(loop_total+1)
   fimenquanto
   escreval("---------------------------------------")
   escreval("Tempo de processamento:",(loop_total+1)/12.5," segundos")
fimprocedimento

//*************************************************************************//

procedimento crescente()

inicio

   indice:=1
   reg_total:=100
   qt_loop:= 100
   loop_total:=0
   enquanto loop_total < qt_loop faca
      limpatela
      escreval("Classificando em ordem crescente.....")
      escreval(loop_total+1, "% concluido!")


      enquanto indice < qt_loop faca
         atual:= fila[indice]
         proximo:=fila[(indice+1)]

         se atual > proximo entao
            fila[(indice)]:=proximo
            fila[indice+1]:=atual
         senão
            fila[(indice+1)]:=proximo
         fimse

         reg_total:=reg_total-1
         indice:= indice+1

      fimenquanto
      indice:=1
      reg_total:=100

      loop_total:=(loop_total+1)
   fimenquanto
   escreval("---------------------------------------")
   escreval("Tempo de processamento:",(loop_total/12.5)," segundos!")
fimprocedimento

//*************************************************************************//

procedimento listar()
inicio
   qt_fila:= 0
   escreval()
   para indice de 1 ate 100 faca
      se fila[indice] <> 0 entao
         escreval(fila[indice])
         qt_fila:=qt_fila+1

      fimse
   fimpara
   se qt_fila <> 0 entao
      escreval(qt_fila," registro na fila!")
   senao
      escreval("Não há nenhum item na fila!")
   fimse
fimprocedimento

//*************************************************************************//

procedimento limpar()
var
   indice:inteiro

inicio
   para indice de 1 ate 100 faca
      fila[indice]:=0
   fimpara
   escreval("Registro apagados!")
   menu()
fimprocedimento

//*************************************************************************//

Inicio
   menu()
Fimalgoritmo

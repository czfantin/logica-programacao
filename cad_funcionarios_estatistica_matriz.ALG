Algoritmo "vetores"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Maransatto
// Descri��o   : L�gica de Programa��o cadastro de funcion�rios
// Autor(a)    : Cristiano Zanguetin Fantin
// Data atual  : 18/02/2021
Var
// Se��o de Declara��es das vari�veis 

cadastro: vetor[0..4,0..4]de caracter
maior, menor, qt_masc, qt_fem, indice: inteiro
nome_maior, sexo_conv,nome_menor: caracter
total_sal,sal: real


Inicio
maior:=0
menor:=0
qt_masc:=0
qt_fem:=0
total_sal:=0

cadastro[0,0] := "Fernando Silva Maransatto"
cadastro[0,1] := "Professor"
cadastro[0,2] := "32"
cadastro[0,3] := "M"
cadastro[0,4] := "1000"

cadastro[1,0] := "Maria da Silva"
cadastro[1,1] := "Professora"
cadastro[1,2] := "30"
cadastro[1,3] := "F"
cadastro[1,4] := "2000"

cadastro[2,0] := "Jos� de Abreu Santos"
cadastro[2,1] := "TI"
cadastro[2,2] := "40"
cadastro[2,3] := "M"
cadastro[2,4] := "1000"

cadastro[3,0] := "Ana Maria del Barrio"
cadastro[3,1] := "Professora de Espanhol"
cadastro[3,2] := "60"
cadastro[3,3] := "F"
cadastro[3,4] := "3000"

cadastro[4,0] := "Don Diego de La Vega (zorro)"
cadastro[4,1] := "Heroi"
cadastro[4,2] := "27"
cadastro[4,3] := "M"
cadastro[4,4] := "10000"
 
para indice de 0 ate 4 fa�a

        se CaracpNum(cadastro[indice,2]) > maior ent�o
           nome_maior :=(cadastro[indice,0])
           maior :=CaracpNum(cadastro[indice,2])
        fimse

        se CaracpNum(cadastro[indice,2]) e (CaracpNum(cadastro[indice,2]) >  0) ent�o
           nome_menor :=(cadastro[indice,0])
           menor :=CaracpNum(cadastro[indice,2])
        fimse

        se maiusc(cadastro[indice,3]) = "M" ENT�O
           qt_masc:=qt_masc+1
        sen�o maiusc(cadastro[indice,3]) = "F"
           qt_fem:=qt_fem+1
        fimse

total_sal:= total_sal+(CaracpNum(cadastro[indice,4]))
escreval("")
fimpara

escreval("---------------------------")
escreval("LEITURA DA MATRIZ E APRESENTA��O DOS DADOS")
escreval("Nome Fun��o Idade Sexo Sal�rio")

para indice de 0 at� 4 fa�a
     escreval(cadastro[indice,0]," ",cadastro[indice,1]," ",cadastro[indice,2]," ",cadastro[indice,3]," ",cadastro[indice,4])
fimpara

escreval("")
escreval("---------------------------")
escreval("DADOS ESTAT�STICOS DA EMPRESA")

     escreval("Menor idade: ", nome_menor," -", menor)
     escreval("Maior idade: ",nome_maior," -",maior)
     escreval("Sexo feminino: ",qt_fem)
     escreval("Sexo masculino: ",qt_masc)
     escreval("Total Sal�rios: ",total_sal)

     
Fimalgoritmo
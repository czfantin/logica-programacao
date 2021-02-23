Algoritmo "vetores"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Maransatto
// Descrição   : Lógica de Programação cadastro de funcionários
// Autor(a)    : Cristiano Zanguetin Fantin
// Data atual  : 18/02/2021
Var
// Seção de Declarações das variáveis 

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

cadastro[2,0] := "José de Abreu Santos"
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
 
para indice de 0 ate 4 faça

        se CaracpNum(cadastro[indice,2]) > maior então
           nome_maior :=(cadastro[indice,0])
           maior :=CaracpNum(cadastro[indice,2])
        fimse

        se CaracpNum(cadastro[indice,2]) e (CaracpNum(cadastro[indice,2]) >  0) então
           nome_menor :=(cadastro[indice,0])
           menor :=CaracpNum(cadastro[indice,2])
        fimse

        se maiusc(cadastro[indice,3]) = "M" ENTÃO
           qt_masc:=qt_masc+1
        senão maiusc(cadastro[indice,3]) = "F"
           qt_fem:=qt_fem+1
        fimse

total_sal:= total_sal+(CaracpNum(cadastro[indice,4]))
escreval("")
fimpara

escreval("---------------------------")
escreval("LEITURA DA MATRIZ E APRESENTAÇÃO DOS DADOS")
escreval("Nome Função Idade Sexo Salário")

para indice de 0 até 4 faça
     escreval(cadastro[indice,0]," ",cadastro[indice,1]," ",cadastro[indice,2]," ",cadastro[indice,3]," ",cadastro[indice,4])
fimpara

escreval("")
escreval("---------------------------")
escreval("DADOS ESTATÍSTICOS DA EMPRESA")

     escreval("Menor idade: ", nome_menor," -", menor)
     escreval("Maior idade: ",nome_maior," -",maior)
     escreval("Sexo feminino: ",qt_fem)
     escreval("Sexo masculino: ",qt_masc)
     escreval("Total Salários: ",total_sal)

     
Fimalgoritmo
Algoritmo "vetores"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Maransatto
// Descri��o   : L�gica de Programa��o cadastro de funcion�rios
// Autor(a)    : Cristiano Zanguetin Fantin
// Data atual  : 18/02/2021
Var
// Se��o de Declara��es das vari�veis 
nome: vetor[0..4] de caracter
cargo: vetor[0..4] de caracter
idade: vetor [0..4] de inteiro
sexo: vetor[0..4] de caracter
salario: vetor[0..4] de caracter
maior: inteiro
menor, qt_masc, qt_fem: inteiro
nome_menor: caracter
nome_maior, sexo_conv: caracter
total_sal: real
sal: real

i: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
maior:=0
menor:=0
qt_masc:=0
qt_fem:=0
total_sal:=0

escreval("Informe dados dos funcion�rios na seguinte ordem:")
escreval("---------------------------")
escreval("Nome")
escreval("Fun��o")
escreval("Idade")
escreval("Sexo")
escreval("Sal�rio")
escreval("")

para i de 0 ate 4 fa�a
     escreval("Dados do Funcion�rio ", (i+1))
     escreva("Digite o nome:")
     leia(nome[i])
     escreva("Digite o fun��o:")
     leia(cargo[i])
     escreva("Digite a idade:")
     leia(idade[i])

        se (idade[i]) > maior ent�o
           nome_maior :=(nome[i])
           maior :=(idade[i])
        fimse
     
        se ((idade[i]) < maior) e ((idade[i]) >  0) ent�o
           nome_menor :=(nome[i])
           menor :=(idade[i])
        fimse

     escreva("Digite o sexo F/M:")
     leia (sexo[i])

        se maiusc(sexo[i]) = "M" ENT�O
           qt_masc:=qt_masc+1
        sen�o maiusc(sexo[i]) = "F"
           qt_fem:=qt_fem+1
        fimse

     escreva("Digite o sal�rio:")
     leia (salario[i])
     total_sal:= total_sal+(CaracpNum(salario[i]))
     escreval("")
fimpara

escreval("---------------------------")
escreval("LEITURA DA MATRIZ E APRESENTA��O DOS DADOS")
escreval("Nome Fun��o Idade Sexo Sal�rio")

para i de 0 at� 4 fa�a
     escreval(nome[i]," ",cargo[i]," ",idade[i]," ",maiusc(sexo[i])," ",salario[i])
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
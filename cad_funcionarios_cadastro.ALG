Algoritmo "vetores"
// Disciplina   : []
// Professor   : Maransatto
// Descrição   : Lógica de Programação cadastro de funcionários
// Autor(a)    : Cristiano Zanguetin Fantin
// Data atual  : 18/02/2021
Var
// Seção de Declarações das variáveis
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
// Seção de Comandos, procedimento, funções, operadores, etc...
maior:=0
menor:=0
qt_masc:=0
qt_fem:=0
total_sal:=0

escreval("Informe dados do funcionário na seguinte ordem:")
escreval("---------------------------")
escreval("Nome")
escreval("Função")
escreval("Idade")
escreval("Sexo")
escreval("Salário")
escreval("")

para i de 0 ate 4 faça
     escreval("Dados do Funcionário ", (i+1))
//     escreva("Digite o nome:")
     leia(nome[i])
//     escreva("Digite a função:")
     leia(cargo[i])
//     escreva("Digite a idade:")
     leia(idade[i])

        se (idade[i]) > maior então
           nome_maior :=(nome[i])
           maior :=(idade[i])
        fimse

        se ((idade[i]) < maior) e ((idade[i]) >  0) então
           nome_menor :=(nome[i])
           menor :=(idade[i])
        fimse

//     escreva("Digite o sexo F/M:")
     leia (sexo[i])

        se maiusc(sexo[i]) = "M" ENTÃO
           qt_masc:=qt_masc+1
        senão maiusc(sexo[i]) = "F"
           qt_fem:=qt_fem+1
        fimse

//     escreva("Digite o salário:")
     leia (salario[i])
     total_sal:= total_sal+(CaracpNum(salario[i]))
     escreval("")
fimpara

escreval("---------------------------")
escreval("LEITURA DA MATRIZ E APRESENTAÇÃO DOS DADOS")
escreval("Nome função Idade Sexo Salário")

para i de 0 até 4 faça
     escreval(nome[i]," ",cargo[i]," ",idade[i]," ",maiusc(sexo[i])," ",salario[i])
fimpara

Fimalgoritmo
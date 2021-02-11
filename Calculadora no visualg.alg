algoritmo "Calculadora"
// Função :Cálculos
// Autor : Cristiano Zanguetin FAntin
// Data : 27/01/2021
// Seção de Declarações
var
  a,b,c: inteiro
  opera: caractere
  resposta:inteiro
  result: real
inicio
      escreval ("CALCULADORA COMERCIAL")
      ESCREVAL (" ")
      escreva ("Digite um número: ")
      leia(A)
      escreva ("Digite outro número: ")
      leia(B)
      escreva ("Qual Operação deseja fazer? ")
      leia(opera)


      escolha opera
         caso "+"
           result <- a+b
             escreva ("O resultado desta soma é: ",result)

      caso "-"
           result <- a-b
             escreva ("O resultado desta subtração  é: ",result)

      caso "*"
           result <- a*b
             escreva ("O resultado desta multiplicação é: ",result)

      caso "/"
           result <- a/b
             escreva ("O resultado desta divisão é: ",result)
           outrocaso
                    escreva("Operação Invalida")

      fimescolha
      ESCREVAL (" ")


      fimalgoritmo
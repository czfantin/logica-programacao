algoritmo "Calculadora"
// Fun��o :C�lculos
// Autor : Cristiano Zanguetin FAntin
// Data : 27/01/2021
// Se��o de Declara��es
var
  a,b,c: inteiro
  opera: caractere
  resposta:inteiro
  result: real
inicio
      escreval ("CALCULADORA COMERCIAL")
      ESCREVAL (" ")
      escreva ("Digite um n�mero: ")
      leia(A)
      escreva ("Digite outro n�mero: ")
      leia(B)
      escreva ("Qual Opera��o deseja fazer? ")
      leia(opera)


      escolha opera
         caso "+"
           result <- a+b
             escreva ("O resultado desta soma �: ",result)

      caso "-"
           result <- a-b
             escreva ("O resultado desta subtra��o  �: ",result)

      caso "*"
           result <- a*b
             escreva ("O resultado desta multiplica��o �: ",result)

      caso "/"
           result <- a/b
             escreva ("O resultado desta divis�o �: ",result)
           outrocaso
                    escreva("Opera��o Invalida")

      fimescolha
      ESCREVAL (" ")


      fimalgoritmo
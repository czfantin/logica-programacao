algoritmo "Calculadora"
// Função :Cálculos de juros compostos
// Autor : Cristiano Zanguetin FAntin
// Data : 03/02/2021
// Seção de Declarações
var
  montante, inicial, taxa,  parcela, capital:real
  prazo, conta_prazo, resposta :inteiro

inicio
  escreval("Informe o valor inicial: ")
  leia(inicial)
  
  escreval("Informe o valor das parcelas: ")
  leia(parcela)

  escreval("Informe a taxa de juros: ")
  leia(taxa)

  escreval("Informe a quantidade de meses: ")
  leia(prazo)
  
  conta_prazo := 1
  taxa := taxa/100
  capital:=inicial

   enquanto conta_prazo <= prazo faca
     montante := capital*(1 + (taxa)) ^ 1
     capital := montante + parcela

     escreval("Montante período ", conta_prazo, " é ", capital:2:2)
     conta_prazo := conta_prazo+1
   fimenquanto

  escreva("")
  escreva("")
  escreval("Infome a quantidade de período, caso deseja calcular")
  escreva("")
  escreval(" em caso negativo digite 0(zero)")
  leia(resposta)
  
  escreva("")
  escreva("")
  
  se resposta <> 0 então

     enquanto conta_prazo <= (resposta+prazo) faca
        montante := capital*(1 + (taxa)) ^ 1
        capital := montante + parcela

        escreval("Montante período ", conta_prazo, " é ", capital:2:2)
        
        conta_prazo := conta_prazo+1
      fimenquanto


  fimse

fimalgoritmo
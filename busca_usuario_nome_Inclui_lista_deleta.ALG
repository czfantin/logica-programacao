Algoritmo "SA3 - Atividade 2 - Remover usuário da estrutura de dados"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Maransatto
// Descrição   : Cadastro de pessoas
// Autor(a)    : Cristiano Zanguetin Fantin
// Data atual  : 27/02/2021
Var
// Seção de Declarações das variáveis
cadastro: vetor[0..4,0..1] de caractere
resposta,nome,loc,idade:caracter
remover,operacao,cont, indice, qt_cadastro: inteiro

// Seção de Comandos, procedimento, funções, operadores, etc...
procedimento tela_inicial()
inicio
             enquanto operacao <> "5" faca
             escreval()
             escreval("-----Tela de comando-----")
             escreval("Digite 1 => Castrado de Pessoa")
             escreval("Digite 2 => Localizar o nome")
             escreval("Digite 3 => Listas todas as Pessoas")
             escreval("Digite 4 => Excluir Nome")
             escreval("Digite 5 => Sair do sistema")
             escreval()
             escreval("Digite a opções desejada:")
             leia (operacao)
                  se operacao = 1 então
                     limpatela
                     cadastrar()
                  fimse
                  
                  se operacao = 2 então
                     limpatela
                     localizar()
                  fimse
                  
                  se operacao = 3 então
                     limpatela
                     listar()
                  fimse

                  se operacao = 4 então
                     limpatela
                     deletar()
                  fimse
                  
                  se operacao = 5 então
                     limpatela
                  escreval("Obrigado por usar os sistemas CZF!")
                     fimalgoritmo
                  fimse
             fimenquanto
fimprocedimento

//*************************************************************************//
procedimento cadastrar()
inicio
   escreva("         Você está na tela de cadastro de pessoas")
   escreval()
   escreval()
   para indice de 0 ate 4 faça
        se (cadastro[indice,0]="") então
           escreva("Digite o Nome:")
           leia(cadastro[indice,0])
           escreva("Digite a Idade:")
           leia(cadastro[indice,1])
           menu_inicial()
           limpatela
        fimse
   fimpara
fimprocedimento

//*************************************************************************//
procedimento localizar()
inicio
loc := "0"
escreva("Informe o nome para pesquisa:_ ")
leia(nome)
   enquanto loc = "0" faca
      para indice de 0 até 4 faca
         se maiusc(nome) = maiusc(cadastro[indice,0]) entao
            escreval("Nome: ",cadastro[indice,0]," - Idade: ",cadastro[indice,1])
            loc:="1"
         fimse
      fimpara
         se loc= "0" entao
            escreval("Atenção: Nome digitado não encontrado!")
            escreval("Por favor verifique e pesquise novamente!")
            escreval()
            tela_inicial()
         fimse
   fimenquanto
fimprocedimento

//*************************************************************************//
procedimento menu_inicial()
inicio
   escreval()
   escreval("Digite(S)para continuar ou (N) para voltar ao menu")
   leia (resposta)
      se maiusc(resposta)= "S" entao
         limpatela
         cadastrar()
      senao
         limpatela
         tela_inicial()
      fimse
fimprocedimento
   
//*************************************************************************//
procedimento listar()
inicio
qt_cadastro:= 0
escreval()
   para indice de 0 ate 4 faca
      se cadastro[indice,0] <> "" entao
         escreval("Nome:", cadastro[indice,0], " - Idade:",cadastro[indice,1])
         qt_cadastro := qt_cadastro +1
      fimse
   fimpara
   se qt_cadastro <> 0 entao
      escreval("Total de pessoas cadastradas: ", qt_cadastro)
   senao
      escreval("Não foi encontrado nenhuma pessoa cadastrado no sistema!")
   fimse
fimprocedimento

//*************************************************************************//
procedimento deletar()
inicio
loc := "0"
escreva("Informe o nome para a ser deletado:_ ")
leia(nome)
   enquanto loc = "0" faca
      para indice de 0 até 4 faca
         se maiusc(nome) = maiusc(cadastro[indice,0]) entao
            cadastro[indice,0]:=""
            cadastro[indice,1]:=""
            loc:="1"
         escreval("A pessoa com o nome ",nome, " foi deletado do sistema!")
         fimse
      fimpara
         se loc= "0" entao
            escreval("Atenção: Nome digitado não encontrado!")
            escreval("Por favor verifique e pesquise novamente!")
            escreval()
            tela_inicial()
         fimse
   fimenquanto
fimprocedimento

//*************************************************************************//
Inicio
tela_inicial()
Fimalgoritmo
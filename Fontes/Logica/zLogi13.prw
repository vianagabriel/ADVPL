#include "totvs.ch"

/*/{Protheus.doc} zLogi13
(long_description)
@type user function
@author Gabriel Viana
@since 30/07/2024
/*/

User Function zLogi13()
  // Salva o estado atual das áreas de trabalho
  Local aArea    := GetArea()
  // Define um array de números de 1 a 10
  Local aNums    := {1,2,3,4,5,6,7,8,9,10}
  // Inicializa a variável nAtual
  Local nAtual   := 0
  // Inicializa a variável de mensagem
  local cMsg     := ""

  // Percorre o array aNums do início ao fim
  For nAtual := 1 To len(aNums)
    // Verifica se o índice atual é par ou ímpar e constrói a mensagem apropriada
    cMsg := Iif(nAtual % 2 == 0, "O número " + cValToChar(aNums[nAtual]) + " é par", "O número " + cValToChar(aNums[nAtual]) + " é ímpar")
    // Exibe a mensagem
    MsgInfo(cMsg,"Atenção")
  Next

  // Percorre o array aNums de trás para frente
  For nAtual := len(aNums) To 1 Step -1
    // Verifica se o índice atual é par ou ímpar e constrói a mensagem apropriada
    cMsg := Iif(nAtual % 2 == 0, "O número " + cValToChar(aNums[nAtual]) + " é par", "O número " + cValToChar(aNums[nAtual]) + " é ímpar")
    // Exibe a mensagem
    MsgInfo(cMsg,"Atenção")
  Next

  // Restaura o estado das áreas de trabalho
  RestArea(aArea)
Return




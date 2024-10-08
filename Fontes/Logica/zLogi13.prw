#include "totvs.ch"

/*/{Protheus.doc} zLogi13
(long_description)
@type user function
@author Gabriel Viana
@since 30/07/2024
/*/

User Function zLogi13()
  // Salva o estado atual das �reas de trabalho
  Local aArea    := GetArea()
  // Define um array de n�meros de 1 a 10
  Local aNums    := {1,2,3,4,5,6,7,8,9,10}
  // Inicializa a vari�vel nAtual
  Local nAtual   := 0
  // Inicializa a vari�vel de mensagem
  local cMsg     := ""

  // Percorre o array aNums do in�cio ao fim
  For nAtual := 1 To len(aNums)
    // Verifica se o �ndice atual � par ou �mpar e constr�i a mensagem apropriada
    cMsg := Iif(nAtual % 2 == 0, "O n�mero " + cValToChar(aNums[nAtual]) + " � par", "O n�mero " + cValToChar(aNums[nAtual]) + " � �mpar")
    // Exibe a mensagem
    MsgInfo(cMsg,"Aten��o")
  Next

  // Percorre o array aNums de tr�s para frente
  For nAtual := len(aNums) To 1 Step -1
    // Verifica se o �ndice atual � par ou �mpar e constr�i a mensagem apropriada
    cMsg := Iif(nAtual % 2 == 0, "O n�mero " + cValToChar(aNums[nAtual]) + " � par", "O n�mero " + cValToChar(aNums[nAtual]) + " � �mpar")
    // Exibe a mensagem
    MsgInfo(cMsg,"Aten��o")
  Next

  // Restaura o estado das �reas de trabalho
  RestArea(aArea)
Return




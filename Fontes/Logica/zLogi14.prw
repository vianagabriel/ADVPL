#include "totvs.ch"

User Function zLogi14()
  Local aNums := {1,2,3,4,5,6,7,8,9,10}
  Local nAtual := 1
  Local cMsg := ""

  // Percorrendo o array aNums usando While
  While nAtual <= Len(aNums)
    cMsg := Iif(aNums[nAtual] % 2 == 0, "O n�mero " + cValToChar(aNums[nAtual]) + " � par", "O n�mero " + cValToChar(aNums[nAtual]) + " � �mpar")
    MsgInfo(cMsg, "Aten��o")
    nAtual++
  EndDo
Return

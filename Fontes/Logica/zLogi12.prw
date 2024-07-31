#include "totvs.ch"

/*/{Protheus.doc} zLogi12
@type user function
@author Gabriel Viana
@since 30/07/2024
/*/

/*/ O Iif() é uma função que retorna um valor com base em uma condição.
    É similar ao operador ternário encontrado em outras linguagens de programação

    Sintaxe: iif( <condição>, <valor_se_verdadeiro>, <valor_se_falso> )
/*/

User Function zLogi12()
 
  local aArea     := GetArea()
  local nMesAtu   := Month(Date())
  local nMesAniv  := 7
  Local cMsg      := ""

  cMsg := Iif(nMesAniv == nMesAtu, "Mês de seu aniversário", "Não é seu mês de aniversário")
  MsgInfo(cMsg,"Atenção")

  RestArea(aArea)

Return 

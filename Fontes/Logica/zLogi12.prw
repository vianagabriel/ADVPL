#include "totvs.ch"

/*/{Protheus.doc} zLogi12
@type user function
@author Gabriel Viana
@since 30/07/2024
/*/

/*/ O Iif() � uma fun��o que retorna um valor com base em uma condi��o.
    � similar ao operador tern�rio encontrado em outras linguagens de programa��o

    Sintaxe: iif( <condi��o>, <valor_se_verdadeiro>, <valor_se_falso> )
/*/

User Function zLogi12()
 
  local aArea     := GetArea()
  local nMesAtu   := Month(Date())
  local nMesAniv  := 7
  Local cMsg      := ""

  cMsg := Iif(nMesAniv == nMesAtu, "M�s de seu anivers�rio", "N�o � seu m�s de anivers�rio")
  MsgInfo(cMsg,"Aten��o")

  RestArea(aArea)

Return 

// 1. Bibliotecas e Constantes

#include 'totvs.ch'

// 2. Documenta��o da Fun��o / Identifica��o

/*/{Protheus.doc} zLogi04
(long_description)
@type user function
@author Gabriel Viana
@since 22/07/2024
@version version
@see (links_or_references)
/*/

// 3. Abertura de um programa
User Function zLogi04()

   Local aArea     := GetArea()
   Local dData     := Date()
   Local choraAtu  := Time()
   Local cNome     := "Curso de l�gica em Advpl"


   // 4. Corpo do programa
   MsgInfo("Estamos no ["+ cNome + "], hoje � " + dToC(dData) + ", �s "+ choraAtu, "Aten��o")
   MsgInfo("Ontem seria "+ dToC(daySub(dData, 1)), "Aten��o")
   MsgInfo("M�s passado seria "+ dToC(MonthSub(dData, 1)), "Aten��o")

   // 5. Encerramento do programa

   RestArea(aArea)
     

Return 

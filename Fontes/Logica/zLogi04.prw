// 1. Bibliotecas e Constantes

#include 'totvs.ch'

// 2. Documentação da Função / Identificação

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
   Local cNome     := "Curso de lógica em Advpl"


   // 4. Corpo do programa
   MsgInfo("Estamos no ["+ cNome + "], hoje é " + dToC(dData) + ", às "+ choraAtu, "Atenção")
   MsgInfo("Ontem seria "+ dToC(daySub(dData, 1)), "Atenção")
   MsgInfo("Mês passado seria "+ dToC(MonthSub(dData, 1)), "Atenção")

   // 5. Encerramento do programa

   RestArea(aArea)
     

Return 

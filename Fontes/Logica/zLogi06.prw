#include "totvs.ch"

//Constanstes
#Define STR_NOME "Vari�vel Imut�vel"

//Vari�veis est�ticas
Static dDataHoje := Date()


/*/{Protheus.doc} zLogi06
Demonstrando os tipos de dados em Advpl
@author Gabriel Viana
@since 25/07/2024
/*/

/*/ ---- Vari�veis locais s� funcionam dentro da fun��o que criou ela 
   
/*/ 

User Function zLogi06()

 Local   aArea       := GetArea()
 Local   cNome       := "Gabriel"
 Private cSobrenome  := "Viana"
 Public  __cCidade   := "S�o Paulo"

 MsgInfo(cNome + " " + cSobrenome + " est� em " + __cCidade + " no dia " + DToC(dDataHoje),"Aten��o")
 
 fFuncTeste()

 RestArea(aArea)
Return 


/*/{Protheus.doc} fFuncTeste
    (long_description)
    @type  Static Function
    @author Gabriel Viana
    @since 25/07/2024
/*/
Static Function fFuncTeste()
    Local aArea := GetArea()
    Local cNome := "...."

    MsgInfo(cNome + " " + cSobrenome,"Aten��o")

    RestArea(aArea)
Return 
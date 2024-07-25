#include "totvs.ch"

//Constanstes
#Define STR_NOME "Variável Imutável"

//Variáveis estáticas
Static dDataHoje := Date()


/*/{Protheus.doc} zLogi06
Demonstrando os tipos de dados em Advpl
@author Gabriel Viana
@since 25/07/2024
/*/

/*/ ---- Variáveis locais só funcionam dentro da função que criou ela 
   
/*/ 

User Function zLogi06()

 Local   aArea       := GetArea()
 Local   cNome       := "Gabriel"
 Private cSobrenome  := "Viana"
 Public  __cCidade   := "São Paulo"

 MsgInfo(cNome + " " + cSobrenome + " está em " + __cCidade + " no dia " + DToC(dDataHoje),"Atenção")
 
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

    MsgInfo(cNome + " " + cSobrenome,"Atenção")

    RestArea(aArea)
Return 

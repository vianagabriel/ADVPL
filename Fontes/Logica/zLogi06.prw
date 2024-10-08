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


/*/  ESCOPOS das vari�veis

    ---- Vari�veis Local s� funcionam dentro da fun��o que criou ela, tem escopo Local

    ---- Vari�vies Private s�o acessiveis n�o apenas dentro da fun��o em que foram declaradas,
         mas tamb�m em qualquer fun��o que seja chamada a partir dessa fun��o.

    ---- Vari�veis Static s�o limitadas ao escopo do arquivo fonte, por�m elas ficam visiveis para 
         todas fun��es que esse fonte tiver diferente da private que para ficar visivel necessita 
         que a fun��o que vai usar -la seja chamada dentro da fun��o que a criou
    
    ---- Vari�vies public s�o globais e podem ser acessadas por qualquer parte do programa, em qualquer m�dulo ou fun��o
         IMPORTANTEE -> Use elas apenas quando realmente necess�rio. Prefira usar varu�veis locais, privadas ou est�ticas.
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

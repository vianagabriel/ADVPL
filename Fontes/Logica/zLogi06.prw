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


/*/  ESCOPOS das variáveis

    ---- Variáveis Local só funcionam dentro da função que criou ela, tem escopo Local

    ---- Variávies Private são acessiveis não apenas dentro da função em que foram declaradas,
         mas também em qualquer função que seja chamada a partir dessa função.

    ---- Variáveis Static são limitadas ao escopo do arquivo fonte, porém elas ficam visiveis para 
         todas funções que esse fonte tiver diferente da private que para ficar visivel necessita 
         que a função que vai usar -la seja chamada dentro da função que a criou
    
    ---- Variávies public são globais e podem ser acessadas por qualquer parte do programa, em qualquer módulo ou função
         IMPORTANTEE -> Use elas apenas quando realmente necessário. Prefira usar varuáveis locais, privadas ou estáticas.
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

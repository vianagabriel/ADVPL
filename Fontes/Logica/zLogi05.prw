#include "totvs.ch"

/*/{Protheus.doc} zLogi05
Fun��o criada para explica��o de funcionalidades
@type user function
@author Gabriel Viana
@since 25/07/2024
@version 1.0
/*/

/*/ As User Functions no ADVPL s�o fun��es definidas pelo usu�rio que permitem a extens�o
    e personaliza��o do sistema Protheus da TOTVS. Elas s�o amplamente utilizadas para criar 
    funcionalidades espec�ficas que n�o s�o cobertas pelas fun��es nativas do sistema.
/*/

User Function zLogi05()
  Local aArea := GetArea()

  MsgInfo("User function zLogi05", "Aten��o")


  RestArea(aArea)
Return 


/*/{Protheus.doc} fStatic1
    @type  Static Function
    @author Gabriel Viana
    @since 25/07/2024
/*/

/*/ Diferente da User function que tem acesso no protheus todo, uma static function
    pode ser chamada apenas no c�digo fonte aonde foi criada.
/*/

Static Function fStatic1()
    MsgInfo("Static Function fStatic1","Aten��o")
Return 

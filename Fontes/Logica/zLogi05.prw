#include "totvs.ch"

/*/{Protheus.doc} zLogi05
Função criada para explicação de funcionalidades
@type user function
@author Gabriel Viana
@since 25/07/2024
@version 1.0
/*/

/*/ As User Functions no ADVPL são funções definidas pelo usuário que permitem a extensão
    e personalização do sistema Protheus da TOTVS. Elas são amplamente utilizadas para criar 
    funcionalidades específicas que não são cobertas pelas funções nativas do sistema.
/*/

User Function zLogi05()
  Local aArea := GetArea()

  MsgInfo("User function zLogi05", "Atenção")


  RestArea(aArea)
Return 


/*/{Protheus.doc} fStatic1
    @type  Static Function
    @author Gabriel Viana
    @since 25/07/2024
/*/

/*/ Diferente da User function que tem acesso no protheus todo, uma static function
    pode ser chamada apenas no código fonte aonde foi criada.
/*/

Static Function fStatic1()
    MsgInfo("Static Function fStatic1","Atenção")
Return 

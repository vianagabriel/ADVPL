#include "totvs.ch"
#include "fwmvcdef.ch"



/*/{Protheus.doc}  ZD1MVC
 Exemplo de tela em MVC modelo 1
@type user function
@author Gabriel Viana
@since 29/03/2025
@version 1.0
/*/
User Function ZD1MVC()
    Local   aArea    := GetArea()
    Private oBrowse  := FWMBrowse():New() // criando o objeto browse
    Private aRotina  := menuDef() // recebendo o que a menuDef esta retornando
    
    
    oBrowse:setAlias('ZD1')// Tabela que será utilizada
    oBrowse:setDescription('Artistas')// Descrição
    oBrowse:activate()// Ativando o Browse

    RestArea(aArea)
Return 

/*/{Protheus.doc}  MenuDef
 Função responsável pelo menu da rotina
@type static function
@author Gabriel Viana
@since 29/03/2025
@version 1.0
/*/

Static Function menuDef
    Local aRotina := {} 
    
    // Adicionando opcoes do menu
    ADD OPTION aRotina TITLE 'Pesquisar'    ACTION  'axPesqui'                          OPERATION 1   ACCESS 0
    ADD OPTION aRotina TITLE 'Visualizar'   ACTION  'VIEWDEF.ZD1MVC'                    OPERATION 2   ACCESS 0
    ADD OPTION aRotina TITLE 'Incluir'      ACTION  'VIEWDEF.ZD1MVC'                    OPERATION 3   ACCESS 0
    ADD OPTION aRotina TITLE 'Alterar'      ACTION  'VIEWDEF.ZD1MVC'                    OPERATION 4   ACCESS 0
    
Return aRotina     


/*/{Protheus.doc}  ModelDef
 Função responsável pela logica da rotina
@type static function
@author Gabriel Viana
@since 29/03/2025
@version 1.0
/*/

Static Function modelDef
    Local oModel
    Local oStruct

    oStruct := FWFormStruct(1,'ZD1')
    oModel  := mpFormModel():new('Model_ZD1')

    oModel:addFields('ZD1MASTER',,oStruct)
    oModel:setDescription('Artistas')
    // oModel:GetModel('ZD1MASTER'):setDescription('Artistas teste')
    oModel:setPrimaryKey({'ZD1_COD'})

Return oModel 


/*/{Protheus.doc} viewDef
    Função responsavel pela parte gráfica 
    @type  Static Function
    @author Gabriel Viana
    @since 29/03/2025
/*/
Static Function viewDef
    Local oView
    Local oModel
    Local oStruct

    oModel  := FWLoadModel('ZD1MVC')
    oStruct := FWFormStruct(2,'ZD1')
    oView   := FWFormView():new()

    oView:setModel(oModel)
    oView:addField('ZD1MASTER',oStruct,'ZD1MASTER')
    oView:createHorizontalBox('JANELAZD1', 100)
    oView:setOwnerView('ZD1MASTER', 'JANELAZD1')
 
Return oView

#include "totvs.ch"

/*/{Protheus.doc} GCTA001
(long_description)
@type user function
@author Gabriel Viana
@since 21/08/2024
@version 1.0
@see https://tdn.totvs.com.br/pages/releaseview.action?pageId=24346981  (mBrowse)
@see https://tdn.totvs.com/pages/releaseview.action?pageId=23889143     (axPesqui)
@see https://tdn.totvs.com/pages/releaseview.action?pageId=23889145     (axVisual)
@see https://tdn.totvs.com/pages/releaseview.action?pageId=23889141     (axInclui)
@see https://tdn.totvs.com/pages/releaseview.action?pageId=23889132     (axAltera)
@see https://tdn.totvs.com/pages/releaseview.action?pageId=23889138     (axDeleta)
@see https://tdn.totvs.com/pages/releaseview.action?pageId=23889136     (axCadastro)
/*/

/*/
    aRotina := Esse array cont�m as op��es dispon�veis para o usu�rio e as respectivas fun��es que ser�o executadas quando o usu�rio
               selecionar a op��o. Ele deve ser declarado antes de se chamar a fun��o mBrowse.
    
    Este array deve ter a seguinte estrutura:
   
    [n][1]  -->  T�tulo da rotina que ser� exibido no menu

    [n][2]  -->  Nome da fun��o que ser� executada

    [n][3]  -->  Par�metro reservado. Deve ser sempre 0 (zero)

    [n][4]  -->  N�mero da opera��o que a fun��o executar�. As alternativas s�o:

    1=Pesquisa, 2=Visualiza��o, 3=Inclus�o, 4=Altera��o, 5=Exclus�o, 6=Altera��o

    Ao definir as fun�oes no array aRotina, caso o nome da fun��o n�o seja especificado com os pa�nteses, "( )", a mBrowse passar� as seguintes
    vari�veis de controle como par�metros:

    - cAlias = Nome da �rea de trabalho definida para a mBrowse;
    - nReg   = N�mero (Recno) do registro posicionado na mBrowse;
    - nOpc   = Posi��o da op��o utilizada na mBrowse, de acordo com a ordem da fun��o no array aRotina;
/*/
User Function GCTA001()
  
 local nOpcPadr      := 4 // vari�vel que guarda o numero da de qual op��o ser� chamada no duplo click na mBrowse
 local aLegenda      := {}

 private cCadastro   := "Cadastro de tipos de contratos" // titulo
 private aRotina     := {}

 aadd(aLegenda,{"Z50_TIPO == 'V'","BR_AMARELO"})
 aadd(aLegenda,{"Z50_TIPO == 'C'","BR_LARANJA"})
 aadd(aLegenda,{"Z50_TIPO == 'S'","BR_CINZA"  })


 aadd(aRotina,{"Pesquisar" , "axPesqui"   ,0,1})
 aadd(aRotina,{"Visualizar", "axVisual"   ,0,2})
 aadd(aRotina,{"Incluir"   , "axInclui"   ,0,3})
 aadd(aRotina,{"Alterar"   , "axAltera"   ,0,4})
 aadd(aRotina,{"Deletar"   , "axDeleta"   ,0,5})
 aadd(aRotina,{"Legendas"  , "U_GCTA001L" ,0,6})


 dbSelectArea("Z50")
 dbSetOrder(1)

 mBrowse(,,,,alias(),,,,,nOpcPadr,aLegenda)

Return 




function U_GCTA001L
 
 local aLegenda   := {}

 aadd(aLegenda,{"BR_AMARELO","Contrato de Vendas" })
 aadd(aLegenda,{"BR_LARANJA","Contrato de Compras"})
 aadd(aLegenda,{"BR_CINZA"  ,"Sem integra��o"     })

 
Return brwLegenda("Tipos de Contratos","Legenda",aLegenda)
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
    aRotina := Esse array contém as opções disponíveis para o usuário e as respectivas funções que serão executadas quando o usuário
               selecionar a opção. Ele deve ser declarado antes de se chamar a função mBrowse.
    
    Este array deve ter a seguinte estrutura:
   
    [n][1]  -->  Título da rotina que será exibido no menu

    [n][2]  -->  Nome da função que será executada

    [n][3]  -->  Parâmetro reservado. Deve ser sempre 0 (zero)

    [n][4]  -->  Número da operação que a função executará. As alternativas são:

    1=Pesquisa, 2=Visualização, 3=Inclusão, 4=Alteração, 5=Exclusão, 6=Alteração

    Ao definir as funçoes no array aRotina, caso o nome da função não seja especificado com os paênteses, "( )", a mBrowse passará as seguintes
    variáveis de controle como parâmetros:

    - cAlias = Nome da área de trabalho definida para a mBrowse;
    - nReg   = Número (Recno) do registro posicionado na mBrowse;
    - nOpc   = Posição da opção utilizada na mBrowse, de acordo com a ordem da função no array aRotina;
/*/
User Function GCTA001()
  
 local nOpcPadr      := 4 // variável que guarda o numero da de qual opção será chamada no duplo click na mBrowse
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
 aadd(aLegenda,{"BR_CINZA"  ,"Sem integração"     })

 
Return brwLegenda("Tipos de Contratos","Legenda",aLegenda)

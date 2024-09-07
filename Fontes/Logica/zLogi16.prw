#include "totvs.ch"


/*/{Protheus.doc} xParambox
função para aprendizado sobre a função Parambox
@type user function
@author Gabriel Viana
@since 06/09/2024
/*/
User Function xParambox()
 
 // ARRAYS OBRIGATORIOS
 local aPergs    := {}
 local aResps    := {}
 // ------------------

 local aOpcoes   := {}

 /*/
  [1]- TIPO 1 - MS-GET
  [2]- DESCRICAO
  [3]- STRING CONTENDO O INICIALIZADOR DO CAMPO
  [4]- STRING CONTENDO A PICTURE DO CAMPO -> MASCARA
  [5]- STRING CONTENDO A VALIDACAO 
  [6]- CONSULTA F3
  [7]- STRING CONTENDO A VALIDACAO WHEN
  [8]- TAMANHO DO MS-GET
  [9]- *** FLAG .T./ .F. PARAMETRO OBRIGATORIO ***
 /*/

Return 

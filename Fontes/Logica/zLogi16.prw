#include "totvs.ch"


/*/{Protheus.doc} xParambox
fun��o para aprendizado sobre a fun��o Parambox
@type user function
@author Gabriel Viana
@since 06/09/2024
/*/
User Function zLogi16()
 
 // ARRAYS OBRIGATORIOS
 local aPergs    := {}
 local aResps    := {}
 // ------------------

 local aOpcoes   := {"1-Ruim", "2-Regular", "3-Bom", "4-�timo"}

 //[1] - Tipo 1 -> MsGet
 //[2] - Descri��o
 //[3] - String contendo o inicalizador do campo
 //[4] - String contendo a Picture do campo
 //[5] - String contendo a valida��o 
 //[6] - Consulta F3
 //[7] - String contendo a valida��o When
 //[8] - Tamanho do MsGet
 //[9] - Flag .T./.F. Par�metro  obrigat�rio ? 

 // TIPO CHARACTERE
            //[1],   [2],      [3],     [4],     [5],                       [6], [7], [8]  [9]
 aadd(aPergs, {1, "Produto", Space(15), "@!", "ExistCpo('SB1', mv_par01)", "SB1", "", 50,   .T.}) 
 
 // TIPO NUMERICO
            //[1],  [2],  [3],    [4],          [5],      [6], [7], [8]  [9]
 aadd(aPergs, {1, "Valor", 0, "@E 9,999.99", "mv_par02>0", "", "",  20,  .F.})

 //TIPO DATA
           // [1], [2],   [3],     [4], [5], [6], [7], [8]  [9]
 aadd(aPergs, {1, "Data", StoD(""), "", "",  "",  "",  50,  .T.})


 // --------------------------------------------------------------------------------------------------

 //[1] - Tipo 2 -> Combo
 //[2] - Descri��o
 //[3] - Elemento do array que vai ser o valor inicial
 //[4] - Array contendo as op��es do Combo 
 //[5] - Tamanho do combo
 //[6] - Valida��o 
 //[7] - Flag .T./.F. Par�metro  obrigat�rio ?

 //           [1],         [2]           [3],     [4],    [5], [6]  [7]
 aadd(aPergs, {2, "Escolha uma op��o", "1-Ruim", aOpcoes, 50,  "",  .F.})

 // --------------------------------------------------------------------------------------------------
 
 //[1] - Tipo 3 -> Radio
 //[2] - Descri��o
 //[3] - Numerico contendo a op��o inicial do Radio
 //[4] - Array contendo as op��es do Radio 
 //[5] - Tamanho do Radio
 //[6] - Valida��o 
 //[7] - Flag .T./.F. Par�metro  obrigat�rio ?

 //           [1],       [2],         [3],     [4],     [5],  [6]  [7]
 aadd(aPergs, {3, "Mostrar deletados", 1, {"Sim","N�o"}, 50,  "",  .F.})

 // --------------------------------------------------------------------------------------------------

 //[1] - Tipo 4 -> Say + CheckBox
 //[2] - Descri��o
 //[3] - Indicador L�gico contendo o inicial do Check
 //[4] - Texto do checkBox
 //[5] - Tamanho do CheckBox
 //[6] - Valida��o 
 //[7] - Flag .T./.F. Par�metro  obrigat�rio ?

 //           [1],      [2],       [3],              [4],             [5],  [6],  [7] 
 aadd(aPergs, {4, "Marca todos ?", .F., "Marque todos de necess�rio.", 90,  "",   .F.})

 // --------------------------------------------------------------------------------------------------

 //[1] - Tipo 5 -> CheckBox
 //[2] - Descri��o
 //[3] - Indicador L�gico contendo o inical do Check
 //[4] - Tamanho do CheckBox
 //[5] - Valida��o 
 //[6] - Flag .T./.F. Par�metro  obrigat�rio ?
 
//            [1],      [2],        [3],  [4], [5],  [6]
 aadd(aPergs, {5,  "Marca todos ?", .F.,  50,  "",   .F.}) 

 // --------------------------------------------------------------------------------------------------
 
 //[1] - Tipo 6 - Arquivo
 //[2] - Descri��o
 //[3] - String contendo o inicializador do campo
 //[4] - String contendo a Picture do campo
 //[5] - String contendo a valida��o 
 //[6] - String contendo a valida��o When
 //[7] - Tamanho do MsGet
 //[8] - Flag .T./.F. Par�metro  obrigat�rio ?
 //[9] - Texto contendo os tipos de arquivo, exemplo: "Arquivos .CSV | *.CSV
 //[10]- Diret�rio inicial do cGetFile
 //[11]- N�mero relativo a visualiza��o, podendo ser por diret�rio  ou por arquivo 

        //    [1],         [2],         [3],  [4], [5], [6],  [7],  [8],           [9],          [10],               [11]   
 aadd(aPergs, {6, "Informe o Arquivo:",  "",  "",   "",  "",  80,   .F.,  "Arquivos .CSV |*.CSV", "", GETF_LOCALHARD+GETF_NETWORKDRIVE})

 // --------------------------------------------------------------------------------------------------

 //[1] - Tipo 7 -> Montagem de express�o de filtro
 //[2] - Descri��o
 //[3] - Alias da tabela
 //[4] - Filtro inicial

        //    [1],        [2],        [3],         [4]
 aadd(aPergs, {7, "Monte seu filtro", "SX5", "X5_FILIAL==xFilial('SX5')"})

 // --------------------------------------------------------------------------------------------------

 //[1] - Tipo 8 - MsGet Password
 //[2] - Descri��o
 //[3] - String contendo o inicializador do campo
 //[4] - String contendo a Picture do campo
 //[5] - String contendo a valida��o 
 //[6] - Consulta F3
 //[7] - String contendo a valida��o When 
 //[8] - Tamanho do MsGet 
 //[9] - Flag .T./.F. Par�metro  obrigat�rio ?

 //           [1],        [2],        [3],     [4], [5], [6], [7], [8],  [9]
 aadd(aPergs, {8, "Digite a senha", Space(15), "",  "",  "",  "",   80,  .F.})

 // --------------------------------------------------------------------------------------------------

 //[1] - Tipo 9 -> Somente uma mensagem, formato de um t�tulo
 //[2] - Texto descritivo
 //[3] - Largura do texto
 //[4] - Altura do texto
 //[5] - Valor l�gico sendo: .T. -> Fonte tipo VERDANA e .F. -> Fonte tipo ARIAL

//            [1],                [2],                       [3],  [4],  [5]
 aadd(aPergs, {9, "Texto aleat�rio, apenas demonstrativo.",  150,   7,   .T.})

 // --------------------------------------------------------------------------------------------------

 //[1] - Tipo 10 - Range de busca
 //[2] - T�tulo
 //[3] - Inicializador padr�o
 //[4] - Consulta F3
 //[5] - Tamanho do GET 
 //[6] - Tipo do dado, somente  (C=caractere e D=data)
 //[7] - Tamanho do espa�o
 //[8] - Condi��o When

 //           [1],    [2],       [3],      [4],   [5], [6], [7],  [8]
 aadd(aPergs, {10, "Cliente", Space(15),  "SA1",  40,  "C",  6,  ".T."})

  // --------------------------------------------------------------------------------------------------

 //[1] - Tipo 11 - MultGet (MEMO)
 //[2] - Descri��o
 //[3] - Inicializador padr�o
 //[4] - Valida��o
 //[5] - When 
 //[6] - Campo com preenchimento obrigat�rio .T.= Sim .F.= N�o (incluir a valida��o na fun��o ParamOk)

//            [1],          [2],      [3],   [4],   [5],    [6]
 aadd(aPergs, {11, "Informe o motivo", "",  ".T.",  ".T.",  .T.})




 // Par�metros da fun��o Parambox

 //1. - < aParametros > - Vetor com as configur��es
 //2. - < cTitle >      - T�tilo da janela
 //3. - < aRet >        - Vetor passado por refe�ncia que cont�m o retorno dos par�metros 
 //4. - < bOk >         - Code Block para validar o bot�o Ok
 //5. - < aButtons >    - Vetor com mais bot�es al�m dos bot�es de Ok e Cancel
 //6. - < lCentered >   - Centralizar a janela
 //7. - < nPosX >       - Se n�o centralizar janela coordenada X para in�cio
 //8. - < nPosY >       - Se n�o centralizar janela coordenada Y para in�cio
 //9. - < oDlgWizrd >   - Utiliza o objeto da janela ativa
 //10.- < cLoad >       - Nome do perfil se caso for carregar
 //11.- < lCanSave >    - Salvar os dados informados nos par�metros por perfil
 //12.- < lUserSave >   - Configura��o por usu�rio


 If Parambox(aPergs, "Meu input Box", @aResps)
    fwAlertWarning("Usu�rio cliclou no OK.")
 Else
    fwAlertWarning("Opera��o cancelada pelo usu�rio")
 EndIf

Return 

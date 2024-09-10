#include "totvs.ch"


/*/{Protheus.doc} xParambox
função para aprendizado sobre a função Parambox
@type user function
@author Gabriel Viana
@since 06/09/2024
/*/
User Function zLogi16()
 
 // ARRAYS OBRIGATORIOS
 local aPergs    := {}
 local aResps    := {}
 // ------------------

 local aOpcoes   := {"1-Ruim", "2-Regular", "3-Bom", "4-Ótimo"}

 //[1] - Tipo 1 -> MsGet
 //[2] - Descrição
 //[3] - String contendo o inicalizador do campo
 //[4] - String contendo a Picture do campo
 //[5] - String contendo a validação 
 //[6] - Consulta F3
 //[7] - String contendo a validação When
 //[8] - Tamanho do MsGet
 //[9] - Flag .T./.F. Parâmetro  obrigatório ? 

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
 //[2] - Descrição
 //[3] - Elemento do array que vai ser o valor inicial
 //[4] - Array contendo as opções do Combo 
 //[5] - Tamanho do combo
 //[6] - Validação 
 //[7] - Flag .T./.F. Parâmetro  obrigatório ?

 //           [1],         [2]           [3],     [4],    [5], [6]  [7]
 aadd(aPergs, {2, "Escolha uma opção", "1-Ruim", aOpcoes, 50,  "",  .F.})

 // --------------------------------------------------------------------------------------------------
 
 //[1] - Tipo 3 -> Radio
 //[2] - Descrição
 //[3] - Numerico contendo a opção inicial do Radio
 //[4] - Array contendo as opções do Radio 
 //[5] - Tamanho do Radio
 //[6] - Validação 
 //[7] - Flag .T./.F. Parâmetro  obrigatório ?

 //           [1],       [2],         [3],     [4],     [5],  [6]  [7]
 aadd(aPergs, {3, "Mostrar deletados", 1, {"Sim","Não"}, 50,  "",  .F.})

 // --------------------------------------------------------------------------------------------------

 //[1] - Tipo 4 -> Say + CheckBox
 //[2] - Descrição
 //[3] - Indicador Lógico contendo o inicial do Check
 //[4] - Texto do checkBox
 //[5] - Tamanho do CheckBox
 //[6] - Validação 
 //[7] - Flag .T./.F. Parâmetro  obrigatório ?

 //           [1],      [2],       [3],              [4],             [5],  [6],  [7] 
 aadd(aPergs, {4, "Marca todos ?", .F., "Marque todos de necessário.", 90,  "",   .F.})

 // --------------------------------------------------------------------------------------------------

 //[1] - Tipo 5 -> CheckBox
 //[2] - Descrição
 //[3] - Indicador Lógico contendo o inical do Check
 //[4] - Tamanho do CheckBox
 //[5] - Validação 
 //[6] - Flag .T./.F. Parâmetro  obrigatório ?
 
//            [1],      [2],        [3],  [4], [5],  [6]
 aadd(aPergs, {5,  "Marca todos ?", .F.,  50,  "",   .F.}) 

 // --------------------------------------------------------------------------------------------------
 
 //[1] - Tipo 6 - Arquivo
 //[2] - Descrição
 //[3] - String contendo o inicializador do campo
 //[4] - String contendo a Picture do campo
 //[5] - String contendo a validação 
 //[6] - String contendo a validação When
 //[7] - Tamanho do MsGet
 //[8] - Flag .T./.F. Parâmetro  obrigatório ?
 //[9] - Texto contendo os tipos de arquivo, exemplo: "Arquivos .CSV | *.CSV
 //[10]- Diretório inicial do cGetFile
 //[11]- Número relativo a visualização, podendo ser por diretório  ou por arquivo 

        //    [1],         [2],         [3],  [4], [5], [6],  [7],  [8],           [9],          [10],               [11]   
 aadd(aPergs, {6, "Informe o Arquivo:",  "",  "",   "",  "",  80,   .F.,  "Arquivos .CSV |*.CSV", "", GETF_LOCALHARD+GETF_NETWORKDRIVE})

 // --------------------------------------------------------------------------------------------------

 //[1] - Tipo 7 -> Montagem de expressão de filtro
 //[2] - Descrição
 //[3] - Alias da tabela
 //[4] - Filtro inicial

        //    [1],        [2],        [3],         [4]
 aadd(aPergs, {7, "Monte seu filtro", "SX5", "X5_FILIAL==xFilial('SX5')"})

 // --------------------------------------------------------------------------------------------------

 //[1] - Tipo 8 - MsGet Password
 //[2] - Descrição
 //[3] - String contendo o inicializador do campo
 //[4] - String contendo a Picture do campo
 //[5] - String contendo a validação 
 //[6] - Consulta F3
 //[7] - String contendo a validação When 
 //[8] - Tamanho do MsGet 
 //[9] - Flag .T./.F. Parâmetro  obrigatório ?

 //           [1],        [2],        [3],     [4], [5], [6], [7], [8],  [9]
 aadd(aPergs, {8, "Digite a senha", Space(15), "",  "",  "",  "",   80,  .F.})

 // --------------------------------------------------------------------------------------------------

 //[1] - Tipo 9 -> Somente uma mensagem, formato de um título
 //[2] - Texto descritivo
 //[3] - Largura do texto
 //[4] - Altura do texto
 //[5] - Valor lógico sendo: .T. -> Fonte tipo VERDANA e .F. -> Fonte tipo ARIAL

//            [1],                [2],                       [3],  [4],  [5]
 aadd(aPergs, {9, "Texto aleatório, apenas demonstrativo.",  150,   7,   .T.})

 // --------------------------------------------------------------------------------------------------

 //[1] - Tipo 10 - Range de busca
 //[2] - Título
 //[3] - Inicializador padrão
 //[4] - Consulta F3
 //[5] - Tamanho do GET 
 //[6] - Tipo do dado, somente  (C=caractere e D=data)
 //[7] - Tamanho do espaço
 //[8] - Condição When

 //           [1],    [2],       [3],      [4],   [5], [6], [7],  [8]
 aadd(aPergs, {10, "Cliente", Space(15),  "SA1",  40,  "C",  6,  ".T."})

  // --------------------------------------------------------------------------------------------------

 //[1] - Tipo 11 - MultGet (MEMO)
 //[2] - Descrição
 //[3] - Inicializador padrão
 //[4] - Validação
 //[5] - When 
 //[6] - Campo com preenchimento obrigatório .T.= Sim .F.= Não (incluir a validação na função ParamOk)

//            [1],          [2],      [3],   [4],   [5],    [6]
 aadd(aPergs, {11, "Informe o motivo", "",  ".T.",  ".T.",  .T.})




 // Parâmetros da função Parambox

 //1. - < aParametros > - Vetor com as configurções
 //2. - < cTitle >      - Títilo da janela
 //3. - < aRet >        - Vetor passado por refeência que contém o retorno dos parâmetros 
 //4. - < bOk >         - Code Block para validar o botão Ok
 //5. - < aButtons >    - Vetor com mais botões além dos botões de Ok e Cancel
 //6. - < lCentered >   - Centralizar a janela
 //7. - < nPosX >       - Se não centralizar janela coordenada X para início
 //8. - < nPosY >       - Se não centralizar janela coordenada Y para início
 //9. - < oDlgWizrd >   - Utiliza o objeto da janela ativa
 //10.- < cLoad >       - Nome do perfil se caso for carregar
 //11.- < lCanSave >    - Salvar os dados informados nos parâmetros por perfil
 //12.- < lUserSave >   - Configuração por usuário


 If Parambox(aPergs, "Meu input Box", @aResps)
    fwAlertWarning("Usuário cliclou no OK.")
 Else
    fwAlertWarning("Operação cancelada pelo usuário")
 EndIf

Return 

#include "totvs.ch"

/*/{Protheus.doc} nomeFunction
Fun��o para explicar sobre o arquivo de perguntas SX1
@type user function
@author Gabriel Viana
@since 02/09/2024
/*/

/*/ 
    Para fazer um grupo de perguntas primeiro � necess�rio la no configurado -> SIGACFG ir na base de dados na SX1 e criar o novo grupo de perguntas
    com seus tipos e tamanhos e as outras configura��es

    Aqui no fonte est� sendo apenas validado se o grupo de perguntas existe, � feito pelo m�todo Pergunte(passando o nome do grupo a ser executado)
/*/

User Function zLogi15()

 IF Pergunte("ZLOGI15")
    Alert("Achou as perguntas e vai preencher as vari�veis p�blicas MV_PARXX")
 Else 
    Alert("N�o localizou as perguntas no arquivo SX1 ou usu�rio clicou em cancelar")
 EndIF

Return 


#include "totvs.ch"

/*/{Protheus.doc} nomeFunction
Função para explicar sobre o arquivo de perguntas SX1
@type user function
@author Gabriel Viana
@since 02/09/2024
/*/

/*/ 
    Para fazer um grupo de perguntas primeiro é necessário la no configurado -> SIGACFG ir na base de dados na SX1 e criar o novo grupo de perguntas
    com seus tipos e tamanhos e as outras configurações

    Aqui no fonte está sendo apenas validado se o grupo de perguntas existe, é feito pelo método Pergunte(passando o nome do grupo a ser executado)
/*/

User Function zLogi15()

 IF Pergunte("ZLOGI15")
    Alert("Achou as perguntas e vai preencher as variáveis públicas MV_PARXX")
 Else 
    Alert("Não localizou as perguntas no arquivo SX1 ou usuário clicou em cancelar")
 EndIF

Return 



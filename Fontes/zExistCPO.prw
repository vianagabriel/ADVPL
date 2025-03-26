#include "totvs.ch"


//Função que demonstra o uso do ExistCPO

User function zExistCPO()
   local cCodCli := "000085"
   local cLoja   := "01" 
   

   rpcSetEnv("99","01")
   
    VerificaCliente(cCodCli,cLoja)

   rpcClearEnv()
Return

Static Function VerificaCliente(cCodCli, cLoja)
   Local lRet :=  .T. 


   If ExistCPO("SA1", cCodCli + cLoja) // Verifica se o conteúdo especificado existe na SA1, neste caso verificando um cliente passando o indice
        FwAlertInfo("Cliente existe","Atenção")

   Else 
        FwAlertInfo("Cliente não existe na base de dados", "Atenção")
        lRet = .F.
   EndIf

Return lRet 

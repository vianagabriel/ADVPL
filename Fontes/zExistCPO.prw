#include "totvs.ch"


//Fun��o que demonstra o uso do ExistCPO

User function zExistCPO()
   local cCodCli := "000085"
   local cLoja   := "01" 
   

   rpcSetEnv("99","01")
   
    VerificaCliente(cCodCli,cLoja)

   rpcClearEnv()
Return

Static Function VerificaCliente(cCodCli, cLoja)
   Local lRet :=  .T. 


   If ExistCPO("SA1", cCodCli + cLoja) // Verifica se o conte�do especificado existe na SA1, neste caso verificando um cliente passando o indice
        FwAlertInfo("Cliente existe","Aten��o")

   Else 
        FwAlertInfo("Cliente n�o existe na base de dados", "Aten��o")
        lRet = .F.
   EndIf

Return lRet 

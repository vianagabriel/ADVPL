#include "totvs.ch"


Function U_Teste()
 
 local cTexto  := ""
 local cResp   := ""

 cTexto        := "123 456 789.10"
 cResp         := StrTran(StrTran(cTexto, " ", "-"),".","-")


Return 

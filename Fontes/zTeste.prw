#include 'totvs.ch'


// Exemplo de execAuto


User Function zTeste()
  local aArea  := GetArea()
  local aDados := {}
  Private lMsErroAuto := .F.


    aadd(aDados,{"B1_COD","A290-8104-X774",NIL})
    aadd(aDados,{"B1_DESC","BICO DE LAVAGEM INFERIOR 2MM",NIL})
    aadd(aDados,{"B1_TIPO","PA",NIL})
    aadd(aDados,{"B1_UM","UN",NIL})
    aadd(aDados,{"B1_LOCPAD","00",NIL})

    Begin Transaction

        MSExecAuto({|x,y|, Mata010(x,y)}, aDados, 3)
       
       If lMsErroAuto 
         MostraErro()
         DisarmTransaction()
       Else
         FWAlertInfo("Produto cadastrado com Sucesso!", "Atenção")
       EndIf

    End Transaction

   RestArea(aArea)
Return 

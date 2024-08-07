#include 'totvs.ch'

/*/{Protheus.doc} zLogi10
(long_description)
@type user function
@author Gabriel Viana
@since 29/07/2024
/*/
User Function zLogi10()
 local aArea := GetArea()
 local aPessoas := {}
 local nAtual
 local nPosicao

 /*/ Array multidimensional /*/
 aAdd(aPessoas, {"Gabriel", SToD("19991203"), "S�o Paulo"})
 aAdd(aPessoas, {"Rebeca", SToD("20020613"), "S�o Paulo"})

 For nAtual := 1 To len(aPessoas)
  
 Next

 //Inserindo elemento no Array
 ASize(aPessoas,len(aPessoas) +1)
 AIns(aPessoas,1)
 aPessoas[1] := {"Julia", SToD("20180129", "S�o Paulo")}
 
 //Procurando um elemento no array
 nPosicao := AScan(aPessoas,{|x| AllTrim(x[1]) == "Gabriel"})
 IF nPosicao > 0
   MsgInfo("Gabriel encontrado, na linha "+ cValToChar(nPosicao), "Aten��o")
 Else 
   MsgInfo("Gabriel n�o foi encontrado!", "Aten��o")
 EndIF

 restArea(aArea)
Return 

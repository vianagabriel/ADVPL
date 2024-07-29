#include 'totvs.ch'

/*/{Protheus.doc} zLogi09
(long_description)
@type user function
@author Gabriel Viana
@since 29/07/2024
/*/
User Function zLogi09()
 local aArea := GetArea()
 local aPessoas := {}
 local nAtual
 /*/ Array multidimensional /*/

 aAdd(aPessoas, {"Gabriel", SToD("19991203"), "São Paulo"})
 aAdd(aPessoas, {"Rebeca", SToD("20020613"), "São Paulo"})

 For nAtual := 1 To len(aPessoas)

 Next

 //Inserindo elemento no Array
 ASize(aPessoas,len(aPessoas) +1)
 AIns(aPessoas,1)
 aPessoas[1] := {"Julia", SToD("20180129", "São Paulo")}
 Alert("Linha 2, Coluna 1: " + aPessoas[2][1])
 
 restArea(aArea)
Return 

#include 'totvs.ch'

/*/{Protheus.doc} zLogi08
(long_description)
@type user function
@author Gabriel Viana
@since 27/07/2024
/*/
User Function zLogi08()
 local aArea := GetArea()
 local aPessoas := {}
 local nAtual
 /*/ Array multidimensional /*/

 aAdd(aPessoas, {"Gabriel", SToD("19991203"), "São Paulo"})
 aAdd(aPessoas, {"Rebeca", SToD("20020613"), "São Paulo"})

for nAtual := 1 to len(aPessoas)
  Alert(aPessoas[nAtual][1] + " nasceu dia " + DToC(aPessoas[nAtual][2]) + " em " + aPessoas[nAtual][3])
Next

 restArea(aArea)

Return 

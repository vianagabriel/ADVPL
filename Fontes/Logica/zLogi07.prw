#include "totvs.ch"

/*/{Protheus.doc} zLogi07
(long_description)
@type user function
@author Gabriel Viana
@since 25/07/2024
/*/

 
 /*/
    Local aNomes  := {}

    Com essa forma de declarar um array ele não fica restringido por tamanho e com o uso do método
    aAdd pode ser fazer quantas inclusões no array for necessário

     Local aSobrenome := Array(3)
     Já nessa forma ele fica restringido ao tamanho declarado só podendo ser feito inclusões nos indices EX: 
      
     aSobrenome[1] := "Viana"
     aSobrenome[2] := "Alves"
 /*/

User Function zLogi07()
 Local aArea      := GetArea()
 Local aNomes     := {}
 Local aSobrenome := Array(3)

 aAdd(aNomes, "Gabriel")
 aAdd(aNomes, "Rebeca")

 aSobrenome[1] := "Viana"
 aSobrenome[2] := "Alves"

 Alert(aNomes[1] + " " + aSobrenome[1])

 RestArea(aArea)
Return 

#include "totvs.ch"

/*/{Protheus.doc} zLogi07
(long_description)
@type user function
@author Gabriel Viana
@since 25/07/2024
/*/

 
 /*/
    Local aNomes  := {}

    Com essa forma de declarar um array ele n�o fica restringido por tamanho e com o uso do m�todo
    aAdd pode ser fazer quantas inclus�es no array for necess�rio

     Local aSobrenome := Array(3)
     J� nessa forma ele fica restringido ao tamanho declarado s� podendo ser feito inclus�es nos indices EX: 
      
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

#include "totvs.ch"

/*/{Protheus.doc} zLogi11
(long_description)
@type user function
@author Gabriel Viana
@since 30/07/2024
/*/

// O Do Case é uma estrutura de controle de fluxo usada para executar diferentes blocos de código
// com base em condições específicas. 
// Funciona de forma semelhante a um switch em outras linguagens de programação

User Function zLogi11()
	local aAarea := GetArea()
	local cNome  := ""
	local nTipo  := 0

	// Definindo um valor para variável cNome
	cNome := ("Gabriel")

	Do Case
	 Case cNome == "Rebeca"
		nTipo := 1

	 Case cNome == "Gabriel"
		nTipo := 2

	 Otherwise
		nTipo := 3
	EndCase

	Alert("Tipo = " + cValToChar(nTipo))

	RestArea(aAarea)

Return

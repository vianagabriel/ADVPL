#include "totvs.ch"


/*/{Protheus.doc} VALID_ANO
Fun��o criada para fazer uma valida��o para descobrir se um ano � bissexto ou n�o
@type user function
@author Gabriel Viana
@since 10/09/2024
/*/

User Function VALID_ANO()

	local aPergs    := {}
	local aResps    := {}
    local nAno      := 0

	//[1] - Tipo 1 -> MsGet
	//[2] - Descri��o
	//[3] - String contendo o inicalizador do campo
	//[4] - String contendo a Picture do campo
	//[5] - String contendo a valida��o
	//[6] - Consulta F3
	//[7] - String contendo a valida��o When
	//[8] - Tamanho do MsGet
	//[9] - Flag .T./.F. Par�metro  obrigat�rio ?


	aadd(aPergs, {1, "Digite o ano!", 0, "@E 9999",,,,50, .T.})

  
	While .T.

		If Parambox(aPergs, "Valida Ano", @aResps)
            nAno  := aResps[1]
            
			If Valida_Ano_Bissexto(@nAno)
  				 MsgInfo("O ano "+ cValToChar(nAno) + " � bissexto!", "Aten��o")
			Else
  				 MsgInfo("O ano "+ cValToChar(nAno) + " n�o � bissexto!", "Aten��o")
			EndIf
				
		EndIf

        If ! MsgYesNo("Deseja executar outra valida��o de ano bissexto?")
             exit
        EndIf

	EndDo
Return



/*/{Protheus.doc} Valida_Ano_Bissexto
	(long_description)
	@type  Static Function
	@author user
	@since 10/09/2024
	@version version
	@param param_name, param_type, param_descr
	@return return_var, return_type, return_description
	@example
	(examples)
	@see (links_or_references)
/*/
Static Function Valida_Ano_Bissexto(nAno)

 local lRet   := .F.

 If nAno % 4 == 0 
    lRet      := .T.
 EndIf

 If lRet .and. nAno % 100 == 0 .and. nAno % 400 == 0
    lRet      := .T.
 EndIf
	
Return lRet

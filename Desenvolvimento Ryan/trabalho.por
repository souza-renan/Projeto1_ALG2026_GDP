programa
{
	
	funcao inicio()
	{
		inteiro x = 0, dia = 1, horas = 0, h = 0
		faca{
			escreva("\nAvancar Tempo \n1. Avançar 8 Horas \n2. Voltar \nEscolha: ")
			leia(x)
			se(x == 1){
				horas = horas + 8
				escreva("\nVoce pulou 8 horas")
			}

			se(horas == 24){
				dia = dia + 1
				escreva("\nVoce pulou um dia")
			}

			se(horas > 24){
				horas = 0
			}
			
		}enquanto(x != 2 )

	}

}

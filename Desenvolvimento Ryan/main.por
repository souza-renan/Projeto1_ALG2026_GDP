programa
{
	
	funcao inicio()
	{
		// nao lebro dcomo declarar tudo na mesma linha

		inteiro esc = 0 
		inteiro dia = 1
		inteiro horas = 0
		inteiro passatem = 0
		faca{
		escreva("\n\n========== MENU ========== \n      Dia: ",dia, " Hora: ",horas," \n\n1. Avançar Tempo \n2. \n3. \n4. \n5. Sair \nQual a sua Escolha? ")
		leia(esc)

		escolha (esc){
			caso 1:
					escreva("\n\n========== Soneca ==========  \n1. Avançar 8 Horas \n2. Voltar \nEscolha: ")
					leia(passatem)
					se(passatem == 1){
						horas = horas + 8
						escreva("\n\nVoce pulou 8 horas")
						}

					se(horas == 24){
						dia = dia + 1
						escreva("\nVoce pulou um dia")
						}

					se(horas >= 24){
						horas = 0
						}
				escreva("\n\nDia Atual: ",dia, "\nHora Atual: ", horas)
			caso 2:
			caso 3:
			caso 4:
			pare
				
		}

		se(dia >= 7){//nunca mude isso, ou o programa nao acaba no dia 7, perdi 3 horas aqui!
			esc = 5
		}
		
			
		}enquanto(esc != 5) 
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 714; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
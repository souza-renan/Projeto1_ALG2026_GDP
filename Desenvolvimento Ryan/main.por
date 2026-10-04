programa
{
	
	funcao inicio()
	{
		// nao lebro dcomo declarar tudo na mesma linha

		inteiro esc = 0 
		inteiro dia = 1
		inteiro horas = 0
		inteiro passatem = 0
		inteiro felicidade = 10
		inteiro banho = 0
		inteiro limpeza = 6
		
		faca{
		escreva("\n\n========== Status ==========  \n| Dia: ",dia, " |"," Hora: ",horas," |", " Felicidade: ", felicidade, " |"," Limpeza: ", limpeza," |")
		escreva("\n\n========== MENU ========== \n   \n\n1. Avançar Tempo \n2. \n3. \n4. Dar banho  \n5. Sair \nQual a sua Escolha? ")
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

					se(horas >= 24)
						horas = 0
						

					se(horas == 0 ou horas == 8 ou horas == 16 ou horas == 24)
							limpeza = limpeza - 2
						
				pare
				
			caso 2:
			caso 3:
			caso 4:
				
				se(limpeza == 10) 
   					felicidade = felicidade - 6
					
					
				escreva("\n\n========== Hora do Banho ==========  \n1. Tomar Banho \n2. Voltar \nEscolha: ")
				leia(banho)
				limpeza = 10
				escreva("\n\nTomou Banho\n")
				
			pare
			
				
		}

		se(dia >= 7 ou felicidade <= 0 ou limpeza <= 0){//nunca mude isso, ou o programa nao acaba no dia 7, perdi 3 horas aqui!
			esc = 5
		}
		
		se (dia >= 7) 
    			escreva("\nVoce ganhou! O pet sobreviveu por 7 dias.")
		senao
    			se (felicidade <= 0) 
       			 escreva("\nVoce perdeu! O pet morreu de tristeza.")
    		senao
        		se (limpeza <= 0)
            		escreva("\nVoce perdeu! O pet morreu de fedor.")
  
		
			
		}enquanto(esc != 5) 
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 29; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
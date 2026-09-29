programa
{
	
	funcao inicio()
	{
		// nao lebro dcomo declarar tudo na mesma linha

		inteiro esc = 0, dia = 1, horas = 0, passatem = 0
		inteiro fome = 0, felicidade = 0, saude = 0
		faca{
		escreva("\n\n========== MENU ========== \n      Dia: ",dia, " Hora: ",horas," \n\n1. Avançar Tempo \n2. Alimentar \n3. Jogar \n4. Dar banho \n5. Ver Status \nQual a sua Escolha? ")
		leia(esc)

		escolha (esc){
			caso 1: // Avançar Tempo
					escreva("\n\n========== Soneca ==========  \n1. Avançar 8 Horas \n2. Voltar \nEscolha: ")
					leia(passatem)
					se(passatem == 1){ // Avança 8 horas
						horas = horas + 8
						escreva("\n\nVoce pulou 8 horas")
						}

					se(horas == 24){ //Avança um dia após avançar 8 horas 3 vezes
						dia = dia + 1
						escreva("\nVoce pulou um dia")
						}

					se(horas >= 24){ //Reseta as horas pra zero após o dia aumentar.
						horas = 0
						}
				escreva("\n\nDia Atual: ",dia, "\nHora Atual: ", horas)
			caso 2: // Alimentar
			caso 3: // Jogar
			caso 4: // Dar Banho
			caso 5: // Status
					escreva("\n===== STATUS ATUAL - TAMAGOCHI=====\n\n")
					escreva("Dia atual: ",dia)
					escreva("\nHora atual: ",horas,"\nHora restante(Até sétimo dia): ",passatem)
					escreva("\n\nFome: ",fome,"\nFelicidade: ",felicidade,"\nSaude: ",saude)
			
			pare
				
		}

		se(dia >= 7){//nunca mude isso, ou o programa nao acaba no dia 7, perdi 3 horas aqui!
			esc = 6
		}
		
			
		}enquanto(esc != 5) 
		
	}
}

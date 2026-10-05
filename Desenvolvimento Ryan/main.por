programa
{
	
	funcao inicio()
	{
		// nao lebro dcomo declarar tudo na mesma linha

		inteiro esc = 0, dia = 1, horas = 0, passatem = 0, felicidade = 10, banho = 0, limpeza = 6, escolhaTamagochi, contadorjogo = 1, escolhaJogador

		cadeia jogadaTamagotchi = ""
		
		faca{
		escreva("\n\n========== Status ==========  \n| Dia: ",dia, " |"," Hora: ",horas," |", " Felicidade: ", felicidade, " |"," Limpeza: ", limpeza," |")
		escreva("\n\n========== MENU ========== \n   \n\n1. Avançar Tempo \n2. \n3. Jogar \n4. Dar banho  \n5. Sair \nQual a sua Escolha? ")
		leia(esc)


		escolha (esc){
			caso 1: // Avançar Tempo
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
				
			caso 2: // Alimentar
			caso 3: // Jogar

								faca{
					escolhaTamagochi = (contadorjogo % 3) + 1
					se(escolhaTamagochi == 1){jogadaTamagotchi = "Pedra"}
					se(escolhaTamagochi == 2){jogadaTamagotchi = "Papel"}
					se(escolhaTamagochi == 3){jogadaTamagotchi = "Tesoura"}
						escreva("\nVamos jogar Jogo da Velha!. Escolha: \n1. Pedra\n2. Papel\n3. Tesoura\n4. Voltar ao menu\nEscolha: ")
						leia(escolhaJogador)
						se(escolhaJogador == 4){
							pare
						}
						se(escolhaJogador == 1 ou escolhaJogador == 2 ou escolhaJogador == 3){
						se(escolhaTamagochi == escolhaJogador){
							escreva("\nTamagotchi tambem escolheu ",jogadaTamagotchi,". Empate! Jogue novamente\n")			
						
					}senao se((escolhaJogador == 1 e escolhaTamagochi == 3) ou (escolhaJogador == 2 e escolhaTamagochi == 1) ou (escolhaJogador == 3 e escolhaTamagochi == 2)){
							escreva("\nTamagotchi escolheu: ",jogadaTamagotchi,"\nVoce venceu!")
							
					} senao{escreva("\nTamagotchi escolheu: ",jogadaTamagotchi,"\nO tamagochi venceu!")
					}

						}senao{escreva("Digite um numero valido dentro do jogo")
						}
						contadorjogo = contadorjogo + 1
					}enquanto(escolhaJogador == escolhaTamagochi)
			pare
			
			caso 4: // Dar Banho
				
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

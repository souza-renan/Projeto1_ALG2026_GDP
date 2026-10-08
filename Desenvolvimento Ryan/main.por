programa
{
	
	funcao inicio()
	{
		// nao lebro dcomo declarar tudo na mesma linha

		inteiro esc = 0, dia = 1, horas = 0, passatem = 0, felicidade = 5, banho = 0, limpeza = 10, escolhaTamagochi, contadorjogo = 1, escolhaJogador, voltajogo = 0, fome = 0

		cadeia jogadaTamagotchi = "", nomepet = ""
		
		faca{
			se(voltajogo == 0){
				escreva("Seja bem vindo ao jogo Tamagotchi!!\nEscolha o nome do seu pet: ")
				leia(nomepet)
				escreva("\nBoa sorte na sua aventura com o ", nomepet)				
			}
		escreva("\n========== MENU ========== \n   \n\n1. Avançar Tempo \n2. Alimentar \n3. Jogar \n4. Dar banho \n5. Ver status  \n9. Sair \nQual a sua Escolha? ")
		leia(esc)
		voltajogo++
		
		se(felicidade > 10){
			felicidade = 10
		}
		
		escolha (esc){
			caso 1: // Avançar Tempo
					escreva("\n\n========== Soneca ==========  \n1. Avançar 8 Horas \n2. Voltar \nEscolha: ")
					leia(passatem)
					
					se(passatem == 1){
						horas = horas + 8
						escreva("\n\nVoce pulou 8 horas")
						felicidade = felicidade - 1// funcao morre de tristeza ou de felicidade.
						limpeza = limpeza - 2
						fome = fome + 4
						banho = 0// correção da funcao dar banho
						}

					se(horas == 24){
						dia = dia + 1
						escreva("\nVoce pulou um dia")
						}

					se(horas >= 24)                            
						horas = 0
						
	
				pare
				
			caso 2: // Alimentar
					se (fome <= 4 ){
					    	escreva("Já estou cheio!")
    						felicidade = felicidade - 2
    						se(fome == 0){
    							felicidade = felicidade - 2
    						}
    					}senao escreva("\n\n========== Hora de comer ==========  \nO",nomepet," foi alimentado.\n") 
    				  			fome = fome - 4
    				  			felicidade = felicidade + 2
    						
				pare 
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
							escreva(nomepet,"tambem escolheu ",jogadaTamagotchi,". Empate! Jogue novamente\n")	
						
						}senao se((escolhaJogador == 1 e escolhaTamagochi == 3) ou (escolhaJogador == 2 e escolhaTamagochi == 1) ou (escolhaJogador == 3 e escolhaTamagochi == 2)){
							escreva(nomepet," escolheu: ",jogadaTamagotchi,"\nVoce venceu!")
							felicidade = felicidade + 3							
							
						}senao{escreva(nomepet," escolheu: ",jogadaTamagotchi,nomepet," venceu!")
							felicidade = felicidade + 5					
						}

							}senao{escreva("Digite um numero valido dentro do jogo")
							}
								contadorjogo = contadorjogo + 1
				}enquanto(escolhaJogador == escolhaTamagochi)

			pare
			
			caso 4: // Dar Banho
				
				se(banho == 1 e limpeza == 10)// correção da funcao dar banho
   					felicidade = felicidade - 6
					
					
				escreva("\n\n========== Hora do Banho ==========  \n1. Tomar Banho \n2. Voltar \nEscolha: ")
				leia(banho)
				se(banho == 1){
				limpeza = 10
				escreva("\n\nTomou Banho\n")}
				
			pare
			
			caso 5: //Ver status

			escreva("\n\n========== Status ==========  \n| Dia: ",dia, " |"," Hora: ",horas," |", " Felicidade: ", felicidade, " |"," Limpeza: ", limpeza," |")
		}


se(dia >= 7 ou felicidade <= 0 ou limpeza <= 0 ou fome >= 10){//nunca mude isso, ou o programa nao acaba no dia 7, perdi 3 horas aqui!
	//precisa adicionar a variavel fome aqui, pro pet morrer quando chegar a algum valor e finalizar o jogo com fome.
	
	se (dia >= 7){
		escreva("\nVoce ganhou!\n",nomepet," morreu de velhice. Parabens!\nDigite qualquer numero para jogar novamente. Caso queira mudar o nome do pet, saia do jogo.\nDigite 9 para sair do jogo: ")
	}
	senao se (felicidade <= 0){
		escreva("\nVoce perdeu!\n",nomepet," morreu de tristeza.\nDigite qualquer numero para jogar novamente. Caso queira mudar o nome do pet, saia do jogo.\nDigite 9 para sair do jogo: ")
	}
	senao se (limpeza <= 0){
		escreva("\nVoce perdeu!\n",nomepet," morreu de fedor.\nDigite qualquer numero para jogar novamente. Caso queira mudar o nome do pet, saia do jogo.\nDigite 9 para sair do jogo: ")
	}
	senao se (fome >= 10){
		escreva("\nVoce perdeu!\n",nomepet," morreu de fome.\nDigite qualquer numero para jogar novamente. Caso queira mudar o nome do pet, saia do jogo.\nDigite 9 para sair do jogo: ")
	}
}	

		//validar atributos
		}enquanto(esc != 9) 
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1024; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
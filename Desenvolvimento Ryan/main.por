programa
{
	inclua biblioteca Util --> util
	
	funcao inicio()
	{

		inteiro esc = 0, dia = 1, horas = 0, passatem = 0, felicidade = 5, banho = 0, limpeza = 10, escolhaTamagochi, contadorjogo = 1, escolhaJogador, voltajogo = 0, fome = 0, validjogo = 0, saude = 0, validsaude = 0

		cadeia jogadaTamagotchi = "", nomepet = ""
		
		faca{
			se(voltajogo == 0){
				escreva("Seja bem vindo ao jogo Tamagotchi!!\nEscolha o nome do seu pet: ")
				leia(nomepet)
				escreva("\nBoa sorte na sua aventura com ", nomepet)				
			}
		escreva("\n\n========== MENU ========== \n\n1. Avançar Tempo \n2. Alimentar \n3. Jogar \n4. Dar banho \n5. Ver status  \n6. Sair \nQual a sua Escolha? ")
		leia(esc)
		voltajogo++
		
		escolha (esc){
			caso 1: // Avançar Tempo
					escreva("\n\n========== Soneca ==========  \n1. Avançar 8 Horas \nDigite qualquer outro numero para voltar ao menu.\nEscolha: ")
					leia(passatem)
					
					se(passatem == 1){
						horas = horas + 8
						escreva("\n\nVoce pulou 8 horas\n")
						felicidade = felicidade - 1// funcao morre de tristeza ou de felicidade. 
						limpeza = limpeza - 2
						fome = fome + 4
						banho = 0// correção da funcao dar banho
							se(felicidade > 10){
								felicidade = 10
							}
							
							se(limpeza > 10){
								limpeza = 10
							}
				
							//Saude
						
						se(validsaude == 0){
							saude =  util.sorteia(0,2) //0 Saudavel. 1 Doente. 2 Saudavel. 
								se(saude == 1){
									escreva(nomepet," está doente!")
									validsaude = 1
								}
						}senao se(validsaude == 1){
							saude =  util.sorteia(0,100) //0 Saudavel. 1 Doente. - 33%	
								se(saude <= 32){
									escreva(nomepet," não está mais doente!")
									validsaude = 0 
								}senao{validsaude = 2}
								
						}senao se(validsaude == 2){
							saude =  util.sorteia(0,100) //0 Saudavel. 1 Doente. - 66%
								se(saude <= 66){
									escreva(nomepet," não está mais doente!")
									validsaude = 0 
								}senao{validsaude = 3}
						}senao se(validsaude == 3){
									escreva(nomepet, " não está mais doente!")
									validsaude = 0 
						}				
							
					}// fim 8 horas

					se(horas == 24){
						dia = dia + 1
						escreva("\nVoce pulou um dia")
						}

					se(horas >= 24)                            
						horas = 0
						
	
				pare
				
			caso 2: // Alimentar
					se (fome == 0 ){
					    	escreva("Não estou com fome!")
    						felicidade = felicidade - 2
    						
    						se(fome <=4 ){
    							fome = 0
    							felicidade = felicidade - 2
    						}
    					}senao{ escreva("\n\n========== Hora de comer ==========  \nO",nomepet," encheu a pança.") 
    				  			fome = fome - 4
    				  			felicidade = felicidade + 2
    					}

 	   					se(felicidade > 10){
    							felicidade = 10
						}
						
				pare 
			caso 3: // Jogar
					validjogo = 1
				faca{
					escolhaTamagochi = (contadorjogo % 3) + 1
					se(escolhaTamagochi == 1){jogadaTamagotchi = "Pedra"}
					se(escolhaTamagochi == 2){jogadaTamagotchi = "Papel"}
					se(escolhaTamagochi == 3){jogadaTamagotchi = "Tesoura"}
						escreva("\nVamos jogar Pedra, Papel e Tesoura!. Escolha: \n1. Pedra\n2. Papel\n3. Tesoura\n4. Voltar ao menu\nEscolha: ")
						leia(escolhaJogador)
						se(escolhaJogador == 4){
							validjogo = 0
						}
						se(escolhaJogador == 1 ou escolhaJogador == 2 ou escolhaJogador == 3){
						se(escolhaTamagochi == escolhaJogador){
							escreva(nomepet," tambem escolheu ",jogadaTamagotchi,". Empate! Jogue novamente\n")	
						
						}senao se((escolhaJogador == 1 e escolhaTamagochi == 3) ou (escolhaJogador == 2 e escolhaTamagochi == 1) ou (escolhaJogador == 3 e escolhaTamagochi == 2)){
							escreva(nomepet," escolheu: ",jogadaTamagotchi,"\nVoce venceu!")
							felicidade = felicidade + 3							
							
						}senao{escreva(nomepet," escolheu: ",jogadaTamagotchi,"\n",nomepet," venceu!")
							felicidade = felicidade + 5					
						}

							}senao{escreva("\nDigite um numero valido dentro do jogo\n")
							}
								contadorjogo = contadorjogo + 1
				}enquanto(validjogo == 1)

						se(felicidade > 10){
 				   			felicidade = 10
						}
				
			pare
			
			caso 4: // Dar Banho
				
				se(limpeza == 10){// correção da funcao dar banho
   					escreva(" Não preciso de banho!")
   					felicidade = felicidade - 6
				}senao{ escreva("\n\n========== Hora do Banho ==========  \nO ",nomepet," tomou banho.")
							limpeza = 10
				}
			pare
			
			caso 5: //Ver status

					escreva("\n\n========== STATUS DO PET =========\n\nNome: ", nomepet,"\nDia: ", dia,"\nHora: ", horas, "h")
					escreva("\n\n========== ATRIBUTOS =============\nFelicidade: ", felicidade, "\nLimpeza: ", limpeza, "\nFome: ", fome,"\nSaude: ")


					se(validsaude > 0){
						escreva(nomepet, " está doente\n")
					}senao(escreva(nomepet, " está saudável\n"))
					
		}

			se(dia >= 7 ou felicidade <= 0 ou limpeza <= 0 ou fome >= 10){//nunca mude isso, ou o programa nao acaba no dia 7, perdi 3 horas aqui!
	
			se (dia >= 7){
				escreva("\nVoce ganhou!\n",nomepet," morreu de velhice e feliz. Parabens!\nDigite qualquer numero para jogar novamente. Caso queira mudar o nome do pet, saia do jogo.\nDigite 6 para sair do jogo: ")
					leia(esc)
			}
				senao se (felicidade <= 0){
					escreva("\nVoce perdeu!\n",nomepet," morreu de tristeza. Seu pet tinha", dia, " dia(s) de vida.\nDigite qualquer numero para jogar novamente. Caso queira mudar o nome do pet, saia do jogo.\nDigite 6 para sair do jogo: ")
						leia(esc)
				}
				senao se (limpeza <= 0){
					escreva("\nVoce perdeu!\n",nomepet," morreu de fedor. Seu pet tinha", dia, " dia(s) de vida.\nDigite qualquer numero para jogar novamente. Caso queira mudar o nome do pet, saia do jogo.\nDigite 6 para sair do jogo: ")
						leia(esc)
				}
				senao se (fome >= 10){
					escreva("\nVoce perdeu!\n",nomepet," morreu de fome. Seu pet tinha", dia, " dia(s) de vida.\nDigite qualquer numero para jogar novamente. Caso queira mudar o nome do pet, saia do jogo.\nDigite 6 para sair do jogo: ")
						leia(esc)
				}
					//validar atributos - reinicio dos atributos caso a pessoa comece novamente
					felicidade = 5
					limpeza = 10
					fome = 0
					dia = 1
					horas = 0
					validsaude = 0
			}	

		}enquanto(esc != 6) 
			escreva("\nJogo finalizado.\nCriado por Renan, Ryan e Vitor\nProjeto1_ALG2026_GDP")
	}
}

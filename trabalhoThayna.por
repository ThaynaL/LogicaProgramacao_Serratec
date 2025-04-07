programa{
	inteiro consultados = 0, internados = 0
	real total = 0.0, totalInternacoes = 0.0
	logico quartos[21]

    funcao inicio(){
        inteiro menu = 0

        para (inteiro i = 0; i <= 20; i++) {
            quartos[i] = falso //Todos os quartos estão disponíveis
        }
    
	  faca{
	  	   menu = escreverMenu() 
	        escolha (menu){
	        caso 1:
	            consultar()
	            pare
	        caso 2:
	            internar()
	            pare
	        caso 3:
	            listarQuartos()
	            pare
	        caso 4:
	            faturar()
	            pare
	        caso 5:
	            escreva("Encerrando o programa...\n")
	            pare
	        caso contrario:
	            escreva("Opção inválida. Tente novamente.\n")
	            pare
	        }
	  }enquanto(menu!=5)
    }

    funcao inteiro escreverMenu(){
    		inteiro opcao
        escreva("/n HOSPITAL - XPTO \n")
        escreva("----------------------------------\n")
        escreva("1 - Consulta Ambulatorial\n")
        escreva("2 - Internação\n")
        escreva("3 - Listar Quartos\n")
        escreva("4 - Faturamento\n")
        escreva("5 - Sair do Programa\n") 
        escreva("----------------------------------\n")
        
        escreva("Escolha a opção desejada:\n")
        leia(opcao) 
        
        retorne opcao
    }

    funcao real totalConsultas(real preco){
    		total += preco
    		retorne total
	}

	funcao consultar(){
		cadeia nome, especialidade, telefone
          real preco

		escreva("Digite os dados do paciente\n")
          escreva("Digite o nome:\n")
          leia(nome)
          escreva("Digite o telefone:\n")
          leia(telefone)
          escreva("Digite a especialidade desejada:\n")
          leia(especialidade)

          se ((especialidade == "pediatra") ou (especialidade == "Pediatra"))
              preco = 150.00
          senao
              preco = 120.00

          totalConsultas(preco)
          consultados++
	}

	funcao internar(){
		cadeia nome, telefone
		inteiro quartoEscolhido

		escreva("Digite os dados do paciente\n")
          escreva("Digite o nome:\n")
          leia(nome)
          escreva("Digite o telefone:\n")
          leia(telefone)
          escreva("Digite o quarto escolhido(de 1 a 20):\n")
          leia(quartoEscolhido)

		se((quartoEscolhido < 1) ou (quartoEscolhido > 20))
          	escreva("Número de quarto inválido!\n")
          senao{
	          se(quartos[quartoEscolhido] == falso){
	          	quartos[quartoEscolhido] = verdadeiro
	          	internados++
	          	totalInternacoes += 500.00
	          	escreva("Quarto reservado com sucesso!\n")
	          }senao
	          	escreva("Quarto Ocupado!\n")
          }

	}

	funcao listarQuartos(){
		para(inteiro i = 1; i <= 20; i++){
			se(quartos[i] == falso)
				escreva("Quarto nº ",i," desocupado\n")
			senao
				escreva("Quarto nº ",i," está ocupado\n")
		}
	}

	funcao faturar(){
		escreva("-----Relatório de Faturamento-----\n")
        escreva("Total de Consultas: R$ ", total, "\n")
        escreva("Total de Internações: R$ ", totalInternacoes, "\n")
        escreva("Faturamento Total: R$ ", totalInternacoes + total, "\n")
	}


    
    }
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1561; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
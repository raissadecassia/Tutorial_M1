extends Node2D

#var teste = false não estava sendo utilizada
#var valor = 0 não estava sendo utilizada
var numero = 0 #nome da variável estava com acento
var nome #variável não estava declarada
var cont = 0 #variável não estava declarada
var lista = [] #estava faltando o var para criar array


func _on_Button_pressed():
#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) #variável estava com acento e estava faltando $ para chamar o LineEdit
	nome = $LineEdit2.text

func _on_Button2_pressed():
#Incrementando o número inserido pelo usuário
	for i in range(10): 
		numero+=i #variável estava com letra maiúscula e tem a função de adicionar 1, 2, 3, 4... ao primeiro, segundo, terceiro, entre outros itens da lista e criar novos itens para a lista.
		lista.append(numero) #armazena o valor inserido pelo usuário na lista e "numero" estava com letra maiúscula
		$Label.text = "lista formada: " +str(lista) #organizei o que a label deve retornar na tela
		

func _on_Button3_pressed():
#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	for item in lista: #troquei while para for, ele percorre todos os itens da lista
		var i = 0 #variável não estava declarada
		if(item%2==1):#verifica se algum item é ímpar
			cont+=1 #realiza a contagem de um número ímpar
		if(cont==1):  #se possui pelo menos algum item ímpar, realizar o que está abaixo
			nome = nome+"baldo"
			cont=2 #para de adicionar baldo no final
		$Label2.text = nome

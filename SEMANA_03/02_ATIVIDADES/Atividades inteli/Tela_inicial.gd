extends Node2D

var dado1
var dado2
var dado3
var resultado
var listaDeNumero = []
var informacao
var listaPronta = []

#lista vazia
func _on_Button_pressed():  
	dado1 = float($dado1.text)
	dado2 = float($dado2.text)
	dado3 = float($dado3.text)
	
	listaDeNumero.append(dado1)
	listaDeNumero.append(dado2)
	listaDeNumero.append(dado3)
	
	$ColorRect/resposta.text = String(listaDeNumero)

 #lista preenchida
func _on_ListaPreenchida_pressed():
	listaPronta.append(1)
	listaPronta.append(2)
	listaPronta.append(3)
	
	$ListaPreenchida2/ListaPreenchidaResposta.text = String(listaPronta)

#retorna o valor inserido pelo usuario
func _on_RetornaInformacoes_pressed():
	informacao = String($informacao.text)

	$RetornaInformacaoUsuario/retornaResposta.text = informacao


#retorna valor na tela
func _on_Retornatexto_pressed():
	$RetornaTextoPronto/retornaTexto.text = ("Olá, tudo bem?")

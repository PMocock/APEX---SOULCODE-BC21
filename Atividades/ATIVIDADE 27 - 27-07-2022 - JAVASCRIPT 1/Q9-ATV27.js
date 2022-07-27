//QUESITO 9
//Um novo modelo de carro da Tesal, super econômico foi lançado.
// Ele faz 26km com 1 litro de combustível.
// Cada litro de combustível custa R$ 6,29.

// Faça um programa que pergunte ao usuário quanto de dinheiro ele tem e em seguida diga quantos litros de combustível ele pode comprar e quantos kilometros o carro consegue andar com este tanto de combustível.

//RESPOSTA QUESITO 9
var dinheiro = parseFloat(prompt('Digite o quanto de dinheiro você tem meu filho'));
var combustivel = dinheiro/6.29;
var alcance = (combustivel*26)-10;

document.write('você tem R$ ' + dinheiro + ' na carteira <br> suficiente pra abastecer um total de ' + combustivel + 'L de combustível <br> com um alcance total de ' + alcance + 'KM de distância pra rodar tranquilo');
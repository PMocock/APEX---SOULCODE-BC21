//QUESITO 5
//Escreva um programa que leia um número e imprima se este número é ou não par.

//RESPOSTA QUESITO 5

var numero = parseInt(prompt('Digite o número'));

var Nsobra = numero%2;

if(Nsobra == 1){
    document.write('Número ' + numero + ' é ímpar');
}else{
    document.write('Número ' + numero + ' é par');
}
//estou impressionado que deu certo :O
//QUESITO 4
//Faça um algoritmo que transforme a velocidade fornecida em m/s pelo usuário para Km/h. Para tal, multiplique o valor em m/s por 3,6.

//RESPOSTA QUESITO 4
var velocidade = parseInt(prompt('Digite a velocidade'));
var escala = prompt('Insira a escala origem para conversão');

if(escala == 'kmh'){
    var velocidadeM = velocidade / 3.6;
    document.write('velocidade original = ' + velocidade + 'KM/H <br>');
    document.write('velocidade convertida = ' + velocidadeM + 'm/s <br>');
}else{
    var velocidadeK = velocidade*3.6;
    document.write('velocidade original = ' + velocidade + 'm/s <br>');
    document.write('velocidade convertida = ' + velocidadeK + 'KM/H <br>');
}
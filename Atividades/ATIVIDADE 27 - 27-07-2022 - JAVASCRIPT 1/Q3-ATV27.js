//QUESITO 3
//Dado que a fórmula para conversão de Fahrenheit para Celsius é C = 5/9 (F – 32), leu um valor de temperatura em Fahrenheit e exibi-lo em Celsius

//RESPOSTA QUESITO 3
var temperatura = parseInt(prompt('Digite a temperatura'));
var escala = prompt('Insira a escala origem para conversão');

if(escala == 'Celsius'){
    var temperaturaF = (temperatura * 1.8) + 32;
    document.write('Temperatura original = ' + temperatura + 'Cº <br>');
    document.write('Temperatura convertida = ' + temperaturaF + 'Fº <br>');
}else{
    var temperaturaC = ((temperatura - 32)/9)*5;
    document.write('Temperatura original = ' + temperatura + 'Fº <br>');
    document.write('Temperatura convertida = ' + temperaturaC + 'Cº <br>');
}
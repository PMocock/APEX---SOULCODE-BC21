//QUESITO 10
//Escreva um algoritmo que receba dois números reais e um código de seleção do usuário. Se o código digitado for 1, faça o algoritmo somar os dois números previamente digitados e mostrar o resultado; se o código de seleção for 2, os números deverão ser multiplicados; se o código de seleção for 3, o primeiro número deve ser dividido pelo segundo.

//RESPOSTA QUESITO 10

var A = parseFloat(prompt('Digite primeiro número'));
var B = parseFloat(prompt('Digite segundo número'));
var C = parseInt(prompt('1=somar 2=multiplicar 3=dividir 4=subtrair'));

var soma = (A + B);
var subt = (A - B);
var mult = (A * B);
var divi = (A / B);

if(C==1){
    document.write('numero a = ' + A + '<br> numero b = ' + B + '<br> A + B = ' + soma);
}else if(C==2){
    document.write('numero a = ' + A + '<br> numero b = ' + B + '<br> A * B = ' + mult);
}else if(C==3){
    document.write('numero a = ' + A + '<br> numero b = ' + B + '<br> A / B = ' + divi);
}else if(C==4){
    document.write('numero a = ' + A + '<br> numero b = ' + B + '<br> A + B = ' + subt);
}else{
    alert('insira um número de 1 a 4 seu brincante');
}
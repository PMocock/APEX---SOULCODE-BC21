//QUESITO 8
//Chama-se ano bissexto o ano ao qual é acrescentado um dia extra, ficando ele com 366 dias, um dia a mais do que os anos normais de 365 dias, ocorrendo a cada quatro anos. Escreva um programa que verifique se um ano é bissexto. Um ano é bissexto se ele é divisível por 4. Entretanto, se o ano é divisível por 100, ele não é bissexto. Mas, se ele for divisível por 400, ele volta a ser bissexto.

// a. São bissextos os anos: 1600, 1996, 2000, 2004, 2008, 2012, 2016, 2400, 2800, ...
// b. Não são bissextos: 1500, 1974, 1982, 1983, 1990, 2018, 2022, 2030, 2038

//RESPOSTA QUESITO 8

var ano = parseInt(prompt('Digite o ano'));
var ano4= ano%4;
var ano100= ano%100;
var ano400= ano%400;
if((ano4 == 0 && ano100 != 0) || ( ano4 == 0 && ano100 == 0 && ano400 == 0)){
    document.write('O ano de ' + ano + ' é bissexto');
}else{
    document.write('O ano de ' + ano + ' não é bissexto');
}

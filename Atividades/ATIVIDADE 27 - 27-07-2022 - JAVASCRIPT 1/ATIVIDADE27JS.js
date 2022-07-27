//ATIVIDADE 27 - 27-07-2022 - JAVASCRIPT I - PEDRO MOCOCK
//QUESITO 1
//Elabore um script que leia dois números e imprima  o resultado das operações aritméticas soma, produto, divisão e resto da divisão (%) entre esses números.

////RESPOSTA QUESITO 1
// var A = parseInt(prompt('Digite primeiro número'));
// var B = parseInt(prompt('Digite segundo número'));
    
// var soma = (A + B);
// var subt = (A - B);
// var mult = (A * B);
// var divi = (A / B);
// var medi = (A + B)/2;
// var porc = (A%B);

// console.log(soma);
// console.log(subt);
// console.log(mult);
// console.log(divi);
// console.log(medi);
// console.log(porc);



//QUESITO 2
//Dado o tamanho do lado de um quadrado, calcular a área e o perímetro do mesmo.

////RESPOSTA QUESITO 2
// var QA = parseFloat(prompt('Digite o valor do lado A do quadrado'));
// var QB = parseFloat(prompt('Digite o valor do lado B do quadrado'));

// var areaQ = (QA * QB);
// var perimetroQ = ((QA*2)+(QB*2));
// var areaQ = (QA * QA);
// var perimetroQ = (QA*4);

// console.log('área do quadrado = ' + areaQ + 'm²');
// console.log('perímetro do quadrado = ' + perimetroQ + 'm');



//QUESITO 3
//Dado que a fórmula para conversão de Fahrenheit para Celsius é C = 5/9 (F – 32), leu um valor de temperatura em Fahrenheit e exibi-lo em Celsius

////RESPOSTA QUESITO 3
// var temperatura = parseInt(prompt('Digite a temperatura'));
// var escala = prompt('Insira a escala origem para conversão');

// if(escala == 'Celsius'){
//     var temperaturaF = (temperatura * 1.8) + 32;
//     document.write('Temperatura original = ' + temperatura + 'Cº <br>');
//     document.write('Temperatura convertida = ' + temperaturaF + 'Fº <br>');
// }else{
//     var temperaturaC = ((temperatura - 32)/9)*5;
//     document.write('Temperatura original = ' + temperatura + 'Fº <br>');
//     document.write('Temperatura convertida = ' + temperaturaC + 'Cº <br>');
// }



//QUESITO 4
//Faça um algoritmo que transforme a velocidade fornecida em m/s pelo usuário para Km/h. Para tal, multiplique o valor em m/s por 3,6.

////RESPOSTA QUESITO 4
// var velocidade = parseInt(prompt('Digite a velocidade'));
// var escala = prompt('Insira a escala origem para conversão');

// if(escala == 'kmh'){
//     var velocidadeM = velocidade / 3.6;
//     document.write('velocidade original = ' + velocidade + 'KM/H <br>');
//     document.write('velocidade convertida = ' + velocidadeM + 'm/s <br>');
// }else{
//     var velocidadeK = velocidade*3.6;
//     document.write('velocidade original = ' + velocidade + 'm/s <br>');
//     document.write('velocidade convertida = ' + velocidadeK + 'KM/H <br>');
// }



//QUESITO 5
//Escreva um programa que leia um número e imprima se este número é ou não par.

//RESPOSTA QUESITO 5

// var numero = parseInt(prompt('Digite o número'));

// var Nsobra = numero%2;

// if(Nsobra == 1){
//     document.write('Número ' + numero + ' é ímpar');
// }else{
//     document.write('Número ' + numero + ' é par');
// }
// //estou impressionado que deu certo :O



//QUESITO 6
//Escreva um programa que leia três números e mostre o maior entre eles.

////RESPOSTA QUESITO 6
// var n1 = parseInt(prompt('Digite o 1º número'));
// var n2 = parseInt(prompt('Digite o 2º número'));
// var n3 = parseInt(prompt('Digite o 3º número'));

// if((n1 >= n2) && (n2 >= n3)){
//     document.write('n1 = ' + n1 + ' <br> n2 = ' + n2 + ' <br> n3 = ' + n3);
// }else if((n1 >= n3) && (n3 > n2)){
//     document.write('n1 = ' + n1 + ' <br> n3 = ' + n3 + ' <br> n2 = ' + n2);
// }else if((n2 > n1) && (n1 >= n3)){
//     document.write('n2 = ' + n2 + ' <br> n1 = ' + n1 + ' <br> n3 = ' + n3);
// }else if((n2 >= n3) && (n3 > n1)){
//     document.write('n2 = ' + n2 + ' <br> n3 = ' + n3 + ' <br> n1 = ' + n1);
// }else if((n3 > n1) && (n1 >= n2)){
//     document.write('n3 = ' + n3 + ' <br> n1 = ' + n1 + ' <br> n2 = ' + n2);
// }else if((n3 > n2) && (n2 > n1)){
//     document.write('n3 = ' + n3 + ' <br> n2 = ' + n2 + ' <br> n1 = ' + n1);
// }else if((n3 == n1) && (n1 == n2)){
//     document.write('n1 = ' + n1 + ' <br> n2 = ' + n2 + ' <br>n3 = ' + n3);
// }else {
//     alert("Satanás veio falar comigo");
// }



//QUESITO 7
//Em uma certificação são feitos 5 exames (I, II, III, IV e V). Escreva um programa que leia as notas destes exames e imprima a classificação do aluno, sabendo que a média é 70.
// Classificação: 
// A – passou em todos os exames;
// B – passou em I, II e IV, mas não em III ou V;
// C – passou em I e II, III ou IV, mas não em V.
// Reprovado – outras situações

////RESPOSTA QUESITO 7
// var E1 = parseFloat(prompt('EXAME I = '));
// var E2 = parseFloat(prompt('EXAME II = '));
// var E3 = parseFloat(prompt('EXAME III = '));
// var E4 = parseFloat(prompt('EXAME VI = '));
// var E5 = parseFloat(prompt('EXAME V = '));

// var mediaE = (E1+E2+E3+E4+E5)/5;

// if(E1 >= 70 && E2 >= 70 && E3 >= 70 && E4 >= 70 && E5 >= 70){
//     var classificacao = 'A';
//     console.log('Classificação = ' + classificacao);
// }else if((E1 >= 70 && E2 >= 70 && E4 >= 70) && (E3 >= 70 || E5 >= 70)){
//     var classificacao = 'B';
//     console.log('Classificação = ' + classificacao);

// }else if((E1 >= 70 && E2 >= 70) && (E3 >= 70 || E4 >= 70) && E5 < 70){
//     var classificacao = 'C';
//     console.log('Classificação = ' + classificacao);
// }else{
//     console.log('Sem classificação definida!');
// }


//QUESITO 8
//Chama-se ano bissexto o ano ao qual é acrescentado um dia extra, ficando ele com 366 dias, um dia a mais do que os anos normais de 365 dias, ocorrendo a cada quatro anos. Escreva um programa que verifique se um ano é bissexto. Um ano é bissexto se ele é divisível por 4. Entretanto, se o ano é divisível por 100, ele não é bissexto. Mas, se ele for divisível por 400, ele volta a ser bissexto.

// a. São bissextos os anos: 1600, 1996, 2000, 2004, 2008, 2012, 2016, 2400, 2800, ...
// b. Não são bissextos: 1500, 1974, 1982, 1983, 1990, 2018, 2022, 2030, 2038

// //RESPOSTA QUESITO 8

// var ano = parseInt(prompt('Digite o ano'));
// var ano4= ano%4;
// var ano100= ano%100;
// var ano400= ano%400;
// if((ano4 == 0 && ano100 != 0) || ( ano4 == 0 && ano100 == 0 && ano400 == 0)){
//     document.write('O ano de ' + ano + ' é bissexto');
// }else{
//     document.write('O ano de ' + ano + ' não é bissexto');
// }



//QUESITO 9
//Um novo modelo de carro da Tesal, super econômico foi lançado.
// Ele faz 26km com 1 litro de combustível.
// Cada litro de combustível custa R$ 6,29.

// Faça um programa que pergunte ao usuário quanto de dinheiro ele tem e em seguida diga quantos litros de combustível ele pode comprar e quantos kilometros o carro consegue andar com este tanto de combustível.

//RESPOSTA QUESITO 9
// var dinheiro = parseFloat(prompt('Digite o quanto de dinheiro você tem meu filho'));
// var combustivel = dinheiro/6.29;
// var alcance = (combustivel*26)-10;

// document.write('você tem R$ ' + dinheiro + ' na carteira <br> suficiente pra abastecer um total de ' + combustivel + 'L de combustível <br> com um alcance total de ' + alcance + 'KM de distância pra rodar tranquilo');



//QUESITO 10
//Escreva um algoritmo que receba dois números reais e um código de seleção do usuário. Se o código digitado for 1, faça o algoritmo somar os dois números previamente digitados e mostrar o resultado; se o código de seleção for 2, os números deverão ser multiplicados; se o código de seleção for 3, o primeiro número deve ser dividido pelo segundo.

// //RESPOSTA QUESITO 10

// var A = parseFloat(prompt('Digite primeiro número'));
// var B = parseFloat(prompt('Digite segundo número'));
// var C = parseInt(prompt('1=somar 2=multiplicar 3=dividir 4=subtrair'));

// var soma = (A + B);
// var subt = (A - B);
// var mult = (A * B);
// var divi = (A / B);

// if(C==1){
//     document.write('numero a = ' + A + '<br> numero b = ' + B + '<br> A + B = ' + soma);
// }else if(C==2){
//     document.write('numero a = ' + A + '<br> numero b = ' + B + '<br> A * B = ' + mult);
// }else if(C==3){
//     document.write('numero a = ' + A + '<br> numero b = ' + B + '<br> A / B = ' + divi);
// }else if(C==4){
//     document.write('numero a = ' + A + '<br> numero b = ' + B + '<br> A + B = ' + subt);
// }else{
//     alert('insira um número de 1 a 4 seu brincante');
// }



//QUESITO 11
//Crie um object array com os valores de um veículo, sendo as chaves são marca, modelo, cor, ano, valor, renavam, placa, cada um das chaves devem possuir valores. Exiba através da body do HTML as informações do veículo:

// Veiculo
// marca: X
// modelo: x
// cor: x
// ano: x
// renavam: x
// placa: x

////RESPOSTA QUESITO 11
// var Gol = {
//     marca : 'VW', 
//     modelo : 'Gol', 
//     cor : 'Vermelho', 
//     ano : '2022', 
//     renavam : 12345678, 
//     placa : 'PQP-2I34'
// }

// console.log(Gol);
// document.write(JSON.stringify(Gol.marca) + '<br>');
// document.write(JSON.stringify(Gol.modelo) + '<br>');
// document.write(JSON.stringify(Gol.cor) + '<br>');
// document.write(JSON.stringify(Gol.ano) + '<br>');
// document.write(JSON.stringify(Gol.renavam) + '<br>');
// document.write(JSON.stringify(Gol.placa) + '<br>');
// document.write('Golzinho do capeta <br>' + JSON.stringify(Gol));

//// RASCUNHO QUESITO 11
// const veiculos = [1, 2, 3, 4 , 5];
// veiculos [0] = [{marca : 'Ford', modelo : 'Ka', cor : 'Vermelho', ano : '2022', renavam : 123456789, placa : 'PQP-1I34'}];
// veiculos [1] = [{marca : 'VW', modelo : 'Gol', cor : 'Vermelho', ano : '2022', renavam : 12345678, placa : 'PQP-2I34'}];
// veiculos [2] = [{marca : 'Chevrolet', modelo : 'Prisma', cor : 'Vermelho', ano : '2022', renavam : 1234567, placa : 'PQP-3I34'}];
// veiculos [3] = [{marca : 'Audi', modelo : 'A1', cor : 'Vermelho', ano : '2022', renavam : 123456, placa : 'PQP-4I34'}];
// veiculos [4] = [{marca : 'BMW', modelo : 'X6', cor : 'Vermelho', ano : '2022', renavam : 12345, placa : 'PQP-5I34'}];

// console.log(veiculos);

// function newContent(){
//     document.open();
//     document.write('<h3>Dados dos Carros: </h3>');
//     document.write('<p> Veículo ' + veiculos[0] + '</p>');
//     document.write('<p> Veículo ' + veiculos[1] + '</p>');
//     document.write('<p> Veículo ' + veiculos[2] + '</p>');
//     document.write('<p> Veículo ' + veiculos[3] + '</p>');
//     document.write('<p> Veículo ' + veiculos[4] + '</p>');
//     document.close();
// }



//QUESITO 12
//Crie um array com valores de 10 alunos de sua turma, exiba os valores existentes nas posições: 0,5,2,6,9 e 7.

//RESPOSTA QUESITO 12
// var aluno = ['Pedro', 'Ralffer', 'Antonio', 'Rogério', 'Christian', 'Lucas', 'Ricardo', 'Guilherme', 'Gregori', 'Lúcio'];
// console.log(aluno[0]);
// console.log(aluno[5]);
// console.log(aluno[2]);
// console.log(aluno[6]);
// console.log(aluno[9]);
// console.log(aluno[7]);



//QUESITO 13
//Crie um array com 5 posições e em cada posição, um object array com as seguintes chave/valor (id, nome, telefone, email). Exiba o array via console. e acesse as informações do object na posição 3.

////RESPOSTA QUESITO 13
// var cadastro = [1, 2, 3, 4 , 5];
// cadastro [0] = [{id : 1},{nome : 'Pong'},{telefone : '445566'},{email : 'A@B.com.br'}];
// cadastro [1] = [{id : 2},{nome : 'Chong'},{telefone : '44556'},{email : 'B@C.com.br'}];
// cadastro [2] = [{id : 3},{nome : 'Chang'},{telefone : '4455'},{email : 'C@D.com.br'}];
// cadastro [3] = [{id : 4},{nome : 'Kong'},{telefone : '445'},{email : 'D@E.com.br'}];
// cadastro [4] = [{id : 5},{nome : 'Cong'},{telefone : '44'},{email : 'E@F.com.br'}];

// console.log(cadastro);




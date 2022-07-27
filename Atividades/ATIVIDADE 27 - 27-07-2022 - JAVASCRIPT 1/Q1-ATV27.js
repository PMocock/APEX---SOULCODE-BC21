//QUESITO 1
//Elabore um script que leia dois números e imprima  o resultado das operações aritméticas soma, produto, divisão e resto da divisão (%) entre esses números.

//RESPOSTA QUESITO 1
var A = parseInt(prompt('Digite primeiro número'));
var B = parseInt(prompt('Digite segundo número'));
    
var soma = (A + B);
var subt = (A - B);
var mult = (A * B);
var divi = (A / B);
var medi = (A + B)/2;
var porc = (A%B);

console.log(soma);
console.log(subt);
console.log(mult);
console.log(divi);
console.log(medi);
console.log(porc);
//QUESITO 6
//Escreva um programa que leia três números e mostre o maior entre eles.

//RESPOSTA QUESITO 6
var n1 = parseInt(prompt('Digite o 1º número'));
var n2 = parseInt(prompt('Digite o 2º número'));
var n3 = parseInt(prompt('Digite o 3º número'));

if((n1 >= n2) && (n2 >= n3)){
    document.write('n1 = ' + n1 + ' <br> n2 = ' + n2 + ' <br> n3 = ' + n3);
}else if((n1 >= n3) && (n3 > n2)){
    document.write('n1 = ' + n1 + ' <br> n3 = ' + n3 + ' <br> n2 = ' + n2);
}else if((n2 > n1) && (n1 >= n3)){
    document.write('n2 = ' + n2 + ' <br> n1 = ' + n1 + ' <br> n3 = ' + n3);
}else if((n2 >= n3) && (n3 > n1)){
    document.write('n2 = ' + n2 + ' <br> n3 = ' + n3 + ' <br> n1 = ' + n1);
}else if((n3 > n1) && (n1 >= n2)){
    document.write('n3 = ' + n3 + ' <br> n1 = ' + n1 + ' <br> n2 = ' + n2);
}else if((n3 > n2) && (n2 > n1)){
    document.write('n3 = ' + n3 + ' <br> n2 = ' + n2 + ' <br> n1 = ' + n1);
}else if((n3 == n1) && (n1 == n2)){
    document.write('n1 = ' + n1 + ' <br> n2 = ' + n2 + ' <br>n3 = ' + n3);
}else {
    alert("Satanás veio falar comigo");
}
//QUESITO 7
//Em uma certificação são feitos 5 exames (I, II, III, IV e V). Escreva um programa que leia as notas destes exames e imprima a classificação do aluno, sabendo que a média é 70.
// Classificação: 
// A – passou em todos os exames;
// B – passou em I, II e IV, mas não em III ou V;
// C – passou em I e II, III ou IV, mas não em V.
// Reprovado – outras situações

//RESPOSTA QUESITO 7
var E1 = parseFloat(prompt('EXAME I = '));
var E2 = parseFloat(prompt('EXAME II = '));
var E3 = parseFloat(prompt('EXAME III = '));
var E4 = parseFloat(prompt('EXAME VI = '));
var E5 = parseFloat(prompt('EXAME V = '));

var mediaE = (E1+E2+E3+E4+E5)/5;

if(E1 >= 70 && E2 >= 70 && E3 >= 70 && E4 >= 70 && E5 >= 70){
    var classificacao = 'A';
    console.log('Classificação = ' + classificacao);
}else if((E1 >= 70 && E2 >= 70 && E4 >= 70) && (E3 >= 70 || E5 >= 70)){
    var classificacao = 'B';
    console.log('Classificação = ' + classificacao);

}else if((E1 >= 70 && E2 >= 70) && (E3 >= 70 || E4 >= 70) && E5 < 70){
    var classificacao = 'C';
    console.log('Classificação = ' + classificacao);
}else{
    console.log('Sem classificação definida!');
}
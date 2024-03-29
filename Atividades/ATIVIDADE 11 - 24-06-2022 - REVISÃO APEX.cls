Atividade 24/06/2022 Revisão APEX

//1. Escreva um algoritmo para receber uma temperatura em graus Fahrenheit, calcular e
//escrever o valor correspondente em graus Celsius (baseado na fórmula abaixo):
//Observação: Para testar se a sua resposta está correta saiba que 100oC = 212F
decimal F, C, ConvC, ConvF;
F = 212;
C = 38;
ConvC = (F - 32.0) / 1.8;
ConvF = (C * 1.8) + 32.0;
System.debug('Temperatura em Celsius = ' + ConvC + 'Cº');
System.debug('Temperatura em Fahrenheit = ' + ConvF + 'Fº');        

----------------------------------------------------------
//1.1 TESTE EM IF
//Escreva um algoritmo para receber uma temperatura em graus Fahrenheit, calcular e
//escrever o valor correspondente em graus Celsius (baseado na fórmula abaixo):
//Observação: Para testar se a sua resposta está correta saiba que 100oC = 212F
decimal T, E, ConvC, ConvF;
T = 100;
E = C;
ConvC = (T - 32.0) / 1.8;
ConvF = (T * 1.8) + 32.0;
If (E == C){
    System.debug('Temperatura em Celsius = ' + T + 'Cº');
    System.debug('Temperatura em Fahrenheint = ' + ConvF + 'Fº');
}Else {
    System.debug('Temperatura em Fahrenheint = ' + T + 'Fº');
    System.debug('Temperatura em Celsius = ' + ConvC + 'Cº');    
}    

------------------------------------------------------------
//2. As maçãs custam R$ 1,30 cada se forem compradas menos de uma dúzia, e R$ 1,00
//se forem compradas pelo menos 12. Escreva um programa que receba o número de
//maçãs compradas, calcule e escreva o custo total da compra.
Decimal QtMaca = 10;

while(QtMaca<=15){
    if(QtMaca < 12){System.debug((QtMaca*1.3).setscale(2));}
else{System.debug((QtMaca*1.0).setscale(2));}
               QtMaca++;
}

----------------------------------------------------------    
//3. Baseado no pseudocódigo abaixo crie o algoritmo em Apex.

String Nome = 'Rutherford Bohr';
String Sexo = 'Masculino';
Decimal Altura = 1.98;
System.debug(Nome  + ' Sexo ' + Sexo);
if(Sexo == 'Masculino'){
    system.debug ('o peso ideal é: ' + ((Altura * 72.7) - 58));}
    else {system.debug ('o peso ideal é : ' + ((Altura * 62.1) - 44.7));}

-----------------------------------------------------------
//4. Receba o nome de 2 times e o número de gols marcados na partida (para cada time).
//Escrever o nome do vencedor. Caso não haja vencedor deverá ser impressa a palavra
//EMPATE.

String TCasa, TVisit;
TCasa = 'Sport';
TVisit = 'Náutico';
Integer GTC, GTV;
GTC = 0;
GTV = 2;

System.debug('Time da casa: ' + TCasa);
System.debug('Time visitante: ' + TVisit);

While(GTC<=5){
IF(GTC > GTV){
system.debug('Time Vencedor = ' + TCasa  + ' - ' + GTC + ' -_- ' + TVisit + ' - ' + GTV);}
Else if(GTC == GTV){system.debug('Partida Terminada em Empate, Placar = ' + TCasa + ' - ' + GTC + ' -_- ' + TVisit + ' - ' + GTV);}
Else{system.debug('Time Vencedor = ' + TVisit + ' - ' + GTV + ' -_- ' + TCasa + ' - ' + GTC);}
    GTC++;}

---------------------------------------------------------------------------
//5. Um posto está vendendo combustíveis com a seguinte tabela de descontos:
//Escreva um algoritmo que receba o número de litros vendidos e o tipo de combustível
//(codificado da seguinte forma: A-álcool, G-gasolina), calcule e imprima o valor a ser
//pago pelo cliente sabendo-se que o preço do litro da gasolina é R$ 3,30 e o preço do
//litro do álcool é R$ 2,90. Alcool <= 20L (0.97), (0.95). Gasolina <= 20L (0.96), (0.94).

//Litros Gasolina, Litros álcool, Preço Gasolina, Preço Álcool
//Total Gasolina, Total Álcool
Decimal LGas, LAlc, PGas, PAlc, TGas1, TGas2, TAlc1, TAlc2;

LGas = 25.0;
LAlc = 35.0;
PGas = 3.3;
PAlc = 2.9;
TGas1 = (PGas * 0.96) * LGas;
TGas2 = (PGas * 0.94) * LGas;
TAlc1 = (PAlc * 0.97) * LAlc;
TAlc2 = (PAlc * 0.95) * LAlc;
//imprimir litros de gasolina e de álcool
System.debug(LGas);
System.debug(LAlc);
//Imprimir valores com desconto de Gasolina e de Álcool
If (LGas <= 20.0){System.debug( 'Valor Total Gasolina = R$ ' + TGas1.setscale(2));}
Else { System.debug( 'Valor Total Gasolina = R$ ' + TGas2.setscale(2));}
If (LAlc <= 20.0){System.debug( 'Valor Total Álcool = R$ ' + TAlc1.setscale(2));}
Else { System.debug( 'Valor Total Álcool = R$ ' + TAlc2.setscale(2));}
//Somar total de Gasolina + Álcool com os descontos
If (LAlc <= 20.0 && LGas <= 20.0){
    System.debug( 'Valor Total da Compra = R$' + (TAlc1 + TGas1).setscale(2));}
Else if(LAlc > 20.0 && LGas <= 20.0){
    System.debug( 'Valor Total da Compra = R$' + (TAlc2 + TGas1).setscale(2));}
Else If(LAlc <= 20.0 && LGas > 20.0){
    System.debug( 'Valor Total da Compra = R$' + (TAlc1 + TGas2).setscale(2));}
Else {
    System.debug( 'Valor Total da Compra = R$' + (TAlc2 + TGas2).setscale(2));}

-------------------------------------------------------------------
//6. Faça um algoritmo para ler as 3 notas obtidas por um aluno nas 3 verificações e a
//média dos exercícios que fazem parte da avaliação. Calcular a média de
//aproveitamento, usando a fórmula abaixo e escrever o conceito do aluno de acordo
//com a tabela de conceitos mais abaixo: 
//A atribuição de conceitos obedece a tabela abaixo

//Variáveis Nota 1, Nota 2, Nota 3, Média de Exercícios, Média de Aproveitamento

String Aluno = 'Acorda Pedrinho Dorminhoco';
Decimal N1, N2, N3, MdEx, MdAp;
N1 = 7;
N2 = 7;
N3 = 3;
MdEx = 5;
MdAp = (N1 + (N2 * 2) + (N3 * 3) + MdEx) / 7;

//Imprimir nome do aluno e notas
System.debug('Aluno ' + Aluno);
System.debug('Nota 1 = ' + N1);
System.debug('Nota 2 = ' + N2);
System.debug('Nota 3 = ' + N3);
System.debug('Média dos Exercícios = ' + MdEx);
System.debug('Média de Aproveitamento = ' + MdAp);

//Imprimir Conceito do aluno

If(MdAp >= 9.0){
    System.debug('Aluno ' + Aluno + ' conceito A' );}
Else if(MdAp < 9.0 && MdAp >= 7.5){
    System.debug('Aluno ' + Aluno + ' conceito B');}
Else If(MdAp < 7.5 && MdAp >= 6.0){
    System.debug('Aluno ' + Aluno + ' conceito C');}
Else {
    System.debug('Aluno ' + Aluno + ' conceito D');}

-------------------------------------------------------------
//6.1 TESTE EM LOOP (WHILE) 
//Faça um algoritmo para ler as 3 notas obtidas por um aluno nas 3 verificações e a
//média dos exercícios que fazem parte da avaliação. Calcular a média de
//aproveitamento, usando a fórmula abaixo e escrever o conceito do aluno de acordo
//com a tabela de conceitos mais abaixo: 
//A atribuição de conceitos obedece a tabela abaixo

//Variáveis Nota 1, Nota 2, Nota 3, Média de Exercícios, Média de Aproveitamento

String Aluno = 'Acorda Pedrinho Dorminhoco';
Decimal N1, N2, N3, MdEx, MdAp;
N1 = 8;
N2 = 9;
N3 = 0;
MdEx = 0;
MdAp = (N1 + (N2 * 2) + (N3 * 3) + MdEx) / 7;

//Imprimir nome do aluno e notas
System.debug('Aluno ' + Aluno);
System.debug('Nota 1 = ' + N1);
System.debug('Nota 2 = ' + N2);
System.debug('Nota 3 = ' + N3);
System.debug('Média dos Exercícios = ' + MdEx);
//teste de evolução de valores em loop
While (N3<=10.0 && MdEx<=10.0){
//Imprimir nota 3, média dos exercícios, média de aproveitamento
//E conceito do aluno conforme evolução das notas em loop
//Adoro esse loop
    MdAp = (N1 + (N2 * 2) + (N3 * 3) + MdEx) / 7;
    System.debug('Nota 3 = ' + N3);
    System.debug('Média dos Exercícios = ' + MdEx);
	System.debug('Média de Aproveitamento = ' + MdAp.setscale(2));
    If(MdAp >= 9.0){
    System.debug('Aluno ' + Aluno + ' conceito A' );}
Else if(MdAp < 9.0 && MdAp >= 7.5){
    System.debug('Aluno ' + Aluno + ' conceito B');}
Else If(MdAp < 7.5 && MdAp >= 6.0){
    System.debug('Aluno ' + Aluno + ' conceito C');}
Else {
    System.debug('Aluno ' + Aluno + ' conceito D');}
N3+=1.0;
MdEx+=1.0;
}

--------------------------------------------------------------
//7. Com base no pseudocódigo, crie o mesmo em Apex:
//Ler A, B, C 
//Se (a < b + c) e (b < a + c) e (c < a + b) então 
    //Se ((a*a) = (b*b) + (c*c)) ou ((c*c) = (b*b) + (a*a)) 
    //ou ((b*b) = (a*a) + (c*c)) então triângulo retângulo
    //Se (a = b) e (b = c) então triângulo equilátero
    //Se (a = b) ou (b = c) ou (a = c) então triângulo isóceles
//senão não é possível formar um triângulo
//imprimir perímetro do triângulo]
//variáveis lados a, b e c, e perímetro p
Decimal a, b, c, p;
a = 3;
b = 4;
c = 5;
p = a + b + c;
system.debug('a = ' + a + ' b = ' + b + ' c = ' + c);
System.debug('Perímetro total = ' + p);
If(a<(b+c) && c<(b+a) && b<(a+c)){
    System.debug('é um triângulo');
    If(((a*a) + (c*c) == (b*b)) || ((c*c) + (a*a) == (b*b)) || ((a*a) + (b*b) == (c*c))){
        System.debug('é um triângulo retângulo');
    }Else If((a == b) || (c == b) || (a == c)){
        System.debug('é um triângulo isóceles');
    }Else if (a == b & b == c){
        System.debug('é um triângulo equilátero');
    }Else {
        System.debug('é um triângulo escaleno');
    }
    }Else {System.debug('não é um triângulo');
    }

--------------------------------------------------------------
//7.1 TESTE EM LOOP (WHILE)
//7. Com base no pseudocódigo, crie o mesmo em Apex:
//Ler A, B, C 
//Se (a < b + c) e (b < a + c) e (c < a + b) então 
    //Se ((a*a) = (b*b) + (c*c)) ou ((c*c) = (b*b) + (a*a)) 
    //ou ((b*b) = (a*a) + (c*c)) então triângulo retângulo
    //Se (a = b) e (b = c) então triângulo equilátero
    //Se (a = b) ou (b = c) ou (a = c) então triângulo isóceles
//senão não é possível formar um triângulo
//imprimir perímetro do triângulo
Decimal a, b, c, p;
a = 1;
b = 3;
c = 4;
//exibir valores
system.debug('\nlado a = ' + a + 'm\nlado b = ' + b + 'm\nlado c = ' + c + 'm');
//exibir tipo do triângulo e teste em loop while
While(a<=18 && b<=9 && c<=7.5){
    p = a + b + c;
    System.debug('Perímetro total = ' + p + 'm');
    If(a<(b+c) && c<(b+a) && b<(a+c)){
        If(((a*a) + (c*c) == (b*b)) || ((c*c) + (a*a) == (b*b)) || ((a*a) + (b*b) == (c*c))){
            System.debug('é um triângulo retângulo');
        }Else if (a == b & b == c){
            System.debug('é um triângulo equilátero');
        }Else If((a == b) || (c == b) || (a == c)){
            System.debug('é um triângulo isóceles');
        }Else {
            System.debug('é um triângulo escaleno');
        }
    }Else {System.debug('não é um triângulo');
          }
    a+=2;
    b+=1;
    c+=0.5;
}

---------------------------------------------------------------------------------
//8. Escreva um algoritmo para imprimir os 
//20 primeiros números inteiros maiores que 100.
Integer N = 100;
System.debug('N inicial = ' + N);
While(N<=120){
    System.debug('N Atual = ' + N);
    N++;
}

-------------------------------------------------------------------
//8.1 WHILE COM LISTA
//Escreva um algoritmo para imprimir os 
//20 primeiros números inteiros maiores que 100.
integer N = 100;
Integer P = 0;
List <Integer> NI = New List <integer>();

While(N<=120){
    NI.add(N);
    System.debug('Número atual = ' + N);
    System.debug('Número Inteiro = ' + NI[P]);
    N++;
    P++;
}

------------------------------------------------------------------
//9. Escreva um algoritmo que calcule e 
//imprima a tabuada do 8. De 1 a 10.

Integer A, B, C;
A = 8;
B = 1;

System.debug('TABUADA DO ' + A);
While(B<=10){
    C = A*B;
    System.debug(A + ' X ' + B + ' = ' + C);
    B++;
}

----------------------------------------------------------------
//9. Escreva um algoritmo que calcule e 
//imprima a tabuada do 8. De 1 a 10.
Integer A, B, C, P;
A = 8;
B = 0;
P = 0;

System.debug('TABUADA DO ' + A);

List <integer> TO = New List <integer> ();
While(B<=10){
    C = A * B;
    TO.add (C);
    System.debug(A + ' X ' + B + ' = ' + TO[P] );
    B++;
    P++;
}

----------------------------------------------------
//10. Crie uma Lista com os seguintes valores (A, B, C, D, E, F)
//. Baseado nas posições dessa lista, imprima as seguintes palavras.
//dessa lista, imprima as seguintes palavras. FACA, BABA, FADA, ACABADA
List <string> LLC = New list <String>{
    'A', 'B', 'C', 'D', 'E', 'F', 'Ç' 
};
System.debug('No Risca - ' + LLC[5] + LLC[0] + LLC[2] + LLC[0]);
System.debug('Ou Jogando um - ' + LLC[1] + LLC[0] + LLC[1] + LLC[0]);
System.debug('As Mina é - ' + LLC[5] + LLC[0] + LLC[3] + LLC[0]);
System.debug('Missão - ' + LLC[0] + LLC[2] + LLC[0] + LLC[1]+ LLC[0] + LLC[3] + LLC[0]);
System.debug('Nois é - ' + LLC[2] + LLC[0] + LLC[1]+ LLC[4] + LLC[6] + LLC[0]);

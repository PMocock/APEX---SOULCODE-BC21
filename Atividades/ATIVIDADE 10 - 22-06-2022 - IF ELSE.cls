ATIVIDADE 10 - 22-06-2022 - IF ELSE

//1. Defina um valor e escreva a mensagem ‘É MAIOR QUE 10!’ se o valor lido for maior
//que 10, caso contrário escrever NÃO É MAIOR QUE 10!
integer Valor = 7;
System.debug('valor' + Valor);
IF(Valor > 10){system.debug('É maior que 10');}
Else{system.debug('Não é maior que 10');}
-------------------------------------------------------------------
//2. Defina um valor e escreva se é positivo ou negativo (considere o valor zero como
//positivo).
integer Valor = 1;
System.debug('Valor ' + Valor);
IF(Valor >= 0){system.debug('Valor Positivo');}
Else{system.debug('Valor Negativo');}
Valor--;
Valor--;
IF(Valor >= 0){system.debug('Valor Positivo');}
Else{system.debug('Valor Negativo');}

---------------------------------------------------------------------
//3. Ler dois valores (considere que não serão lidos valores iguais) e 
//escrevê-los em ordem crescente.
integer V1, V2;
V1 = 1;
V2 = 2;
System.debug('Valor 1 = ' + V1);
System.debug('Valor 2 = ' + V2);
IF(V1 > V2){system.debug('Valor 1 = ' + V1 + ' Valor 2 = ' + V2);}
Else{system.debug('Valor 2 = ' + V2 + ' Valor 1 = ' + V1);}
V1++;
V1++;
IF(V1 > V2){system.debug('Valor 1 = ' + V1 + ' Valor 2 = ' + V2);}
Else{system.debug('Valor 2 = ' + V2 + ' Valor 1 = ' + V1);}

//3.1 TESTE ALTERNATIVO EM LOOP (WHILE)
integer V1, V2;
V1 = 1;
V2 = 2;
System.debug('Valor 1 = ' + V1);
System.debug('Valor 2 = ' + V2);
while(V1<=5){
    IF(V1 > V2){system.debug('Valor 1 = ' + V1 + ' Valor 2 = ' + V2);}
Else{system.debug('Valor 2 = ' + V2 + ' Valor 1 = ' + V1);}
    V1++;
}

//3.2 TESTE ALTERNATIVO EM LOOP (WHILE) operador ternario ?
integer V1, V2;
V1 = 1;
V2 = 2;
System.debug('Valor 1 = ' + V1);
System.debug('Valor 2 = ' + V2);
while(V1<=5){
    system.debug(V1 > V2 ? ('Valor 1 = ' + V1 + ' Valor 2 = ' + V1) :
   ('Valor 2 = ' + V2 + ' Valor 1 = ' + V1));
               V1++;
}

//3.3 TESTE ALTERNATIVO EM LOOP (FOR)
integer V1, V2;
V1 = 1;
V2 = 2;
System.debug('Valor 1 = ' + V1);
System.debug('Valor 2 = ' + V2);

for(V1=V1; V1<=5; V1++){
    IF(V1 > V2){system.debug('Valor 1 = ' + V1 + ' Valor 2 = ' + V2);}
Else{system.debug('Valor 2 = ' + V2 + ' Valor 1 = ' + V1);}
    }

-----------------------------------------------------------------
//4 Ler dois valores (considere que não serão lidos valores iguais) e escrever o maior
//deles.
integer V1, V2;
V1 = 1;
V2 = 2;
System.debug('Valor 1 = ' + V1);
System.debug('Valor 2 = ' + V2);
IF(V1 > V2){system.debug('Valor maior = ' + V1 );}
Else{system.debug('Valor maior = ' + V2 );}
V1++;
V1++;
IF(V1 > V2){system.debug('Valor maior = ' + V1 );}
Else{system.debug('Valor maior = ' + V2 );}

-----------------------------------------------------------------
//5. Ler o ano atual e o ano de nascimento de uma pessoa. Escrever uma 
//mensagem que diga se ela poderá ou não votar este ano (não é necessário 
//considerar o mês em que a pessoa nasceu).
integer ANascimento, AVigente;
ANascimento = 2007;
AVigente = 2022;

System.debug('Ano de nascimento ' + ANascimento);
System.debug('Ano Vigente ' + AVigente);

IF(Anascimento > AVigente - 16) {system.debug('Incapaz de voto');}
Else {system.debug('Capaz de votar');}

ANascimento--;

IF(Anascimento > AVigente - 16) {system.debug('Incapaz de voto');}
Else {system.debug('Capaz de votar');}

--------------------------------------------------------------
//6 Defina as notas da 1a. e 2a. avaliações de um aluno. Calcular a média 
//aritmética simples e escrever uma mensagem que diga se o aluno foi ou não 
//aprovado (considerar que nota igual ou maior que 6 o aluno é aprovado). 
//Escrever também a média calculada.
string aluno = 'Bezerra da Silva';
decimal av1, av2, media;
av1 = 8;
av2 = 4;
media = (av1+av2)/2;
    
system.debug('nota av1 ' + av1);
system.debug('nota av2 ' + av2);
system.debug('média ' + media);

IF(av1 > 6){system.debug(aluno + ' foi aprovado');}
Else{system.debug(aluno + ' não foi aprovado');}

---------------------------------------------------------------
//7. Defina dois valores e imprimir uma das três mensagens a seguir:
// ‘Números iguais’, caso os números sejam iguais
//‘Primeiro é maior’, caso o primeiro seja maior que o segundo;
//‘Segundo maior’, caso o segundo seja maior que o primeiro.
integer V1, V2;
V1 = 1;
V2 = 2;
System.debug ('Valor 1 = ' + V1);
System.debug ('Valor 2 = ' + V2);
If(V1 > V2){System.debug('Primeiro valor maior');}
Else If(V1 == V2){System.debug('Valores iguais');}
Else{System.debug('Segundo valor maior');}
V1++;
If(V1 > V2){System.debug('Primeiro valor maior');}
Else If(V1 == V2){System.debug('Valores iguais');}
Else{System.debug('Segundo valor maior');}
V1++;
If(V1 > V2){System.debug('Primeiro valor maior');}
Else If(V1 == V2){System.debug('Valores iguais');}
Else{System.debug('Segundo valor maior');}

//7.1 TESTE ALTERNATIVO EM LOOP(WHILE)
integer V1, V2;
V1 = 1;
V2 = 2;
System.debug ('Valor 1 = ' + V1);
System.debug ('Valor 2 = ' + V2);
While(V1<=5){
    If(V1 > V2){System.debug('Primeiro valor maior');}
	Else If(V1 == V2){System.debug('Valores iguais');}
	Else{System.debug('Segundo valor maior');}
    V1++;
}

//7.2 TESTE ALTERNATIVO EM LOOP(FOR)
integer V1, V2;
V1 = 1;
V2 = 2;
System.debug ('Valor 1 = ' + V1);
System.debug ('Valor 2 = ' + V2);
For(V1=V1 ; V1<=5 ; V1++){
    If(V1 > V2){System.debug('Primeiro valor maior');}
    Else If(V1 == V2){System.debug('Valores iguais');}
    Else{System.debug('Segundo valor maior');}
}

--------------------------------------------------------------
//8. Faça um algoritmo para definir: a descrição do produto (nome), a quantidade
//adquirida e o preço unitário. Calcular e escrever o total (total = quantidade adquirida
//* preço unitário), o desconto e o total a pagar (total a pagar = total - desconto),
//sabendo-se que:
// Se quantidade <= 5 o desconto será de 2% -
// Se quantidade > 5 e quantidade <=10 o desconto será de 3% -
// Se quantidade > 10 o desconto será de 5%

String P = 'Bolsa';
Decimal Vp, Qt, T;
Vp = 189.90;
Qt = 5;
T = (Vp * Qt);

if(Qt <= 5){System.debug((T*0.98).setscale(2));}
else if (Qt >= 10){System.debug((T*0.95).setscale(2));}
else{System.debug((T*0.97).setscale(2));}

Qt++;
Qt++;
Qt++;
Qt++;
T = (Vp * Qt);

if(Qt <= 5){System.debug((T*0.98).setscale(2));}
else if (Qt >= 10){System.debug((T*0.95).setscale(2));}
else{System.debug((T*0.97).setscale(2));}

Qt++;
Qt++;
T = (Vp * Qt);

if(Qt <= 5){System.debug((T*0.98).setscale(2));}
else if (Qt >= 10){System.debug((T*0.95).setscale(2));}
else{System.debug((T*0.97).setscale(2));}

-----------------------------------------------------------------
//9 Faça um algoritmo para ler: número da conta do cliente, saldo, débito e crédito.
//Após, calcular e escrever o saldo atual (saldo atual = saldo - débito + crédito).
//Também testar se saldo atual for maior ou igual a zero escrever a mensagem &#39;Saldo
//Positivo&#39;, senão escrever a mensagem &#39;Saldo Negativo&#39;.
//Variáveis
String Cliente = 'Pedro Mocock';
Integer NConta = 55548;
Decimal SInicial, Debito, Credito, SAtual;
SInicial = 100.00;
Debito = 500.00;
Credito = 1125.00;
SAtual = SInicial + Credito - Debito;

System.debug('Cliente ' + Cliente);
System.debug('Conta ' + NConta);
System.debug('Saldo Atual' + SAtual);

if(SAtual >= 0){System.debug('Saldo Positivo');}
else{System.debug('Saldo Negativo');}

----------------------------------------------------------------
//Estrutura de repetição
//1 for
for(integer c=0; c<=100; c+=5){
    System.debug(c);
}

//2 for
integer n = 26;
    for(integer c=0; c<=n; c+=3){
    System.debug(c);
}

//3 for
for(integer c=0; c<=3; c++){
        if(c == 1){System.debug('Avance');}
        else if (c == 2){System.debug('Atenção');}
        Else if(c == 3){System.debug('Pare');}
    else {System.debug(c);}}

//4 for
//crie um loop que exiba de 5 a 49 de 3 em 3
for (integer i = 5; i<=49;i+=3){
    System.debug(i);
}	
//5 for
//crie um código que exiba de 6 até 666 de 6 em 6


//1 while
integer c = 1;
while(c<=10){
    System.debug(c);
    c++
}

//2 while
integer n = 0;
while(n <= 27){
	System.debug(n);
	n+=3;
}

//3 while
integer c = 1;
while(c<=10){
    if(c == 1){System.debug('Avance');}
        else if (c == 2){System.debug('Atenção');}
        Else if(c == 3){System.debug('Pare');}
    else {System.debug(c);}
    c++;
}

//4 while
//crie um loop que exiba de 5 a 49 de 3 em 3
integer i = 5;
while(i <= 49){
    System.debug(i);
    i+=3;
}

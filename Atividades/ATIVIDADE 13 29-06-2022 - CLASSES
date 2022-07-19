ATIVIDADE 13 - 29/06/2022 - CLASSES

//1. Crie uma classe Gato, com os atributos string nome, peso, raça, com os seguintes
//métodos:
//método miar, que imprime: *nome* disse: MIAAAAAUU.
//método andar, que imprime: *nome* está andando.
//método roronar, que imprime: “nome* está roronando.
//método infoGato, que imprime os valores dos atributos nome, peso, raça.
//Realize testes na classe criada, através dos objetos.

//CLASS Gatos
public class Gatos {
    Public String nome , raca ;
    Public Decimal peso , idade ;
    
    Public Void miar(){
        System.debug(nome + ' disse: MIAAAAAUUUUUU');
    }
    Public Void andar(){
        System.debug(nome + ' está Andando');    
    }
    Public Void ronronar(){
        System.debug(nome + ' está Ronronando');    
    }
    Public Void infogato(){
        System.debug('Nome: ' + nome + ' Raça: ' + raca + '\n Idade: ' + idade + ' Peso: ' + peso);    
    }
}


//APEX ENTER
Gatos G1 = New Gatos();
G1.nome = 'Pretinho';
G1.raca = 'Preta';
G1.peso = 4.5;
G1.idade = 3;

g1.miar();
g1.infogato();
System.debug(G1);

Gatos G2 = New Gatos();
G2.nome = 'Pirado';
G2.raca = 'Siames';
G2.peso = 6.5;
G2.idade = 4;

Gatos G3 = New Gatos();
G3.nome = 'Bolinha';
G3.raca = 'Tigrado';
G3.peso = 4;
G3.idade = 2;

Gatos G4 = New Gatos();
G4.nome = 'Branquinho';
G4.raca = 'Branca';
G4.peso = 5;
G4.idade = 9;

G1.miar();
G2.ronronar();
G3.andar();
G4.infogato();

System.debug(G2);
System.debug(G3);
System.debug(G4);

----------------------------------------------------------------
//2. Crie uma classe chamada Pizzaria, com o seguinte método:
//pedir(String pizza), com o parâmetro recebido verifique:
	//Se pizza igual a Calabresa, imprimir:
		//Pizza de Calabresa, valor R$ 45,00
	//Se pizza igual a 4 Queijos, imprimir:
		//Pizza 4 Queijos, valor R$ 50,00
	//Se pizza igual a Maria Bonita, imprimir:
		//Pizza Maria Bonita, R$ 60,00
	//Senão, imprimir
		//Não possuímos essa Pizza.
//Realize testes na classe criada, através dos objetos.

//CLASS Pizzaria
public class Pizzaria {
    Public Void Pedir (String pizza){
        If (pizza == 'Calabresa'){
            System.debug('Saindo una Pizza Di Calabresi, R$ 45,00');
        }Else If(pizza == '4 Queijos'){
            System.debug('Saindo una Pizza Di Catro Quejos, R$ 50,00');
        }Else If(pizza == 'Maria Bonita'){
            System.debug('Saindo una Maria Bonita, R$ 60,00');
        }Else {
            System.debug('Non Possuimos essa pizza ' + pizza + ' no cardápio, MamaMiiiiia!');
        }
}
}

//APEX ENTER OBJETO
Pizzaria P1 = New Pizzaria ();
P1.Pedir('Calabresa');
P1.Pedir('4 Queijos');
P1.Pedir('Maria Bonita');
P1.Pedir('Ralabresa');

Pizzaria P2 = New Pizzaria ();
P2.Pedir('Calabresa');
P2.Pedir('4 Queijos');
P2.Pedir('Maria Bonita');
P2.Pedir('Ralabresa');

Pizzaria P3 = New Pizzaria ();
P3.Pedir('Calabresa');
P3.Pedir('4 Queijos');
P3.Pedir('Maria Bonita');
P3.Pedir('Ralabresa');

Pizzaria P4 = New Pizzaria ();
P4.Pedir('Calabresa');
P4.Pedir('4 Queijos');
P4.Pedir('Maria Bonita');
P4.Pedir('Ralabresa');





------------------------------------------------------------------
//3. Crie uma classe chamada CalculadoraMagica, que tenha as funções abaixo. Todas as
//funções devem receber dois parâmetros(a,b) inteiros e devem retornar o resultado para fora
//da função.
//a. somar - retorna a soma de a e b
//b. subtrair - retorna a subtração de a e b
//c. dividir - retorna a divisão de a e b
//d. multiplicar - retorna a multiplicação de a e b
//e. quadradoDeA - retorna o valor de a ao quadrado.
//f. quadradoDeB - retorna o valor de b ao quadrado.
//g. aMaior - verifica se A é maior que B, se sim retorna A é maior, senão retorna A não
//é maior.
//h. media - retorna a media de a e b.


//CLASS MC

public class MC {
    Public Decimal A , B ;
    Public Void somar(){
        System.debug(A + ' + ' + B +' = ' + (A + B));
    }
    Public Void subtrair(){
        System.debug(A + ' - ' + B + ' = ' + (A - B));
    }
    Public Void multiplicar(){
        System.debug(A + ' X ' + B + ' = ' + (A * B));
    }
    Public Void dividir(){
        System.debug(A + ' / ' + B + ' = ' + (A / B).setscale(2));
    }
    Public Void QuadradoA(){
        System.debug(A + '² = ' + (A * A).setscale(2));
    }
    Public Void QuadradoB(){
        System.debug(B + '² = ' + (B * B).setscale(2));
    }
    Public Void MaiorQue(){
        If(A > B){
            System.debug('A é maior que B');
        }Else If(A == B){
            System.debug('A é igual a B');
        }Else {
            System.debug('A é menor que B');
        }
    }
    Public Void Media(){
        System.debug(A + ' + ' + B + ' = ' + ((A + B)/2).setscale(2));
    }
}

// APEX ENTER OBJETO

MC C1 = New MC ();
C1.A = 2;
C1.B = 10;

System.debug(C1);
C1.Somar();
C1.Subtrair();
C1.Multiplicar();
C1.Dividir();
C1.QuadradoA();
C1.QuadradoB();
C1.MaiorQue();
C1.Media();

//TESTE EM WHILE

MC C1 = New MC ();
C1.A = 2;
C1.B = 10;

System.debug(C1);
While (C1.A<=6 && C1.B <=20){
    C1.Somar();
	C1.Subtrair();
	C1.Multiplicar();
	C1.Dividir();
	C1.QuadradoA();
	C1.QuadradoB();
	C1.MaiorQue();
	C1.Media();
    C1.A+=0.5;
    C1.B+=2.5;
}

//TESTE COM MATH RANDOM
MC C1 = New MC ();
C1.A = 2;
C1.B = 10;

System.debug(C1);
While (C1.A<=6){
    C1.B=(Decimal.valueof(Math.random() * 200 ).setscale(2));
    System.debug(C1);
    C1.Somar();
	C1.Subtrair();
	C1.Multiplicar();
	C1.Dividir();
	C1.QuadradoA();
	C1.QuadradoB();
	C1.MaiorQue();
	C1.Media();
    C1.A+=0.7;
}

----------------------------------------------------------------
//Crie uma classe chamada Padaria, com os atributos:
//Atributos públicos: nomePadaria, Cidade.
//Atributos privados: lucroMes, codContador, lucroAnual    
    
//métodos set e get dos atributos privados.
//método setPadaria(nomePadaria, Cidade,lucroMes, codContador, lucroAnual)
//atribuir valores para cada uma das variáveis

//CLASS Padaria
public class Padaria {
    Public String Nome, Cidade;
    Private Decimal LM, CC, LA;
    
    Private void setLM(decimal NovoLM){
        LM = NovoLM;
    }
    Private void setLA(decimal NovoLA){
        LA = NovoLA;
    }
    Private void setCC(decimal NovoCC){
        CC = NovoCC;
    }
    Private Decimal getLM(){
        Return LM;
    }
    Private Decimal getLA(){
        Return LA;
    }
    Private Decimal getCC(){
        Return CC;
    }
    Public void setPadaria(String NovoNome, String NovaCidade,decimal NovoLM, Decimal NovoLA, Decimal NovoCC){
        Nome = NovoNome;
        Cidade = NovaCidade;
        LM = NovoLM;
        LA = NovoLA;
        CC = NovoCC;
    }

}

//APEX ENTER OBJETO

Padaria P1 = New Padaria();

P1.setPadaria('Paodaria', 'Cidadaria', 15000.05, 500000.55, 5547);
System.debug(P1);

Padaria P2 = New Padaria();
P2.Nome = 'Paodoria';
P2.Cidade = 'São Paulo';

System.debug(P2);
P2.setPadaria('Paodoria', 'São Paulo', 20000, 300000, 5548);
System.debug(P2);

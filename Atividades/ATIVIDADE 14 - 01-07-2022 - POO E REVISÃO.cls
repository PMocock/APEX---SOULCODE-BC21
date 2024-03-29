//ATIVIDADE 01/07/2022 POO E REVISÃO
//1.Escreva a classe Contador que encapsule um valor usado para contagem. Essa classe deve esconder o valor encapsulado 
//de programadores-usuários, fazendo com que o acesso ao valor seja feito somente através de 3 métodos que devem zerar,
//incrementar(+1) e imprimir o valor do contador. 

//CLASSE Contador

public class Contador {
    Private Integer VS = 0;
    Public void Contar(Integer V){
        Integer VT = V + VS;
        System.debug(VT);
        System.debug('VS = ' + VS);
    }
    Public Integer Incrementar (){
        VS++;
        Return VS;
    }
    Public Integer Zerar(){
        VS = 0;
        Return VS;
    }
}

//APEX Objeto

Contador C1 = New Contador();
C1.Contar(1);
C1.Incrementar();
C1.Contar(0);
C1.Zerar();
C1.Contar(1);

------------------------------------------------------------------------------------
//2.Escreva uma classe que representa Alunos. A classe deve guardar os seguintes dados do aluno: matrícula,
//nome, 2 notas de prova e 1 nota de trabalho, todos são atributos públicos. Escreva os seguintes métodos para esta classe: 
//mediaFinal - calcula a média final do aluno e retornar o seu valor 
//atingiuMedia - calcula quantos pontos faltam para atingir a média. Se a média final for igual ou superior a 7, retornar 0, senão
//retornar quantos pontos faltam para 7.

//CLASS Alunos 

public class Alunos {
    Public String Alu , Mat ;
    Public Decimal N1 , N2 , NT ;
    
    Public Void CalcularMedia(){
        Decimal MF = (( N1 + N2 + NT ) / 3).setscale(2) ;
        System.debug('Aluno ' + Alu + ' Matrícula ' + Mat);
        System.debug( 'Média = ' + MF);
    }
    Public Void AtingirMedia(){
        Decimal MF = (( N1 + N2 + NT ) / 3).setscale(2) ;
        If (MF >= 7){
            System.debug('Aluno ' + Alu + ' Matrícula ' + Mat);
            System.debug('Faltam 0 pontos para atingir a média');
        }Else {
            System.debug('Aluno ' + Alu + ' Matrícula ' + Mat);
            System.debug('Faltam ' + (7 - MF) + ' para atingir média');
        }    
    }
}

//APEX OBJECT

Alunos A1 = New Alunos();
A1.Alu = 'Jeremias';
A1.Mat = '5548789';
A1.N1 = 10;
A1.N2 = 5;
A1.NT = 5;

A1.CalcularMedia();
A1.Atingirmedia();

System.debug(A1);

-------------------------------------------------------------------
//3. Crie uma classe para representar uma pessoa, com os atributos privados de nome,
//data de nascimento e altura. Crie os métodos públicos necessários para sets e gets e 
//também um método para imprimir todos dados de uma pessoa. Crie um método para 
//calcular a idade da pessoa. Realize os testes via objetos.

//CLASS P

public class P {
    Private String NP;
    Private Date DN;
    Private Decimal AP;
    
    Public Void GetNP(){
        System.debug('Nome da pessoa: ' + NP);
    }
    Public Void GetDN(){
        System.debug('Data de Nascimento da pessoa: ' + DN);
    }
    Public Void GetAP(){
        System.debug('Altura da pessoa: ' + AP);
    }
    
    Public Void SetNP(String NP1){
        NP = NP1;
    }
    Public Void SetDN(integer D, integer M, integer A){
        DN = Date.newInstance(A, M, D);
    }
    Public Void SetAP(Decimal AP1){
        AP = AP1;
    }
    
    Public Void GetAge(){
        Decimal Idade = (DN.daysBetween(Date.today())/365);
        System.debug(NP + ' tem ' + Idade);
    }
}

//APEX OBJECT

P P1 = New P();
P1.SetNP('Ventania na Estrada');
P1.GetNP();
P1.SetDN(04 , 08 , 1992);
P1.GetDN();
P1.SetAP(1.75);
P1.GetAP();
P1.GetAge();

----------------------------------------------------------------------------
//4.Crie uma classe Data que inclua três atributos privados: 
//mês (inteiro), dia (inteiro) e ano (inteiro). Crie métodos:
	//Métodos set e get de cada atributo, aceitando apenas os valores ditos abaixo para cada atributos (sets), 
	//caso contrário emitir mensagem de erro:
		//mes - 1 a 12
		//dia - 1 a 31
		//ano - 1900 a 2199
	//Método setData que recebe 3 parâmetros e que atribui valores para os 3 atributos, da classe. 
	//Respeitando os valores aceitos, caso contrário emita erro tbm. 
	//método mostrarData, esse método imprime a data separado por ‘ - ‘

//CLASS Data
public class Data {
    //ATRIBUTOS
    Private Integer A , M , D;
    
    //MÉTODOS SET COM IF
    Public Void SetA(Integer A1){
        If (A1 <= 2199 && A1 >= 1900){
            A = A1;
        	System.debug('Ano = ' + A);    
        }Else {
            System.debug('Ano inválido, insira um valor entre 1900 - 2199');
        }
    }
    Public Void SetM(Integer M1){
        If (M1 <= 12 && M1 >= 1){
            M = M1;
        	System.debug('Mês = ' + M);
        }Else {
            System.debug('Mês não correspondente ao calendário ocidental dos lúcidos seu pirado. insira um ano entre 1 e 12');
        }
    	}
    Public Void SetD(Integer D1){
        If (D1 <= 31 && D1 >= 1){
            D = D1;
        	System.debug('Dia = ' + D);
        }Else {
            System.debug('Dia não correspondente ao calendário ocidental dos lúcidos seu pirado. insira um ano entre 1 e 31');
        }
    }
    
    //MÉTODO SETDATA COM IF
    Public Void SetData(Integer D1 , Integer M1 , Integer A1){
        If (A1 > 2199 || A1 < 1900){
            System.debug('Ano inválido, insira um valor entre 1900 - 2199');
        }Else If (M1 > 12 && M1 < 1){
            System.debug('Mês não correspondente ao calendário ocidental dos lúcidos seu pirado. insira um ano entre 1 e 12');
        }Else If (D1 > 31 && D1 < 1){
            System.debug('Dia não correspondente ao calendário ocidental dos lúcidos seu pirado. insira um ano entre 1 e 31');
        }Else {
            A = A1;
        	System.debug('Ano = ' + A);
            M = M1;
        	System.debug('Mês = ' + M);
            D = D1;
        	System.debug('Dia = ' + D);
            System.debug('Dia ' + D + ' Mês ' + M + ' Ano ' + A);
        }
    }
    //MÉTODOS GET
    Public Integer GetA(){
        Return A;
    }
    Public Integer GetM(){
        Return M;
    }
    Public Integer GetD(){
        Return D;
    }
}

//APEX OBJECT

//Criar Objeto
Data D = New Data();
System.debug(D);

//Sets de atributos
D.SetD (0);
D.SetM (0);
D.SetA (1899);
System.debug(D);

//Gets de atributos
System.debug(D.GetD());
System.debug(D.GetM());
System.debug(D.GetA());

//SetData completo
D.SetData( 04 , 05 , 1992 );
System.debug(D);

--------------------------------------------------------------------------------------------

-----------------------------------------------------------

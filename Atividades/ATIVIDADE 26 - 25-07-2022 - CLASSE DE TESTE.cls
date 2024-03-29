//ATIVIDADE 26 - 25-07-2022 - CLASSE DE TESTE (extra)

//QUESITO 1 - AccountTriger

//TRIGGER AccountTrigerATV26

trigger AccountTrigerATV26 on Account (before insert, after insert) {
    //IRÁ CONVERTER EM UMA STRING O TIPO DE OPERAÇÃO QUE ACIONOU O GATILHO
    String Event = String.ValueOf(trigger.operationType);
    
    If (Event == 'AFTER_INSERT'){
        List<Task> lstT = new List <task>();
        For(Account account: Trigger.new){
            If (account.AnnualRevenue >= 500000){
                Task NewTask = New Task(
                Subject = 'Dar boas vindas a ' + account.name,
                Priority = 'low',
                //relativo a em tarefa -> WhatId
                WhatId = account.Id
            );
            lstT.add(NewTask);
            }
        }
        Insert lstT;
    }
}

---------------------------------------------------------------
//TEST CLASS AccountTrigerATV26

@IsTest
Public Class AccountTrigerATV26Test {
    @IsTest
    //Teste
    Public Static Void TestNewAccount(){
        //Criação da conta de teste
        Account test = New Account();
    	test.Name= 'Conta Teste Trigger Maluco'; 
    	test.Rating = 'Hot';
    	test.Type = 'Prospect';
        //Ativador do AccountTrigerATV25
    	test.AnnualRevenue = 1000000;
    	test.Phone = '8899554466';
        //Teste de dados da conta
        System.debug(test);
        //Insert da conta 
        Insert test;
        //Ativação do trigger after insert
        //Teste de Inserção do registro da nova conta
        Account L = [Select Id, (SELECT WhatId FROM tasks WHERE WhatId =: test.Id) FROM Account WHERE Id =: test.Id];
        System.assert(test.Id == L.Id, 'A Conta não foi criada');
        //Teste de dados da conta
        System.debug(L);
        //Test de Inserção do registro da nova Tarefa Vinculada à Conta
        Task T = [SELECT WhatId FROM Task WHERE WhatId =: test.Id];
        System.assert(test.Id == T.WhatId, 'A Tarefa não foi criada');
        //Teste de dados da Tarefa
        System.debug(T);
    }        
}

---------------------------------------------------------------
//QUESITO 2 - Opportunity Trigger

//TRIGGER OpportunityTriggerATV26

trigger OpportunityTriggerATV26 on Opportunity (Before Insert) {
    For (Opportunity opp : Trigger.new){
        If (opp.Amount >= 100000 && opp.Amount <= 200000){
            opp.StageName = 'Value Proposition';
        }Else {
            opp.StageName = 'Prospecting';
        }
    }
}

------------------------------------------------
//TEST CLASS OpportunityTriggerTestATV26

@IsTest
Public Class OpportunityTriggerTestATV26 {
    //Teste
    @IsTest
    Public Static Void TestNewOpportunity(){
       //Criação da Oportunidade de Teste
       Opportunity O = New Opportunity();
       O.Name = 'Test Opp';
       O.StageName = 'Prospecting';
       O.CloseDate = Date.Today()+5;
       //Ativador do OpportunityTrigger
       O.Amount = 150000;
       //Teste de dados da Oportunidade
       System.Debug(O);
       //Insert da Oportunidade
       //Ativação do trigger BEFORE INSERT tem que mudar de Prospecting para Value Proposition
       Insert O;
       //Teste de Inserção da nova Oportunidade e modificação do Stagename
       Opportunity Op = [SELECT Id, Name, StageName FROM Opportunity WHERE Id =: O.Id];
       System.Assert(O.Id == Op.Id, 'A Conta não foi criada!');
       System.Assert(Op.StageName == 'Value Proposition');
       //Teste de dados da Oportunidade
       System.Debug(Op); 		        
    }
    @IsTest
    Public Static Void TestNewOpportunityStagename(){
    //Criação da Oportunidade de Teste sem Stagename
    Opportunity O1 = New Opportunity();
       O1.Name = 'Test Opp 1';
       O1.CloseDate = Date.Today()+5;
       O1.Amount = 300000;
       //Teste de dados da Oportunidade
       System.Debug(O1);
       //Insert da Oportunidade
       //Ativação do trigger BEFORE INSERT tem que mudar de Prospecting para Value Proposition
       Insert O1;
       //Teste de Inserção da nova Oportunidade e modificação do Stagename
       Opportunity Op = [SELECT Id, Name, StageName FROM Opportunity WHERE Id =: O1.Id];
       System.Assert(O1.Id == Op.Id, 'A Conta não foi criada!');
       System.Assert(Op.StageName == 'Prospecting');
       //Teste de dados da Oportunidade
       System.Debug(Op); 		
    }
}

-------------------------------------------------------------
// QUESITO 03 - CLASSE CalculadoraA

// CLASS CalculadoraAATV26

public class CalculadoraAATV26 {
    Public Static Decimal Somar (Decimal a, Decimal b){
        System.Debug('Somou! Oh yeah!');
        Return a + b;
    }
    Public Static Decimal Subtrair (Decimal a, Decimal b){
        System.Debug('Subtraiu! Oh yeah!');
        Return a - b;
    }
    Public Static Decimal Multiplicar (Decimal a, Decimal b){
        System.Debug('Multiplicou! Oh yeah!');
        Return a * b;
    }
    Public Static Decimal Dividir (Decimal a, Decimal b){
        System.Debug('Dividiu! Oh yeah!');
        Return a / b;
    }
    Public Static Decimal Media (Decimal a, Decimal b){
        System.Debug('Tirou a Média! Oh yeah!');
        Return (a + b)/2;
    }
}

----------------------------------------------------
//TEST CLASS CalculadoraAATV26Test

@IsTest
Public Class CalculadoraAATV26Test {
    //TESTE
    @IsTest
    Public Static Void TestSomar (){
        //TESTE DE EXECUÇÃO DO MÉTODO SOMAR
        Decimal T = CalculadoraAATV26.Somar(1,2);
        //TESTE DO RESULTADO DO MÉTODO SOMAR
        System.Debug('T = ' + T);
        System.Assert(T == 3, 'Não deu pra Somar');
    }
    @IsTest
    Public Static Void TestSubtrair (){
        //TESTE DE EXECUÇÃO DO MÉTODO SUBTRAIR
        Decimal T = CalculadoraAATV26.Subtrair(3,2);
        //TESTE DO RESULTADO DO MÉTODO SUBTRAIR
        System.Debug('T = ' + T);
        System.Assert(T == 1, 'Não deu pra Subtrair');
    }
    @IsTest
    Public Static Void TestMultiplicar (){
        //TESTE DE EXECUÇÃO DO MÉTODO MULTIPLICAR
        Decimal T = CalculadoraAATV26.Multiplicar(3,5);
        //TESTE DO RESULTADO DO MÉTODO MULTIPLICAR
        System.Debug('T = ' + T);
        System.Assert(T == 15, 'Não deu pra Multiplicar');
    }
    @IsTest
    Public Static Void TestDividir (){
        //TESTE DE EXECUÇÃO DO MÉTODO DIVIDIR
        Decimal T = CalculadoraAATV26.Dividir(20,4);
        //TESTE DO RESULTADO DO MÉTODO DIVIDIR
        System.Debug('T = ' + T);
        System.Assert(T == 5, 'Não deu pra Dividir');   
    }
    @IsTest
    Public Static Void TestMedia (){
        //TESTE DE EXECUÇÃO DO MÉTODO MEDIA
        Decimal T = CalculadoraAATV26.Media(20,2);
        //TESTE DO RESULTADO DO MÉTODO MEDIA
        System.Debug('T = ' + T);
        System.Assert(T == 11, 'Não deu pra tirar a Média');
    }
}

-----------------------------------------------------------
COMENTÁRIO

Focado em executar o básico de trigger para dominar sua funcionalidade, eu percorri os caminhos mais simples que encontrei dentro da lógica de programação que desenvolvi com o conhecimento novo que venho adquirindo. O interessante dos testes é que o erro também deve ser considerado dentro da perspectiva da funcionalidade do código, pensando nesse importante fator, permiti que alterações simples nas variáveis fossem capazes de demonstrar os erros contidos nos códigos de trigger e class que desenvolvi no decorrer da atividade.

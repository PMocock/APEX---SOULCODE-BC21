ATIVIDADE 20 - ATIVIDADE PRÁTICA DML 11/07/2022 

//ATIVIDADE PRÁTICA
//Apex DML
//1. Com Apex, insira 2 leads atribuindo valores aos campos considerados obrigatórios. Essa questão deve ser feita SEM LISTA e usando a notação de construtor.

//Com Apex, insira 2 leads atribuindo valores aos campos considerados obrigatórios. 
//Essa questão deve ser feita SEM LISTA e usando a notação de construtor.
Lead L1 = New Lead (
	FirstName = 'Mac',
    LastName = 'Lovin',
    Company = 'Projeto X',
    Phone = '555887799',
    Status = 'Closed - Converted'
);

Lead L2 = New Lead (
	FirstName = 'Mac2',
    LastName = 'Lovin2',
    Company = 'Projeto X2',
    Phone = '522287799',
    Status = 'Closed - Converted'
);

Lead L3 = New Lead (
	FirstName = 'Mac',
    LastName = 'Lavin',
    Company = 'Projeto Y',
    Phone = '555887799',
    Status = 'Closed - Not Converted'
);

Insert L1;
Insert L2;
Insert L3;

-------------------------------------------------------------------------------------------------------
//2. Com Apex, insira 2 oportunidades atribuindo valores aos campos considerados obrigatórios. 
// Essa questão deve ser feita SEM LISTA e usando atribuição direta no objeto.

Opportunity O1 = new Opportunity (
 Name = 'Oportunidade 1',
 CloseDate = Date.newInstance(2022,11,07),
 Amount = 90000,
 type = 'Existing Customer - Replacement',
 Stagename = 'Qualification'
 
);
 insert O1;

Opportunity O2 = new Opportunity (
 Name = 'Oportunidade 1',
 CloseDate = Date.newInstance(2022,16,07),
 Amount = 450000,
 type = 'Existing Customer - Replacement',
 Stagename = 'Qualification'
 
);


Opportunity O3 = new Opportunity (
 Name = 'Oportunidade 3',
 CloseDate = Date.newInstance(2022,16,07),
 Amount = 450000,
 type = 'Existing Customer - Replacement',
 Stagename = 'Qualification'
 
);
 insert O3;

-----------------------------------------------------------------------------
//3. Com Apex, insira uma lista de 10 
//Contatos com valores obrigatórios, utilizando apenas um insert.

Contact C1 = New Contact(FirstName='José',LastName='Sem pé');
Contact C2 = New Contact(FirstName='José',LastName='Sem pé');
Contact C3 = New Contact(FirstName='José',LastName='Sem pé');
Contact C4 = New Contact(FirstName='José',LastName='Sem pé');
Contact C5 = New Contact(FirstName='José',LastName='Sem pé');
Contact C6 = New Contact(FirstName='José',LastName='Sem pé');
Contact C7 = New Contact(FirstName='José',LastName='Sem pé');
Contact C8 = New Contact(FirstName='José',LastName='Sem pé');
Contact C9 = New Contact(FirstName='José',LastName='Sem pé');
Contact C10 = New Contact(FirstName='José',LastName='Sem pé');

List <Contact> C = New List <Contact> ();

C.Add (C1);
C.Add (C2);
C.Add (C3);
C.Add (C4);
C.Add (C5);
C.Add (C6);
C.Add (C7);
C.Add (C8);
C.Add (C9);
C.Add (C10);

Insert C;

----------------------------------------------------------------------
//4. Com Apex, crie uma oportunidade, 
// a oportunidade deverá ter um nome, valor de 600000 
// e fase Qualification, origem do Lead Other 
// e outros campos obrigatórios. Associe a oportunidade 
// a qualquer registro de sua org através do campo accountId.

Opportunity O12 = new Opportunity (
 Name = 'Oportunidade de Ouro',
 CloseDate = Date.newInstance(2022,11,09),
 Amount = 600000,
 LeadSource = 'Other',
 Stagename = 'Qualification',
 Accountid = '0018Z00002a6XpCQAU' 
);

Insert O12;

Opportunity O13 = new Opportunity (
 Name = 'Oportunidade de Prata',
 CloseDate = Date.newInstance(2022,11,10),
 Amount = 60000.05,
 LeadSource = 'Other',
 Stagename = 'Qualification',
 Accountid = '0018Z00002a4fsHQAQ' 
);

Insert O13;

-----------------------------------------------------------------------
//5. Com Apex, crie uma conta chamada AtividadeBraba,
// hot, telefone  88998877, receita anual 450000
// e após isso crie 2 contatos associados a essa conta,
// contato B1 e B2 e 1 oportunidade também,
// atenção aos campos obrigatórios e a associação(accountid).

Account C3 = New Account (
	Name = 'Atividade Braba!',
    Rating = 'Hot',
    Phone = '88998877',
    AnnualRevenue = 450000
);

Insert C3;

Contact B1 = New Contact(
	FirstName = 'Contato',
    LastName = 'Brabo',
	Accountid = C3.Id    
);
Insert B1;

Contact B2 = New Contact(
	FirstName = 'Contatinho',
    LastName = 'Brabinho',
	Accountid = C3.Id    
);
Insert B2;

Opportunity O14 = New Opportunity(
	Name = 'Oportunidade Braba',
    CloseDate = Date.newInstance(2022,07,20),
 	Amount = 6000,
 	LeadSource = 'Other',
 	Stagename = 'Qualification',
 	Accountid = C3.Id
);
Insert O14;

//TESTE
SELECT Id, Name, (SELECT Id, Name FROM Opportunities), (SELECT Id, Name FROM Contacts) FROM Account

--------------------------------------------------------------
//6. Com Apex, atualize 3 registros de conta de sua escolha
// alterando valores dos campos nome, telefone e
// classificação, prioridade do cliente e receita anual.

Account C2 = New Account(
	Name = 'Updated account 1',
    Rating = 'Cold',
    Phone = '88445566',
    CustomerPriority__c = 'High',
    AnnualRevenue = 123000,
    Id = '0018Z00002a6XwOQAU'
);

Update C2;

Account C3 = New Account(
	Name = 'Updated account 2',
    Rating = 'Hot',
    Phone = '88445566',
    CustomerPriority__c = 'Low',
    AnnualRevenue = 10000.65,
    Id = '0018Z00002a6XwOQAU'
);

Update C3;

Account C1 = New Account(
	Name = 'Updated account 3',
    Rating = 'Warm',
    Phone = '88445566',
    CustomerPriority__c = 'Low',
    AnnualRevenue = 103000.65,
    Id = '0018Z00002a6XpCQAU'
);

Update C1;

---------------------------------------------------------
//7. Com Apex, atualize o estado/província
//de cobrança para CE de todas as contas que
//possuem o estado/província vazios(null).
List<account> C = [SELECT Id, Name, BillingState FROM account WHERE BillingState = null];

For(Account conta: C){
    conta.BillingState = 'CE';
    Update C;
}
System.debug(C);

------------------------------------------------------------------
//8. Com Apex, atualize todos os leads que não 
// possuem classificação para COLD.

List<Lead> L = [SELECT Id, Name, Rating FROM Lead WHERE Rating = null];

For(Lead leads: L){
	leads.Rating = 'Cold';
}
Update L;

//TESTE
SELECT Id, Name, Rating FROM Lead

-------------------------------------------------------------------
//9. Delete 3 registros de sua escolha em Oportunidade e Contas.

Account C4 = New Account(
	Id = '0018Z00002a6XpCQAU'
);

Delete C4;

Account C5 = New Account(
	Id = '0018Z00002a6U6SQAU'
);

Delete C5;

Opportunity O16 = New Opportunity(
	Id = '0068Z00001XT3QlQAL'
);

Delete O16;

//10. Delete as contas com data de criação para o dia de HOJE.

List <Account> A = [SELECT Id, Name, CreatedDate FROM Account WHERE CreatedDate = TODAY];

Delete A;

ATIVIDADE 19 - 08/07/2022 - SOQL - O RETORNO DO BOSS
// Mago Iniciante

//1. Retorne todas as contas agrupadas pelo tipo de Negócio

1.1SELECT Id, Type, Name FROM Account GROUP BY Type, Name, Id

1.2 (NANA) 
SELECT Name, Type FROM Account GROUP BY Name,Type HAVING Type != NULL

------------------------------------------------------------------
//2. Some os valores de todas as oportunidades que foram perdidas no ultimo mês e agrupe
// pelo motivo da perda

2.1 SELECT Stagename, Closedate, MOTIVO_DA_PERDA__c, Name, SUM(Amount) FROM Opportunity WHERE Stagename = 'Closed Lost' AND Closedate > LAST_MONTH GROUP BY Stagename, Closedate, Name, MOTIVO_DA_PERDA__c

2.2 (Anderson)
SELECT Motivo__c, SUM(Amount) FROM Opportunity WHERE Stagename = 'Closed Lost' AND CloseDate = LAST_MONTH GROUP by motivo__c

----------------------------------------------------------------
//3. Retorne todos os contatos das contas que possuem contas pai

3.1 SELECT Id, Firstname, Lastname, Account.Name FROM Contact WHERE Accountid != Null GROUP BY Account.Name

3.2 (Bruno)
SELECT (SELECT Name FROM contacts) FROM Account WHERE ParentId != Null

------------------------------------------------------------------------
//4. Retorne o número de registros de contatos da conta &#39;Restaurante Gifara&#39;

4.1 SELECT COUNT(Id), Account.Name FROM Contact WHERE Account.Name = 'Restaurante Gifara' 

4.2 (Talles)
SELECT COUNT(Name) FROM Contact WHERE Account.name = 'Restaurante Gifara'

4.3 SELECT Name, COUNT(Id) FROM Contact WHERE Account.name Like 'Restaurante Gifara' GROUP BY Name

-----------------------------------------------------------------------
//5. Retorne o número de registros de Oportunidades da conta &#39;Restaurante Gifara&#39;

5.1 SELECT COUNT(Id), Name FROM Opportunity WHERE Account.name = 'Restaurante Gifara' GROUP BY Account.name

5.2 Select COUNT(ID) from opportunity where account.name like '%restaurante%girafa%'

5.3(NANA)
SELECT AccountId,Count(Id),Account.Name
FROM Opportunity
GROUP BY AccountId,Account.Name 
HAVING AccountId != null 
AND Account.Name  = ' Restaurante Gifara'

------------------------------------------------------------------
//6. Selecione todos os usuários que fizeram o login mês passado

6.1 SELECT Id, Name, LastLoginDate FROM User Where LastLoginDate = LAST_MONTH

-----------------------------------------------------------------------
//7. Selecione o Id e Nome dos tipos de registro do objeto Despesa e Oportunidade

7.1 (Lúcio)
SELECT Id, name, (SELECT name FROM Despesas__r) FROM opportunity

7.2 (JOAQUIM)
SELECT Id, name, (SELECT name FROM Projetos__r), (SELECT name FROM Opportunities) FROM Account

//8. Selecione todos os Leads que possuem o Email igual

8.1 (MARCOS)
SELECT Count(Id), Email FROM Lead GROUP BY Email HAVING Count(Id) > 1

8.2 SELECT Name, Count(Id), Email FROM Lead GROUP BY Email, Name HAVING Count(Id) > 1

----------------------------------------------------------------------
//9. Selecione todas as contas que começam com Soul e Terminam com Code

9.1 SELECT Id, Name FROM Account WHERE Name LIKE 'Soul%' AND Name LIKE '%Code'

---------------------------------------------------------------
//10. Selecione todos os casos que são estão abertos mais de 2 semanas

10.1 SELECT Id, CaseNumber, AccountId, CreatedDate FROM Case WHERE Status != 'Closed' AND CreatedDate > LAST_N_WEEKS:2

10.2 (NANA)
SELECT Id,CaseNumber,FORMAT(CreatedDate )
FROM Case 
WHERE Status != 'Closed' AND Case.CreatedDate < LAST_N_WEEKS:2

------------------------------------------------------------------
//11. Selecione qual são os tipos de caso que são mais abertos durante o mês atual

11.1 SELECT Type, COUNT(id) FROM Case WHERE CreatedDate = THIS_MONTH GROUP BY Type

11.2(Greg)
Select Type, Count(CaseNumber) cnt From Case Group By Rollup(Type) Order By Count (casenumber) DESC

11.3(Antonio)
SELECT Type, COUNT(Id) FROM Case WHERE CreatedDate = THIS_MONTH GROUP BY Type ORDER BY COUNT(Id) DESC

11.4(Anderson)
Select Type, Count(CaseNumber) cnt From Case THIS_MONTH where type != null  Group By type Order By Count
(casenumber) DESC

--------------------------------------------------------------------------
//12. Selecione quais são as despesas criadas por empresas que estão inativas

12.1 SELECT Name, (SELECT Tipo_de_Despesas_c FROM Despesas_r)
FROM Account WHERE (NOT Active__c Like 'Yes')

12.2 (NANA)
SELECT Conta__c,Conta__r.Name,TipoDespesa__c,Conta__r.Active__c
FROM Despesa__c
WHERE Conta__r.Active__c = 'No'

//13. O Time de negócios gostaria de saber quais são os clientes que possuem o melhor
// faturamento, e quais são os tipos de empresa que possuem.

13.1 SELECT Name, FORMAT(AnnualRevenue), Industry 
FROM Account WHERE AnnualRevenue != null ORDER BY AnnualRevenue DESC

13.2


//14. Retorne quais contas foram criadas/alteradas por usuários que não são administradores
// do Sistema.

14.1 SELECT Name FROM Account WHERE CreatedById IN (SELECT Id FROM User WHERE ProfileId != '00e8a000001yiDaAAI')

14.2 (Mariane)
SELECT Name, CreatedBy.Profile.Name, LastModifiedBy.Profile.name 
FROM Account WHERE CreatedBy.Profile.Name != 'System Administrator' 
OR LastModifiedBy.Profile.name != 'System Administrator' 

14.3 (Lucio)
Select name, CreatedBy.Profile.Name  from account 
where CreatedBy.Profile.Name != 'System Administrator' 
or LastModifiedBy.Profile.Name != 'System Administrator'

14.4 (NANA)
SELECT Id, name
FROM Account
WHERE  CreatedBy.Profile.Name != 'System Administrator' 
OR  LastModifiedBy.Profile.Name != 'System Administrator' 
OR LastModifiedBy.Profile.Name != 'Administrador do sistema' 
OR CreatedBy.Profile.Name != 'Administrador do sistema'

-----------------------------------------------------------------------------------------
// Mago médio

//1. Imprima no apex o nome e status dos leads com status “working” e os “not
// contacted” e que possuam ‘Co’ em qualquer parte do nome&#39;&#39;.

1.1 Map<Id,Lead> Leads = New Map<Id,Lead>([SELECT Name, Status FROM Lead WHERE Name LIKE '%Co%' AND (Status LIKE '%Not contacted%' OR Status LIKE '%Working%')]);

For(Lead Leads : Leads.values()){
    System.debug('Informações do Lead');
    System.debug('Nome:' + Leads.Name);
    System.debug('Status:' + Leads.Status);
    System.debug('\n');
}

1.2 (NANA)
List <lead> Resgateleads = [
	SELECT name,Company,State,Email FROM lead 
	WHERE State LIKE 'CA' OR State LIKE 'VA'
	ORDER BY Name DESC];

SYSTEM.debug(Resgateleads);          //mostra a Lista inteira

for(lead a : Resgateleads){
    system.debug('Nome: '+a.name+'  |Empresa: '+a.Company+'  |State: '+a.state+'  |Email: '+a.Email);    
}           //exibe a Lista organizada

// 2. Imprima no apex o nome, cargo e telefone dos contatos que possua United ou Ltd
// em qualquer parte do nome da conta.

2.1 
map<id,Contact> Contacts = new map<id,Contact>([select Name, Title, Phone from Contact where Account.Name like '%United%' or Account.Name like '%Ltd%
for(Contact Contacts : Contacts.values()){
    system.debug('informações dos Contatos');
    system.debug('nome:' + Contacts.Name);
     system.debug('cargo:' + Contacts.Title);
    system.debug('telefone:' + Contacts.Phone);
     system.debug('\n');
}

2.2
Map<Id,Contact> Contacts = New Map<Id,Contact>([
    SELECT Name, Title, Phone FROM Contact 
    WHERE Account.Name LIKE '%United%' 
    OR Account.Name LIKE '%Ltd%
]);
    
For(Contact Contacts : Contacts.Values()){
    system.debug('Informações dos Contatos');
    system.debug('Nome:' + Contacts.Name);
    system.debug('Cargo:' + Contacts.Title);
    system.debug('Telefone:' + Contacts.Phone + '\N');
}

2.3 (Greg)
List<Contact> contatos = [Select Name, Title, Phone, Account.Name From Contact Where Account.name Like '%United%' Or Account.name Like '%Ltd%'];

For(Contact contact:contatos){
    System.debug('Informações');
    System.debug('Nome: ' + contact.name);
    System.debug('Cargo: ' + contact.Title);
    System.debug('Telefone: ' + contact.Phone);
    System.debug('Nome da Conta: ' + contact.Account.Name);
    System.debug('\n');
}

2.4 (Soraya)
List<Contact> contatos = [Select Name, Title, Phone, Account.Name From Contact Where Account.name Like '%United%' Or Account.name Like '%Ltd%'];

For(Contact contact:contatos){
    System.debug('Informações');
    System.debug('Nome: ' + contact.name);
    System.debug('Cargo: ' + contact.Title);
    System.debug('Telefone: ' + contact.Phone);
    System.debug('Nome da Conta: ' + contact.Account.Name);
    System.debug('\n');
}

2.5
List <Contact> C = [SELECT Name, Title, Phone, Account.Name FROM Contact WHERE Account.name LIKE '%United%' OR Account.name LIKE '%Ltd%'];

For(Contact C2 : C){
    System.debug('Informações');
    System.debug('Nome: ' + C2.name);
    System.debug('Cargo: ' + C2.Title);
    System.debug('Telefone: ' + C2.Phone);
    System.debug('Nome da Conta: ' + C2.Account.Name + '\n');
}

--------------------------------------------------------------------------
// Mago Supremo

// 3. Imprima em apex o nome, phone, rating, data de criação das contas ordenados por
// data de criação decrescente, mostrando também o nome e telefone dos contatos
// ordenados por nome ligados a cada uma das contas.

3.1
List <Account> C = [
    SELECT Name, Phone, Rating, CreatedDate,(
    SELECT Name, Phone FROM Contacts) FROM Account ORDER BY CreatedDate DESC
	];

For(Account Accounts : C){
    System.debug('Informações');
    System.debug('Nome:' + Account.Name);
    System.debug('Phone:' + Account.Phone);
    System.debug('Rating:' + Account.Rating);
    System.debug('Data criação:' + Account.CreatedDate);
	System.debug('Nome:' + Contact.name);
    System.debug('Phone:' + Contact.phone);
    System.debug('\N');
}

3.2 (Guilherme)
List<account> contas = [SELECT Name, Phone, Rating, CreatedDate, (select name, phone from contacts order by name)  FROM Account order by CreatedDate desc];

for(account c : contas){
    system.debug('nome da conta: ' + c.Name);
    system.debug('telefone da conta : ' + c.Phone);
    system.debug('data de criação da conta: ' + c.CreatedDate);
    

for(contact ctt : c.contacts){
    system.debug('nome do contato: ' + ctt.name);
    system.debug('telefone do contato: ' + ctt.phone);
    system.deb

3.3 (NANA)
List <Account> ResgateContas = [SELECT name, phone, rating, createdDate,(SELECT name, phone FROM Contacts ORDER BY Name) FROM Account ORDER BY CreatedDate DESC];

for(Account a : ResgateContas){
    if(a.Contacts.size()==0){
        system.debug('Nome: '+a.name+'  |Phone: '+a.Phone+'  |Classificação: '+a.rating+'  |Data de Criação: '+a.createdDate);    
    }else{
    system.debug('Nome: '+a.name+'  |Phone: '+a.Phone+'  |Classificação: '+a.rating+'  |Data de Criação: '+a.createdDate+'  |Contatos  
    }else{
    system.debug('Nome: '+a.name+'  |Phone: '+a.Phone+'  |Classificação: '+a.rating+'  |Data de Criação: '+a.createdDate+'  |Contatos: '+a.Contacts);    
}
}

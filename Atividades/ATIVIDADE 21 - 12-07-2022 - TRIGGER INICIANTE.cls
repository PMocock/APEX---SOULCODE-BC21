ATIVIDADE 21 - TRIGGER INICIANTE - 12/07/2022

//1. Crie uma trigger em Lead que antes de inserir um novo lead,
// coloque informações nos campos fax (XX) XXXXX - XXXX, Site www.example.com, e receita anual 0.

//TRIGGER 1

trigger LeadTrigger on Lead (before insert) {
    For (Lead L: Trigger.new){
    	L.Fax = '666 6 666 6 666';
    	L.Website = 'www.example.com';
    	L.AnnualRevenue = 0;
    }
}

//APEX OBJETOS

Lead L6 = New Lead (
	FirstName = 'Maclemore',
    LastName = 'Lovin',
    Company = 'Projeto X',
    Phone = '555887799',
    Status = 'Closed - Converted'
);

Lead L4 = New Lead (
	FirstName = 'Mac',
    LastName = 'Slovin',
    Company = 'Projeto X',
    Phone = '555887799',
    Status = 'Closed - Converted',
    AnnualRevenue = 50000
);

Lead L5 = New Lead (
	FirstName = 'Mac',
    LastName = 'Loving',
    Company = 'Projeto X',
    Phone = '555887799',
    Website = 'www.DabliuDabliu.Dabliu.br',
    Status = 'Closed - Converted'
);

Insert L4;
Insert L5;
Insert L6;

-------------------------------------------------------------------
//2. altere o código da trigger de Lead realizando condições para verificar se:
// e o fax estiver vazio, atribuir sem fax 
// se site estiver vazio, atribuir site indefinido
// se receita anual estiver vazio, atribuir 0

//TRIGGER

trigger LeadTrigger on Lead (before insert) {
    For (Lead L: Trigger.new){
        If (L.Fax == Null){
            System.debug('Why No Fax?');
            L.Fax = 'Registro sem Fax';
        }Else {
            System.debug('Yes We Fax!');
        }
        If (L.Website == Null){
            System.debug('Why No Site?');
            L.Website = 'Registro sem Website';
            }Else {
                System.debug('Yes We Site!');
            }
        If (L.AnnualRevenue <= 0 || L.AnnualRevenue == Null){
            System.Debug('Why no Money?');
            L.AnnualRevenue = 0;
        }Else {
            System.debug('Yes We Money!');
        }
    }
}
//L.Fax = '666 6 666 6 666';
//L.Website = 'www.example.com';
//L.AnnualRevenue = 0;     

--------------
//APEX OBJETOS

Lead L6 = New Lead (
	FirstName = 'Maclemore',
    LastName = 'Lovin',
    Company = 'Projeto X',
    Phone = '555887799',
    Status = 'Closed - Converted'
);

Lead L4 = New Lead (
	FirstName = 'Mac',
    LastName = 'Slovin',
    Company = 'Projeto X',
    Phone = '555887799',
    Status = 'Closed - Converted',
    AnnualRevenue = 50000
);

Lead L5 = New Lead (
	FirstName = 'Mac',
    LastName = 'Loving',
    Company = 'Projeto X',
    Phone = '555887799',
    Website = 'www.DabliuDabliu.Dabliu.br',
    Status = 'Closed - Converted'
);

Insert L4;
Insert L5;
Insert L6;

------------------
//TESTE
SELECT Id, FirstName, LastName, Fax, AnnualRevenue, Website FROM Lead WHERE CreatedDate = TODAY

-------------------------------------------------------------------------------
//3. atualize o código da trigger de Lead, adicionando as seguintes condições:
// Se receita anual >= 0 e < 10000
// a classificação deverá ser Cold
// Se receita anual >= 10000 e < 100000
// a classificação deverá ser Warm
// Se receita anual >= 100000
// a classificação é Hot

//TRIGGER

trigger LeadTrigger on Lead (before insert) {
//LOOPING PRINCIPAL DO LEAD    
    For (Lead L: Trigger.new){

//IF DO FAX
        If (L.Fax == Null){
            System.debug('Why No Fax?');
            L.Fax = 'Registro sem Fax';
        }Else {
            System.debug('Yes We Fax!');
        }

//IF DO WEBSITE
        If (L.Website == Null){
            System.debug('Why No Site?');
            L.Website = 'Registro sem Website';
            }Else {
                System.debug('Yes We Site!');
            }

//IF CENTRAL DA RECEITA ANUAL
        If (L.AnnualRevenue <= 0 || L.AnnualRevenue == Null){
            System.Debug('Why no Money?');
            L.AnnualRevenue = 0;
        }Else If (L.AnnualRevenue < 10000 && L.AnnualRevenue > 0){
            System.debug('Tá Frio');
            L.Rating = 'Cold';
        }Else If (L.AnnualRevenue >= 10000 && L.AnnualRevenue < 100000){
            System.debug('Ta Morninho');
            L.Rating = 'Warm';
        }Else  {
            System.debug('Ta Quentão');
            L.Rating = 'Hot';
        }
    }
}

//1 e 2 QUESTÕES
//L.Fax = '666 6 666 6 666';
//L.Website = 'www.example.com';
//L.AnnualRevenue = 0;     
//If (L.AnnualRevenue <= 0 || L.AnnualRevenue == Null){
//            System.Debug('Why no Money?');
//            L.AnnualRevenue = 0;
//        }Else {
//            System.debug('Yes We Money!');
//        }

-----------------------
//APEX OBJECT

Lead L6 = New Lead (
	FirstName = 'Maclemore',
    LastName = 'Lovin',
    Company = 'Projeto X',
    Phone = '555887799',
    Status = 'Closed - Converted'
);

Lead L4 = New Lead (
	FirstName = 'Mac',
    LastName = 'Slovin',
    Company = 'Projeto X',
    Phone = '555887799',
    Status = 'Closed - Converted',
    AnnualRevenue = 50000
);

Lead L5 = New Lead (
	FirstName = 'Mac',
    LastName = 'Loving',
    Company = 'Projeto X',
    Phone = '555887799',
    Website = 'www.DabliuDabliu.Dabliu.br',
    Status = 'Closed - Converted'
);

Insert L4;
Insert L5;
Insert L6;

---------------------
//TESTE

SELECT Id, FirstName, LastName, Company, Status, Fax, AnnualRevenue, Website FROM Lead WHERE CreatedDate = TODAY

---------------------
//COMENTÁRIOS - 
// Achei muito interessante a execução da atividade através da autocomplementação das questões dentro de uma só trigger e com a criação dos objetos. Busquei ao máximo compreender sua execução a cada passo, inserindo pedaços do código principal aos poucos e observando os resultados. O resultado principal é que agora minha org está repleta de Mac Lovin's kkkkkkkk


//ATIVIDADE 22 - TRIGGER ATIVIDADE II - PEDRO MOCOCK 14/07/2022
//1.  Antes de atualizar uma oportunidade, Se a fase anterior estiver fechada e 
//perdida e tentarem alterar para qualquer outra nova fase. Emitir mensagem de erro.

//TRIGGER

trigger OpportunityTrigger on Opportunity (before Update) {

	For (Opportunity O: Trigger.new){
            Opportunity OA = Trigger.OldMap.Get(O.Id);
            If (OA.Stagename == 'Closed Lost' && OA.Stagename != 'Closed Lost'){
                O.Stagename.AddError('Não pode converter Oportunidade perdida');
            }
    }
}

------------------------------------------------------------------------------
//2.  Após a atualização de uma oportunidade, se o valor for maior ou igual a 50000
//e a fase estiver fechada e ganha, crie uma tarefa associada a ela, com o assunto:
//Parabenizar a empresa pela nova aquisição.

//TRIGGER

trigger OpportunityTrigger on Opportunity (before Update, After Update) {
		
    If(Trigger.IsBefore && Trigger.IsUpdate){
        For (Opportunity O: Trigger.new){
            Opportunity OA = Trigger.OldMap.Get(O.Id);
            If (OA.Stagename == 'Closed Lost' && OA.Stagename != 'Closed Lost'){
                O.Stagename.AddError('Não pode converter Oportunidade perdida');
            }
        }
    }
    If (Trigger.IsAfter && Trigger.IsUpdate){
        List <Task> OL = New List <Task> ();
        For (Opportunity O: Trigger.new){
        	If (O.Amount >= 500000 && O.Stagename == 'Closed Won'){
                Task task = New Task(
                    Description = 'Parabenizar ' + O.Name + ' pela nova aquisição' ,
                    Subject = 'Call',
                    Priority = 'High',
                    WhoId = O.Id,
                    ActivityDate = (Date.Today())
                    ); 
                OL.add(task);
			}
            Insert OL;
        }     
    }    	
}

----------------------------------------------------------------------
//3.  Após inserir um Lead, a receita anual estiver superior a 50000,
//criar uma tarefa com assunto verificar se o cadastro está completo associado ao lead.

//TRIGGER

trigger LeadTrigger on Lead (before insert) {

       If (Trigger.IsBefore && Trigger.IsInsert){
           For (Lead L: Trigger.new){
               List <Task> T = New List <Task> ();
               If (L.AnnualRevenue >= 50000){
                	Task Task = New Task(
                    	Description = 'Verificar o cadastro de ' + L.FirstName + ' ' + L.LastName,
                        Subject = 'Verify',
                        Priority = 'High',
                        WhoId = L.Id,
                        ActivityDate = (Date.Today())
                    ); 
                	T.Add (Task);
				}
				Insert T;               
            }
        }
}

//4. Em oportunidade, quando a fase for alterada para Closed Lost, deve ser inserido um motivo.
//Se a fase estiver em Closed Lost e motivo estiver vazio, emitir uma mensagem de erro.
//O motivo deve ser preenchido. Dica:
//Caso não exista o campo motivo na sua org, crie no gerenciador de objetos.


//TRIGGER

trigger OpportunityTrigger on Opportunity (before Update, After Update) {

    If(Trigger.IsBefore && Trigger.IsUpdate){
        
        For (Opportunity O: Trigger.new){
            Opportunity OA = Trigger.OldMap.Get(O.Id);
            If (OA.Stagename == 'Closed Lost' && O.Stagename != 'Closed Lost'){
                O.Stagename.AddError('Não pode converter Oportunidade perdida');
            }
            If (O.StageName == 'Closed Lost' && String.Isblank(O.MOTIVO_DA_PERDA__c)){
                O.MOTIVO_DA_PERDA__c.AddError ('Preencha o Motivo da perda antes de salvar o registro');
            }
        }
    }
    If (Trigger.IsAfter && Trigger.IsUpdate){
        List <Task> OL = New List <Task> ();
        For (Opportunity O: Trigger.new){
        	If (O.Amount >= 500000 && O.Stagename == 'Closed Won'){
                Task task = New Task(
                    Description = 'Parabenizar ' + O.Name + ' pela nova aquisição' ,
                    Subject = 'Call',
                    Priority = 'High',
                    WhoId = O.Id,
                    ActivityDate = (Date.Today())
                    ); 
                OL.add(task);
			}
            Insert OL;
        }     
    }    	
}

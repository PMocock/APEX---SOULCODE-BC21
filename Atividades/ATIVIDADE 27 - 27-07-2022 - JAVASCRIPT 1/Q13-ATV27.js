//QUESITO 13
//Crie um array com 5 posições e em cada posição, um object array com as seguintes chave/valor (id, nome, telefone, email). Exiba o array via console. e acesse as informações do object na posição 3.

//RESPOSTA QUESITO 13
var cadastro = [1, 2, 3, 4 , 5];
cadastro [0] = [{id : 1},{nome : 'Pong'},{telefone : '445566'},{email : 'A@B.com.br'}];
cadastro [1] = [{id : 2},{nome : 'Chong'},{telefone : '44556'},{email : 'B@C.com.br'}];
cadastro [2] = [{id : 3},{nome : 'Chang'},{telefone : '4455'},{email : 'C@D.com.br'}];
cadastro [3] = [{id : 4},{nome : 'Kong'},{telefone : '445'},{email : 'D@E.com.br'}];
cadastro [4] = [{id : 5},{nome : 'Cong'},{telefone : '44'},{email : 'E@F.com.br'}];

console.log(cadastro);
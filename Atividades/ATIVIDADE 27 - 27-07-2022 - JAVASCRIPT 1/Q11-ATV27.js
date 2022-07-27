//QUESITO 11
//Crie um object array com os valores de um veículo, sendo as chaves são marca, modelo, cor, ano, valor, renavam, placa, cada um das chaves devem possuir valores. Exiba através da body do HTML as informações do veículo:

// Veiculo
// marca: X
// modelo: x
// cor: x
// ano: x
// renavam: x
// placa: x

//RESPOSTA QUESITO 11
var Gol = {
    marca : 'VW', 
    modelo : 'Gol', 
    cor : 'Vermelho', 
    ano : '2022', 
    renavam : 12345678, 
    placa : 'PQP-2I34'
}

console.log(Gol);
document.write(JSON.stringify(Gol.marca) + '<br>');
document.write(JSON.stringify(Gol.modelo) + '<br>');
document.write(JSON.stringify(Gol.cor) + '<br>');
document.write(JSON.stringify(Gol.ano) + '<br>');
document.write(JSON.stringify(Gol.renavam) + '<br>');
document.write(JSON.stringify(Gol.placa) + '<br>');
document.write('Golzinho do capeta <br>' + JSON.stringify(Gol));
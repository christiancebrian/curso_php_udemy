// Novo recurso do ES2015
const obj = {
    nome: 'Christian Cebrian',
    idade: 38,
    estado: 'solteiro',
    endereco: {
        logradouro: 'Rua Peperi',
        numero: 255,
        complemento: 301,
        bairro: 'Nova Granada',
        cidade: 'Belo Horizonte',
        uf: 'Minas Gerais'
    },
    status: true,
    condicao: 'Ativo'
}
// Criando para nome e idade
const { nome, idade } = obj;
console.log(nome, idade);
// Craindo um nome alternativo para a variavel
const { nome: n, idade: i } = obj;
console.log(n, i);
// Para propriedade inxistente 'undefined', mas da para colocar valor alternativo
const { sobrenome, porta = "sem porta" } = obj;
console.log(sobrenome, porta);
// Pegando propriedade de sub-objeto
const { endereco: { logradouro, numero } } = obj;
console.log(logradouro, numero);

function rand({ min = 0, max = 100 }) {
    let valor = Math.random() * (max - min) + min;
    return Math.floor(valor);
}

console.log(rand({ min: 20, max: 50 }));
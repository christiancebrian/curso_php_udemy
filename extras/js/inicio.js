console.log('teste');

// Criando variável
var a = 3;
let b = 15;
console.log(a, b);

let numTeste = Number.isInteger('6.45');
console.log('Este tipo é - ', typeof numTeste);

const c = 50;
console.log(c);

let qualquer = 'Legal';
console.log(typeof qualquer, qualquer);

let nota1 = 2.156;
let nota2 = Number('1.658'); // Função Number transforma a string em números.

let soma = nota1 + nota2;
console.log('Total da soma ', soma);
console.log('Agora reduzindo o número de casas decimais ', soma.toFixed(2)); // Reduzindo para 2 casas decimais
console.log('Em string ', soma.toString()); // Agora o valor está em string e não númerico

const nome = 'Christian';
console.log('Letra = ', nome.charAt(3)); // Pega o valor do indice indicado da string
console.log('Letra = ', nome.indexOf('s')); // Retorna a posição do caractere no indice
console.log('Substring - ', nome.substring(2)); // Retorna a string a partir do indice informado.
console.log('Substituindo s - ', nome.replace('s', 'O')); // Substitui o valor informado, pode se usar regex
console.log('Ana,Maria,João,Carlos'.split(',')); // Craindo uma array com strings separados por virgula

// Template string
const nome1 = 'Christian Cebrian';
const concatencao = 'Olá ' + nome1 + '!';
console.log(concatencao);
const template = `
    Olá
    ${nome1} !`;
console.log(template); // Usando `` "Template string", da forma que criar o texto é mostrado e não precisa concatenar, basta colocar ${variavel}. Suporta quebras de linha e espaços

// Função Arrow - se passa a função para dentro de uma variavel ou constante
const up = texto => texto.toUpperCase();
console.log(`Ei..... ${up('cuidado')}!`);

// Tipo Boolean
let isAtivo = false;
console.log(isAtivo);
isAtivo = true;
console.log(isAtivo);
isAtivo = 1;
console.log(!!isAtivo); // Duas negação é verdadeiro
console.log(!isAtivo); // Uma negação é verdadeiro

console.log('os verdadeiros');
console.log(!!3);
console.log(!!-1);
console.log(!!' ');
console.log(!!'texto');
console.log(!![]);
console.log(!!{});
console.log(!!Infinity);
console.log(!!(isAtivo = true));

console.log('os falsos');
console.log(!!0);
console.log(!!'');
console.log(!!null);
console.log(!!NaN);
console.log(!!undefined);
console.log(!!(isAtivo = false));
console.log(!!('' || null || 0 || ' '));

let nome2 = '';
console.log(nome2 || 'Desconhecido'); // Se a váriavel estiver vazia, na condição OR vai preencher com a condição verdadeira (preenchida).

// Criando uma array
const info = [7.8, 8.9, 6.3, 9.2];
console.log(info[0], info[2]);
info[4] = 10;
console.log(info);
console.log(info.length); // Retorna o valor total de elementos
info.push(69); // Adiciona novo valor no array
console.log(info);
info.push({ id: 3 }, 75, 7.4, 'teste', false, null, 'kkkk');
console.log(info);
info.pop(); // Remove o último valor da array
console.log(info);
delete info[6]; // Removendo valor do array de um determinado indice
console.log(info);
console.log(typeof info); // Array no Java script é Objeto
console.log(info[6]); // O indice permanece como indefinido após exclusão do valor

// Criando um objeto
const prod1 = {};
prod1.nome = 'Celular Ultra Mega';
prod1.preco = 4998.90;
console.log(prod1);
prod1['Desconto Legal'] = 0.40; // Pode se fazer mas não é bom
console.log(prod1);

const prod2 = {
    nome: 'Camisa Polo',
    preco: 52.99,
    descontoLegal: 0.50,
    obj: { // Um objeto dentro de outro objeto
        blabla: 125,
        dadada: 'Que isso',
        obj: { // Dentro de um objeto não pode repetir a nomeclatura, mas em sub-objeto sim
            blabla: 'De novo isso'
        },
        funcao() { // Dentro de um objeto, pode adicionar funções também
            console.log('Pode-se colocar função dentro do objeto.');
        }
    }
};
console.log(prod2);
// Como chamar uma propriedade do objeto
prod2.obj.funcao();
// Adicionando nova propriedade ao objeto
prod2.ano = 2023; // Também pode ser feito prod2['ano'] = 2023
console.log(prod2);
// Deletando um propriedade
delete prod2.ano;
console.log(prod2);
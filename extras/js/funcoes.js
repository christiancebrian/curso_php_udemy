// Função sem retorno
function imprimirSoma(a, b) {
    console.log(a + b);
}

imprimirSoma(2, 3);

// Função com retorno
function soma(a, b = 0) {
    return (a + b);
}

console.log(soma(5, 6));

// Armazenando uma função na variavel 
const imprimirSoma1 = function (a, b) {
    console.log(a + b);
}

imprimirSoma1(2, 7);

// Armazenando uma função arrow em uma variavel
const soma1 = (a, b) => {
    return (a + b);
}

console.log(soma1(15, 54));

// Retorno implicito
const subtracao = (a, b) => (a - b);

console.log(subtracao(16, 12));

const imprimir2 = a => console.log(a);
imprimir2('Legal.....');
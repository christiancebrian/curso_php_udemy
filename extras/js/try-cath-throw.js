// Erro causado propositalmente
/*
function gritar(obj) {
    console.log(obj.name.toUpperCase() + '!!!'); // Propriedade 'name'
}

const obj = { nome: 'Christian' }; // Propriedade 'nome'
gritar(obj);
*/

// Tratando o erro
function tratarErroELancar(erro) {
    // Retorna a mensagem cstomizada mais a mensagem de erro
    //throw new Error('Erro ocorrido, verificar....'); 
    // Retorna somente o número 10
    //throw 10; 
    // Retorna a mensagem customizada
    throw 'Erro! - Verifique a função.....';
}

function gritar(obj) {
    try {
        console.log(obj.name.toUpperCase() + '!!!'); // Propriedade 'name'
    } catch (e) {
        tratarErroELancar(e);
    } finally { // Sempre será executado este bloco independente de erro ou não
        console.log('Final');
    }
}

const obj = { nome: 'Christian' }; // Propriedade 'nome'
gritar(obj);
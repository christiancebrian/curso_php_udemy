/**
 * Meios de acesso aos dados enviado na Middleware
 * req.body - Neste modo despois da rota seria "/5"
 * req.query - Neste modo depois da rota seria ":numero=5"
 * req.params - Neste modo depois da rota seria "/:numero"
 */

// Frameworks para Javascript
// Servidor para Javascript
const express = require('express');

// Envio assyncrona de arquivo upload
const multer = require('multer');
// Configurando a pasta de destino e nome
const storage = multer.diskStorage({
    destination: function (req, file, callback) {
        callback(null, './upload');
    },
    filename: function (req, file, callback) {
        callback(null, `${Date.now()}_${file.originalname}`);
    }
});
// Comando para interpretar o envio do arquivo
const upload = multer({ storage }).single('arquivo');

// Tratamento dos dados enviados por formulários
const bodyParser = require('body-parser');

// Dando inicio ao servidor
const app = express();

// Caminho
app.post('/upload', (req, res) => {
    upload(req, res, err => {
        if (err) {
            return res.end('Ocorreu um erro.');
        }
    });

    res.end('Concluído com sucesso.');
});


// Isso são Middleware
// Servindo os arquivos estáticos da mesma pasta
app.use(express.static('.'));
// Transformando os dados de um formulário em objeto
app.use(bodyParser.urlencoded({ extended: true }));
//app.use(bodyParser.jason()); Desativado, pois está errado
// Pegando requisições a partir do '/teste' para teste
//app.get('/teste', bodyParser.json(), (req, res) => res.send('Ok'));


// Função para Fetch 2
app.post('/formulario', (req, rs) => {
    resizeBy.send({
        ...req.body,
        id: 1
    })
})

// Função paa Axios 2
app.get('/parOuImpar', (req, res) => {
    const par = parseInt(req.query.numero) % 2 === 0
    res.send({
        resultado: par ? 'par' : 'impar'
    })
})

// Resposta para teste se servidor estiver ok; porta: 8171
app.listen(8080, () => console.log('Executando...'));
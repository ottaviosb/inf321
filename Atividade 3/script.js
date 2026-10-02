// Parte 1 e 4 - Botão "Comprar" e interação visual

const botoesComprar = document.querySelectorAll(".comprar");
const mensagem = document.querySelector("#mensagem");

botoesComprar.forEach(function (botao) {
    botao.addEventListener("click", function () {
        botao.classList.toggle("ativo");

        if (botao.classList.contains("ativo")) {
            mensagem.textContent = "Produto adicionado ao carrinho!";
        } else {
            mensagem.textContent = "Produto removido do carrinho!";
        }

        mensagem.classList.remove("escondido");

        setTimeout(function () {
            mensagem.classList.add("escondido");
        }, 5000);
    });
});

// Parte 2 - Campo de busca

const campoBusca = document.querySelector("#busca");
const botaoBusca = document.querySelector("#botao-busca");
const cards = document.querySelectorAll(".produto");

botaoBusca.addEventListener("click", function () {
    const termo = campoBusca.value.toLowerCase();

    cards.forEach(function (card) {
        const nome = card.querySelector("h3").textContent.toLowerCase();

        if (nome.includes(termo)) {
            card.classList.remove("escondido");
        } else {
            card.classList.add("escondido");
        }
    });
});

// Parte 3 - Validação do formulário Fale Conosco

const formContato = document.querySelector("#form-contato");

const campoNome = document.querySelector("#contato-nome");
const campoEmail = document.querySelector("#contato-email");
const campoMensagem = document.querySelector("#contato-mensagem");

const erroNome = document.querySelector("#erro-nome");
const erroEmail = document.querySelector("#erro-email");
const erroMensagem = document.querySelector("#erro-mensagem");

function validarCampo(campo, erro) {
    if (campo.value === "") {
        campo.classList.add("invalido");
        erro.classList.remove("escondido");
        return false;
    }

    campo.classList.remove("invalido");
    erro.classList.add("escondido");
    return true;
}

formContato.addEventListener("submit", function (event) {
    event.preventDefault();

    const nomeOk = validarCampo(campoNome, erroNome);
    const emailOk = validarCampo(campoEmail, erroEmail);
    const mensagemOk = validarCampo(campoMensagem, erroMensagem);

    if (nomeOk && emailOk && mensagemOk) {
        alert("Mensagem enviada com sucesso!");
        campoNome.value = "";
        campoEmail.value = "";
        campoMensagem.value = "";
    } else {
        alert("Preencha todos os campos obrigatórios!");
    }
});

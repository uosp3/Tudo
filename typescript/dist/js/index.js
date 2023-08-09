"use strict";
//string, boolean, number
let x = 10;
x = 12;
console.log(x);
//inferencia x annotation
let y = 12; // inferencia, não foi declarado tipo
let z = 12; //annotation, o tipo foi explicitado
// tipos básicos
let firstName = "Edson";
let age = 61;
const isAdmin = true;
const myNumbers = [1, 2, 3];
//myNumbers.toUpperCase(); // não existe maiúlculas para mumeros
firstName.toUpperCase(); // para string é aceito
//tuplas
let myTuple;
myTuple = [5, 'teste', ['a', 'b']]; // as atribuições tem que seguir o que foi predefinido.
//object literals -> {prop: value}
const user = {
    name: 'Edson',
    age: 61,
};
//any -> faz com que a variável aceite qualquer tido (não é recomendável usar)
let a = 0;
a = "teste";
a = true;
a = [];
// union type -> é uma alternativa ao any.
let id = '10';
id = 20;
const userId = "Gomes";
const productId = 1025;
//enum
// tamanho de roupas (size: Médio, size: Pequeno)
var Size;
(function (Size) {
    Size["P"] = "Pequeno";
    Size["M"] = "M\u00E9dio";
    Size["G"] = "Grande";
})(Size || (Size = {}));
const camisa = {
    nome: "Camisa gola V",
    size: Size.G,
};
console.log(camisa);

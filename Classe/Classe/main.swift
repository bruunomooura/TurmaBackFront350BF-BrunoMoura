//
//  main.swift
//  Classe
//
//  Created by Bruno Moura on 07/03/23.
//

import Foundation

// OBJETO
// CARACTERISTICAS DE UM OBJETO -> ATRIBUTOS OU PROPRIEDADES
// AÇÕES = FUNÇÃO / METODO

// Para criar uma classe sempre começamos com a palavra reservada "class" e em seguida colocamos o seu nome que sempre deve começar com a primeira letra maiusculo

class Automovel {
    
    var cor: String = "Preto"
    var numeroDePortas: Int = 2
    var marca: String = "Honda"
    var eEletrico: Bool = false
    var quantidadeDePassageiros: Int = 5
    
    func ligarFarol() {
        print("O Farol está ligado")
    }
    
    func ligarOCarro() {
        print("O carro está ligado")
    }
    
}

class Mesa {
    
    var cor: String = "Branca"
    var numeroDeLugares: Int = 4
    var marca: String = "Tramontina"
    var materialPlastico: Bool = true
    var numeroDeCadeiras: Int = 4
    
    func sentarNaCadeira() {
        print("Setei na cadeira da mesa")
    }
    
    func colocarComidaNaMesa() {
        print("A mesa está posta")
    }
    
}

class Moto {
    
    var cor: String = "Vermelha"
    var cilindrada: Int = 160
    var marca: String = "Honda"
    var eNova: Bool = true
    var quantidadeDePassageiros: Int = 2
    
    func ligarFarolAlto() {
        print("O Farol alto está ligado")
    }
    
    func ligarAMoto() {
        print("A moto está ligada")
    }
    
}

class Macbook {
    
    var cor: String = "Cinza espacial"
    var modelo: String = "Air M!"
    var marca: String = "Apple"
    var eNovo: Bool = true
    var quantidadeDeMemoriaRamEmGigaBytes: Int = 8
    
    func ligarMac() {
        print("O Macbook está ligado")
    }
    
    func buscarAtualizacoes() {
        print("Buscando atualizações para o MacOS")
    }
    
}

// Dar vida ao objeto -> quando geramos a instancia -> ()
var meuCarro: Automovel = Automovel()


// Construtores
// Criamos um construtor com a palavra reservada init e com isso indicamos TODOS OS VALORES DAS VARIAVEIS OU CONSTANTES QUE NÃO SE INICIAM COM VALOR

class Pessoa {
    
    var nome: String
    var altura: Double
    var peso: Double
    var tamanhoCalcado: Int
    
    
    init(nome: String, altura: Double, peso: Double, tamanhoCalcado: Int) {
        self.nome = nome
        self.altura = altura
        self.peso = peso
        self.tamanhoCalcado = tamanhoCalcado
    }
}

var caio: Pessoa = Pessoa(nome: "Caio", altura: 1.84, peso: 84, tamanhoCalcado: 44)
var matheus: Pessoa = Pessoa(nome: "Matheus", altura: 1.65, peso: 69, tamanhoCalcado: 40)
//print(caio.nome)
//print(caio.altura)
//print(caio.peso)

//  Referencia uma das principais caracteristicas de uma classe

print(caio.nome)
print(matheus.nome)

caio.nome = "Caio Fabrini"
matheus.nome = "Matheus Souza"

print(caio.nome)
print(matheus.nome)

// caio é igual a matheus
caio = matheus

print(caio.nome)
print(matheus.nome)


caio.nome = "Alberto"

print(caio.nome)
print(matheus.nome)

matheus.nome = "Jorge"

print(caio.nome)
print(matheus.nome)


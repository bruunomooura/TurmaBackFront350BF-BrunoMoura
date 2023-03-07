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


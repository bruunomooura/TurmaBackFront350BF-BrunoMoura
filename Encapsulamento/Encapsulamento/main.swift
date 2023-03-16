//
//  main.swift
//  Encapsulamento
//
//  Created by Caio Fabrini on 14/03/23.
//

import Foundation


// MARK: - Encapsulamento

// Private -> privado, ou seja, que não tenha acesso externo
// Public -> publico, ou seja, que tenha acesso externo

//class Carro {
//
//    private var modelo: String
//
//    init(modelo: String) {
//        self.modelo = modelo
//    }
//
//    public func getModelo() -> String {
//        return self.modelo
//    }
//
//    public func setModelo(modelo: String) {
//        self.modelo = modelo
//    }
//
//}
//
//var meuCarro: Carro = Carro(modelo: "BMW 320i")
//
//print(meuCarro.getModelo())
//meuCarro.setModelo(modelo: "La Ferrari")
//print(meuCarro.getModelo())


//Um vendedor de loja possui nome, idade e cpf e saldo em conta. Vende em sua loja ternos, vestidos e bonés, definir um método vender(quantidade DePecas: Int, tipoDePeca: String). Cada terno custa 400 reais, caso o cliente compre 3 ou mais ternos, ele recebe 50 de desconto para cada terno. -Cada vestido custa 900 reais, caso o cliente compre 5 vestidos ele ganha um véu de noiva de brinde. Encapsule todos os métodos necessários.
class Vendedor {
    var nome: String
    var idade: Int
    var cpf: Int
    private var saldoEmConta: Double

    init(nome: String, idade: Int, cpf: Int, saldoEmConta: Double) {
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saldoEmConta = saldoEmConta
    }
}

class Peca {
    var tipoPeca: String
    var quantidadeDePecas: Int
    
    
    init(tipoPeca: String, quantidadeDePecas: Int) {
        self.tipoPeca = tipoPeca
        self.quantidadeDePecas = quantidadeDePecas
        
    }
    
    func vender() {
        var valorTerno: Double = 400.00
        var descontoPorTerno: Double = 50.00
        var totalDaVenda: Double = valorTerno * Double(quantidadeDePecas) - descontoPorTerno
        
        if quantidadeDePecas >= 3 && tipoPeca == "Terno"{
            print("Devido sua compra de \(quantidadeDePecas) \(tipoPeca)s você ganhou um desconto e o valor total de sua compra ficou em R$\(totalDaVenda).")
        } else if quantidadeDePecas >= 5 && tipoPeca == "Vestido"{
            print("Você ganhou um vel de noiva de brinde")
        } else {
            print("Obrigado por sua compra! Volte sempre!")
        }
    }
}
    print( var comprasB: Peca = Peca(tipoPeca: "Terno", quantidadeDePecas: 7))

        

//Definir uma classe Funcionário com nome, salário e cpf, depois defina as classes Programador que tem plataforma de trabalho(ex: Android, Web, iOS), e uma classe Designer que tem ferramenta preferida(ex: Photoshop, Sketch, Gimp). Ambos tem um bônus anual baseado no salário, Programador recebe 20% e Designer recebe 15%. Faça um método que calcule o bônus anual e mostre o valor do bônus na tela. Use polimorfismo para resolver este problema.

class Funcionario {
    var nome: String
    var salario: Double
    var cpf: Int
    
    init(nome: String, salario: Double, cpf: Int) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    
    func bonusAnual() {
        print(salario * 0.20)
    }
}

class Programador: Funcionario {
    var plataformaDeTrabalho: String
    
    init(platadormaDeTrabalho: String, nome: String, salario: Double, cpf: Int) {
        self.plataformaDeTrabalho = platadormaDeTrabalho
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
}

class Designer: Funcionario {
    var ferramentaPreferida: String
    
    init(ferramentaPreferida: String, nome: String, salario: Double, cpf: Int) {
        self.ferramentaPreferida = ferramentaPreferida
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func bonusAnual() {
        print(salario * 0.15)
    }
}

var programador1: Programador = Programador(platadormaDeTrabalho: "iOS", nome: "Bruno", salario: 20000.00, cpf: 02929988288)
print(programador1.bonusAnual())

var designer1: Designer = Designer(ferramentaPreferida: "Photoshop", nome: "Gustavo", salario: 8449.99, cpf: 67876567890)
print(designer1.bonusAnual())

//Definir uma classe Veículo com cor, preço e quantidade de passageiros, depois defina as classes Carro que tem tamanho das rodas, e Avião que tem piloto e companhia aérea. queremos descobrir a quantidade de combustível que cada um dos veículos gasta por viagem, defina um método que recebe como parâmetro a distancia em Km e calcule a quantidade de combustível. Carro: tamanho das rodas * quantidade de passageiros * distancia Avião quantidade de passageiros * distancia
class Veiculo{
    var cor: String
    var preco: Double
    var quantidadePassageiros: Int
    
    init(cor: String, preco: Double, quantidadePassageiros: Int) {
        self.cor = cor
        self.preco = preco
        self.quantidadePassageiros = quantidadePassageiros
    }
    func gastoCombustivel (distanciaKm: Double){
        print(distanciaKm * Double(quantidadePassageiros))
    }
}
    class Carro: Veiculo{
        var tamanhoRodas: Int
        
        init(tamanhoRodas: Int, cor: String, preco: Double, quantidadePassageiros: Int) {
            self.tamanhoRodas = tamanhoRodas
            super.init(cor: cor, preco: preco, quantidadePassageiros: quantidadePassageiros)
        }
        override func gastoCombustivel(distanciaKm: Double) {
            print(Double(tamanhoRodas) * distanciaKm * Double(quantidadePassageiros))
        }
    }
    
    class Aviao: Veiculo{
        var piloto: String
        var companhiaAerea: String
        
        init(piloto: String, companhiaAerea: String, cor: String, preco: Double, quantidadePassageiros: Int) {
            self.piloto = piloto
            self.companhiaAerea = companhiaAerea
            super.init(cor: cor, preco: preco, quantidadePassageiros: quantidadePassageiros)
        }
    }

var carro1: Carro = Carro(tamanhoRodas: 18, cor: "Branco", preco: 150000.00, quantidadePassageiros: 5)
print(carro1.gastoCombustivel(distanciaKm: 250.00))

var aviao1: Aviao = Aviao(piloto: "Bruno", companhiaAerea: "Azul", cor: "Azul", preco: 9000000.00, quantidadePassageiros: 350)
print(aviao1.gastoCombustivel(distanciaKm: 5000.00))




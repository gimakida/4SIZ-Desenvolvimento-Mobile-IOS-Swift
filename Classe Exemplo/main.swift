//
//  main.swift
//  Classe Exemplo
//
//  Created by Usuário Convidado on 10/08/26.
//

import Foundation

//print("Hello, World!")

//criando o objeto a
var a = Atleta()

//fazendo o set
a.nome = "Ana"
a.idade = 20

//fazendo o get
print("Nome: \(a.nome)")
print("Idade: \(a.idade)")

//fazendo o get em uma só linha
print("Atleta \(a.nome) tem \(a.idade) anos")

//criando um segundo objeto
//utilizando o construtor com parâmetros
var a2 = Atleta(nome: "José", idade: 40)
print("Atleta \(a2.nome) tem \(a2.idade) anos")


a2.calcularIMC(peso: 100, altura: 1.85)
print(a2.calcularIMC_2(peso: 80, altura: 1.75))

print(a2.calcularIMC_2(peso: 80, altura: 1.75))

//observe que o método de classe (estático) foi chamado sem o objeto

print(Atleta.alerta())
//chamando o método de parâmetro opcional
let resp = a2.inscreverNaCompeticao(modalidade: "Judo")
print(resp)
let resp2 = a2.inscreverNaCompeticao(modalidade: "Natação", cidade: "Santos")
print (resp2)

//chamando herança
var p = Paratleta()
p.nome = "Jonas"
p.idade = 21
p.deficiencia = "Braço direito amputado"
print(p.exibirAtleta())

//usando o overloads
print(Atleta.alerta())
print(Atleta.alerta(TempoEmMinutos: 20))

//chamando os métodos do protocolo (o mesmo que interfaces do java)
a.comerCarboidrato()
a2.beberIsotonico()


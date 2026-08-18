//
//  Atleta.swift
//  Classe Exemplo
//
//  Created by Usuário Convidado on 10/08/26.
//

import Foundation

class Atleta: AlimentoSolido, AlimentoLiquido{
    var nome:String
    var idade:Int
    
    init(){
        self.nome = ""
        self.idade = 0
    }
    
    init(nome:String, idade:Int){
        self.nome = nome
        self.idade = idade
    }
    
    func calcularIMC(peso:Float, altura:Float){
        let imc = peso / (altura*altura)
        let formatado = String(format: "%0.2f" , imc)
        print("O iMC de\(self.nome) é \(formatado) ")
    }
    
    func calcularIMC_2(peso: Float, altura:Float)-> Float{
        //return peso / {altura*altura)
        //ou
        return peso / pow(altura,2)
    }
    
    func exibirAtleta() ->String {
        return "o Atleta é " + self.nome
    }
    
    class func alerta() -> String{
        return " a competição irá iniciar  em breve"
    }
    
    //overload - sobreposiçào (quando tem método com mesmo nome parâmetro
    class func alerta(TempoEmMinutos: Int)-> String{
        return "A competição irá iniciar em \(TempoEmMinutos) minutos"
    }
    
    func inscreverNaCompeticao(modalidade:String, cidade:String?=nil) -> String{
        if cidade == nil{
            return "Inscrito na competição para \(modalidade)"
        }else{
            return"Inscrito na cometição para \(modalidade) em \(cidade!)"
        }
    }
    
    func comerCarboidrato() {
        print("Servindo batata doce para o atleta \(self.nome)")
    }
    
    func beberIsotonico() {
        print("Servindo Gatorade para atleta\(self.nome)")
    }
    
}

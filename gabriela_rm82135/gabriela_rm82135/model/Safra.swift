//
//  Safra.swift
//  gabriela_rm82135
//
//  Created by Gabriela Lima de Araujo on 03/06/23.
//

import UIKit

class Safra: NSObject, Calculadora{
      
    var idSafra: String?
    var dataColeta: String?
    var horarioColeta: String?
    var pragas: String?
    var comprometimentoSafra: String?
    var evolucaoSafra: String?
    
    init(idSafra: String? = nil, dataColeta: String? = nil, horarioColeta: String? = nil, pragas: String? = nil, comprometimentoSafra: String? = nil) {
        self.idSafra = idSafra
        self.dataColeta = dataColeta
        self.horarioColeta = horarioColeta
        self.pragas = pragas
        self.comprometimentoSafra = comprometimentoSafra
    }

    func calculaDiferencaSafraPercentual() {
        evolucaoSafra = "4% melhor que a safra anterior"
    }

}

//
//  Usuario.swift
//  gabriela_rm82135
//
//  Created by Gabriela Lima de Araujo on 02/06/23.
//

import UIKit

class Usuario {
    var username: String?
    var senha: String?
    
    init(username: String?, senha: String?) {
        self.username = username
        self.senha = senha
    }
    
    func logar() -> Bool {
        if(username != nil && senha != nil) {
            return !username!.isEmpty && !senha!.isEmpty
        }
        return false
    }
}

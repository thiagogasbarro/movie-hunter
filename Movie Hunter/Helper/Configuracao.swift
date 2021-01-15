//
//  Configuracao.swift
//  Movie Hunter
//
//  Created by Thiago Gasbarro Jesus on 15/01/21.
//

import UIKit

class Configuracao: NSObject {
    
    // MARK: - Métodos
    
    func getKeyPadrao() -> String? {
        
        guard let caminhoParaPlist = Bundle.main.path(forResource: "Info", ofType: "plist") else { return nil }
        guard let dicionario = NSDictionary(contentsOfFile: caminhoParaPlist) else { return nil }
        guard let keyPadrao = dicionario["KeyPadrao"] as? String else { return nil }
        
        return keyPadrao
    }
    
}

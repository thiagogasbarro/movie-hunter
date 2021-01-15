//
//  FilmeAPI.swift
//  Movie Hunter
//
//  Created by Thiago Gasbarro Jesus on 15/01/21.
//

import UIKit
import Alamofire
import AlamofireImage

protocol movieRecoveryService  {
    func recuperaFilme( )
}

class movieAPI {
    func recuperaDados() {
        
           guard let key = Configuracao().getKeyPadrao() else { return }
        
        Alamofire.request("https://api.themoviedb.org/3/trending/movie/week?api_key=\(key)&language=pt-BR", method: .get).responseJSON { ( response ) in
            switch response.result {
            case .success:
                guard let filmeRecuperado = response.data else { return }
                guard let inicio = try? JSONDecoder().decode(ListaFilmes.self, from: filmeRecuperado) else { return }
                    let filme = inicio.results
                break
            case .failure:
                print(response.error!)
                break
            }
        }
            
        
    }
}

class imageRecovery {
    
}



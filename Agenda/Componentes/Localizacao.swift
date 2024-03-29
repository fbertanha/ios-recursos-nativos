//
//  Localizacao.swift
//  Agenda
//
//  Created by Felipe Bertanha on 16/09/19.
//  Copyright © 2019 Alura. All rights reserved.
//

import UIKit
import CoreLocation

class Localizacao: NSObject {
    
    func converteEnderecoEmCoordenadas(endereco : String, local : @escaping(_ local: CLPlacemark) -> Void) {
        let conversor = CLGeocoder()
        
        conversor.geocodeAddressString(endereco) { (listaDeLocalizacoes, error) in
            if let localizacao = listaDeLocalizacoes?.first {
                local(localizacao)
            }
        }
    }

}

//
//  Mariposa.swift
//  Examen
//
//  Created by Alex Lin on 13/03/2019.
//  Copyright © 2019 Alex Lin. All rights reserved.
//

import Foundation
import UIKit


class Butterfly{
    
    var nombre: String
    var tipo: String
    var imagen: UIImage = UIImage()
    var descripcion: String
    var isLiked: Bool = false
    
    init(nombre: String, tipo: String, imagen: UIImage, descripcion: String) {
        self.nombre = nombre
        self.tipo = tipo
        self.imagen = imagen
        self.descripcion = descripcion
    }
}

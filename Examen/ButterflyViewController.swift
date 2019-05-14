//
//  ButterflyViewController.swift
//  Examen
//
//  Created by Alex Lin on 13/03/2019.
//  Copyright © 2019 Alex Lin. All rights reserved.
//
import Foundation
import UIKit

class ButterflyViewController: UIViewController {
    
    
    @IBOutlet weak var imgButterfly: UIImageView!
    @IBOutlet weak var nombreButterfly: UILabel!
    @IBOutlet weak var tipoButterfly: UILabel!
    @IBOutlet weak var descripcionButterfly: UILabel!
    
    var nombre: String = ""
    var tipo:String = ""
    var descripcion: String = ""
    var imgTableButterfly:UIImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nombreButterfly.text = nombre
        imgButterfly.image = imgTableButterfly
        tipoButterfly.text = tipo
        descripcionButterfly.text = descripcion
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

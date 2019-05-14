//
//  ViewControllerButterfly.swift
//  Examen
//
//  Created by Alex Lin on 13/03/2019.
//  Copyright © 2019 Alex Lin. All rights reserved.
//

import UIKit

class ViewControllerButterfly: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return butterflies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celdaCollection = collectionView.dequeueReusableCell(withReuseIdentifier: "celdaCollection", for: indexPath) as! ButterflyCollectionViewCell
        
        celdaCollection.nombreCollection.text = butterflies[indexPath.row].nombre
        celdaCollection.tipoCollection.text = butterflies[indexPath.row].tipo
        celdaCollection.imgCollection.image = butterflies[indexPath.row].imagen
        
        return celdaCollection
    }
    
    
    @IBOutlet weak var collectionView: UICollectionView!

    var butterflies:[Butterfly] = [
        Butterfly(nombre: "Monarca", tipo: "Ledidóptera", imagen: UIImage(named: "monarca")!, descripcion: "Algunos dicen que las mariposas monarca son las más bellas entre todas las especies, son consideradas como el rey de las mariposas, de ahí el nombre de “monarca”."),
        Butterfly(nombre: "Morpho Azul", tipo: "Ledidóptera", imagen: UIImage(named: "morphoAzul")!, descripcion: "Existen decenas de miles de especies de mariposas en el mundo, una de las más bellas son las mariposas morpho azules, muy buscadas por coleccionistas y personas en general que desean admirar el maravilloso color de sus cuerpos."),
        Butterfly(nombre: "Alas de Pájaro", tipo: "Ledidóptera", imagen: UIImage(named: "alasPajaro")!, descripcion: "La mariposa Alas de Pájaro es la más grande de las mariposas en el mundo, con una envergadura de hasta 30 cm de ancho."),
        Butterfly(nombre: "Tigre", tipo: "Ledidóptera", imagen: UIImage(named: "tigre")!, descripcion: "La mariposa tigre es una fuerte voladora que posee marcas distintivas en forma de rayas amarillas y negras en las alas y el cuerpo. Algunas hembras son de color marrón o negro, imitando a la mariposa tigre."),
        Butterfly(nombre: "Ulises", tipo: "Ledidóptera", imagen: UIImage(named: "ulises")!, descripcion: "La mariposa Ulises es también conocida como la mariposa azul de montaña, el emperador azul y mariposa golondrina azul. "),
        
        Butterfly(nombre: "Azul común", tipo: "Ledidóptera", imagen: UIImage(named: "azulComun")!, descripcion: "A pesar de su nombre a esta especie ya no se le considera una mariposa común. Todavía sigue siendo la más distribuida en Gran Bretaña, pero muchas colonias de hábitats como paseos en bosques y tierras de cultivo han disminuido su población."),
        Butterfly(nombre: "Cebra", tipo: "Ledidóptera", imagen: UIImage(named: "cebra")!, descripcion: "La mariposa cebra es una mariposa común con marcas distintivas en blanco y negro, de cola alargada en sus alas posteriores, con algunas pequeñas marcas rojas y azules en la parte posterior de las alas y márgenes fuertemente ondulados.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    

   

}

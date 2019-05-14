//
//  ViewController.swift
//  Examen
//
//  Created by Alex Lin on 13/03/2019.
//  Copyright © 2019 Alex Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    var likedButterflies:[Butterfly] = [Butterfly]()
    public var filterButterflies:[Butterfly] = [Butterfly]()
    var isSearching: Bool = false
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return !isSearching ? butterflies.count : filterButterflies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! TableViewCellCustom
        
         if isSearching {
            celda.nombreButterfly.text = filterButterflies[indexPath.row].nombre
            celda.tipoButterfly.text = filterButterflies[indexPath.row].tipo
            celda.imgButterfly.image = filterButterflies[indexPath.row].imagen
            celda.isLiked.image = filterButterflies[indexPath.row].isLiked ? UIImage(named: "icons8-checked") : UIImage(named: "")
        
         } else {
            celda.nombreButterfly.text = butterflies[indexPath.row].nombre
            celda.tipoButterfly.text = butterflies[indexPath.row].tipo
            celda.imgButterfly.image = butterflies[indexPath.row].imagen
            celda.isLiked.image = butterflies[indexPath.row].isLiked ? UIImage(named: "icons8-checked") : UIImage(named: "")
        }
        
       
        
        return celda
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
     let isLiked = likedCategory(indexPath:indexPath)

     return UISwipeActionsConfiguration(actions: [isLiked])
     }

    func likedCategory(indexPath:IndexPath) -> UIContextualAction{
     let action = UIContextualAction(style: .normal, title: "Like"){ (action,view,completion) in

     self.butterflies[indexPath.row].isLiked = !self.butterflies[indexPath.row].isLiked
     
    
     self.tableView.reloadRows(at: [indexPath], with: .none)
     completion(true)
     }
    
     action.title = self.butterflies[indexPath.row].isLiked ? "Dislike" : "Like"
   
     action.backgroundColor = self.butterflies[indexPath.row].isLiked  ? UIColor.lightGray : UIColor.init(red:1.00, green:0.47, blue:0.47, alpha:1.0)

     return action
     }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "butterflyInfo") as! ButterflyViewController
        
        vc.nombre = butterflies[indexPath.row].nombre
        vc.tipo = butterflies[indexPath.row].tipo
        vc.descripcion = butterflies[indexPath.row].descripcion
        vc.imgTableButterfly = butterflies[indexPath.row].imagen
        
       
        //Code to represent de view controller
        self.navigationController?.pushViewController(vc, animated: true)

    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterButterflies = butterflies.filter({ (butterfly) -> Bool in
            return butterfly.nombre.lowercased().contains(searchText.lowercased())
        })
        isSearching = searchText != "" ? true : false
        tableView.reloadData()
    }
    
    
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
        tableView.delegate = self
        tableView.dataSource = self
        searchBar.delegate = self
    }
    
    
    
    


}


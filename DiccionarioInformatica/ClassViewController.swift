//
//  ClaseViewController.swift
//  DiccionarioInformatica
//
//  Created by John Ortiz Ordoñez on 1/14/19.
//  Copyright © 2019 John Ortiz Ordoñez. All rights reserved.
//

import UIKit

class ClassViewController: UIViewController {
    
    
    @IBOutlet weak var LblTitle: UILabel!
    @IBOutlet weak var TvwDefinition: UITextView!
    @IBOutlet weak var BtnSource: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if ViewController.Language == 1 {
            LblTitle.text = "Clase"
            TvwDefinition.text = "En informática, una clase es una plantilla para la creación de objetos de datos según un modelo predefinido. Las clases se utilizan para representar entidades o conceptos, como los sustantivos en el lenguaje. Cada clase es un modelo que define un conjunto de variables -el estado, y métodos apropiados para operar con dichos datos -el comportamiento."
            BtnSource.setTitle("Fuente Wikipedia", for: .normal)
        } else {
            LblTitle.text = "Class"
            TvwDefinition.text = "In object-oriented programming, a class is an extensible program-code-template for creating objects, providing initial values for state (member variables) and implementations of behavior (member functions or methods)."
            BtnSource.setTitle("Source Wikipedia", for: .normal)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func onClick(_ sender: Any) {
        var url : URL;
        
        if ViewController.Language == 1 {
            url = URL(string: "https://es.wikipedia.org/wiki/Clase_(inform%C3%A1tica)")!;
        } else {
            url = URL(string: "https://en.wikipedia.org/wiki/Class_(computer_programming)")!;
        }
        
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}

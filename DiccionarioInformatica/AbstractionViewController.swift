//
//  AbstraccionViewController.swift
//  DiccionarioInformatica
//
//  Created by John Ortiz Ordoñez on 1/14/19.
//  Copyright © 2019 John Ortiz Ordoñez. All rights reserved.
//

import UIKit

class AbstractionViewController: UIViewController {

    
    @IBOutlet weak var TvwDefinition: UITextView!
    
    
    @IBOutlet weak var LblTitle: UILabel!
    
    
    @IBOutlet weak var BtnSource: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if ViewController.Language == 1 {
            LblTitle.text = "Abstracción"
            TvwDefinition.text = "La abstracción consiste en aislar un elemento de su contexto o del resto de los elementos que lo acompañan. En programación, el término se refiere al énfasis en el ¿qué hace? más que en el ¿cómo lo hace? (característica de caja negra). El común denominador en la evolución de los lenguajes de programación, desde los clásicos o imperativos hasta los orientados a objetos, ha sido el nivel de abstracción del que cada uno de ellos hace uso."
            BtnSource.setTitle("Fuente Wikipedia", for: .normal)
        } else {
            LblTitle.text = "Abstraction"
            TvwDefinition.text = "Abstraction, in general, is a fundamental concept to computer science and software development."
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
            url = URL(string: "https://es.wikipedia.org/wiki/Abstracci%C3%B3n_(inform%C3%A1tica)")!;
        } else {
            url = URL(string: "https://en.wikipedia.org/wiki/Abstraction_(computer_science)")!;
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}

//
//  BucleViewController.swift
//  DiccionarioInformatica
//
//  Created by John Ortiz Ordoñez on 1/14/19.
//  Copyright © 2019 John Ortiz Ordoñez. All rights reserved.
//

import UIKit

class LoopViewController: UIViewController {
    
    
    @IBOutlet weak var LblTitle: UILabel!
    @IBOutlet weak var TvwDefinition: UITextView!
    @IBOutlet weak var BtnSource: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if ViewController.Language == 1 {
            LblTitle.text = "Bucle"
            TvwDefinition.text = "Un bucle o ciclo, en programación, es una sentencia que ejecuta repetidas veces un trozo de código, hasta que la condición asignada a dicho bucle deja de cumplirse. Los tres bucles más utilizados en programación son el bucle while, el bucle for y el bucle do-while."
            BtnSource.setTitle("Fuente Wikipedia", for: .normal)
        } else {
            LblTitle.text = "Loop"
            TvwDefinition.text = "A loop allows to repeat a set of statements a certain or an undeterminated of times."
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
            url = URL(string: "https://es.wikipedia.org/wiki/Estructuras_de_control")!;
        } else {
            url = URL(string: "https://en.wikipedia.org/wiki/Control_flow#Loops")!;
        }
        
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
}

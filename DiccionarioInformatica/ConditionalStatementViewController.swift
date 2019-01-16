//
//  SentenciaCondicionalViewController.swift
//  DiccionarioInformatica
//
//  Created by John Ortiz Ordoñez on 1/14/19.
//  Copyright © 2019 John Ortiz Ordoñez. All rights reserved.
//

import UIKit

class ConditionalStatementViewController: UIViewController {
    
    
    @IBOutlet weak var LblTitle: UILabel!
    @IBOutlet weak var TvwDefinition: UITextView!
    @IBOutlet weak var BtnSource: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if ViewController.Language == 1 {
            LblTitle.text = "Sentencia condicional"
            TvwDefinition.text = "En programación, una sentencia condicional es una instrucción o grupo de instrucciones que se pueden ejecutar o no en función del valor de una condición."
            BtnSource.setTitle("Fuente Wikipedia", for: .normal)
        } else {
            LblTitle.text = "Conditional statement"
            TvwDefinition.text = "In computer science, conditional statements, conditional expressions and conditional constructs are features of a programming language, which perform different computations or actions depending on whether a programmer-specified boolean condition evaluates to true or false."
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
            url = URL(string: "https://es.wikipedia.org/wiki/Sentencia_condicional")!;
        } else {
            url = URL(string: "https://en.wikipedia.org/wiki/Conditional_(computer_programming)")!;
        }
        
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}

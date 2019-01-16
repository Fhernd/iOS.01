//
//  AlgoritmoViewController.swift
//  DiccionarioInformatica
//
//  Created by John Ortiz Ordoñez on 1/14/19.
//  Copyright © 2019 John Ortiz Ordoñez. All rights reserved.
//

import UIKit

class AlgorithmViewController: UIViewController {

    @IBOutlet weak var LblTitle: UILabel!

    @IBOutlet weak var TvwDefinition: UITextView!
    @IBOutlet weak var BtnSource: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if ViewController.Language == 1 {
            LblTitle.text = "Algoritmo"
            TvwDefinition.text = "En matemáticas, lógica, ciencias de la computación y disciplinas relacionadas, un algoritmo (del griego y latín, dixit algorithmus y este del griego arithmos, que significa «número», quizá también con influencia del nombre del matemático persa Al-Juarismi)1​ es un conjunto prescrito de instrucciones o reglas bien definidas, ordenadas y finitas que permiten llevar a cabo una actividad mediante pasos sucesivos que no generen dudas a quien deba hacer dicha actividad."
            BtnSource.setTitle("Fuente Wikipedia", for: .normal)
        } else {
            LblTitle.text = "Algorithm"
            TvwDefinition.text = "In mathematics and computer science, an algorithm  is an unambiguous specification of how to solve a class of problems. Algorithms can perform calculation, data processing, and automated reasoning tasks."
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
            url = URL(string: "https://es.wikipedia.org/wiki/Algoritmo")!;
        } else {
            url = URL(string: "https://en.wikipedia.org/wiki/Algorithm")!;
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
}

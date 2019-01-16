//
//  ViewController.swift
//  DiccionarioInformatica
//
//  Created by John Ortiz Ordoñez on 1/14/19.
//  Copyright © 2019 John Ortiz Ordoñez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    static var Language : Int = 1;
    
    

    @IBOutlet weak var LblTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if ViewController.Language == 1 {
            LblTitle.text = "Cambiar Idioma"
        } else {
            LblTitle.text = "Change Language"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }

    
    @IBOutlet weak var onClickEspaghnol: UIButton!
    
    
    
    
    @IBOutlet weak var LblChangeLanguage: UILabel!
    @IBAction func onClickCambiarEspaghnol(_ sender: Any) {
        self.LblChangeLanguage.text = "Cambiar Idioma";
        ViewController.Language = 1;
    }
    
    
    @IBAction func onClickChangeEnglish(_ sender: Any) {
        self.LblChangeLanguage.text = "Change Language";
        ViewController.Language = 2;
    }
}


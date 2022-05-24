//
//  ViewController.swift
//  ProyectoFinal
//
//  Created by mac17 on 23/05/22.
//

import UIKit
import CLTypingLabel

class ViewController: UIViewController {

    @IBOutlet weak var tfUser: UITextField!
    @IBOutlet weak var txtBienvenida: CLTypingLabel!
    @IBOutlet weak var tfPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtBienvenida.text = "Bienvenidos al instituto tecnologico de morelia"
        txtBienvenida.onTypingAnimationFinished={
            self.txtBienvenida.textColor = .brown
        }
    }

    @IBAction func btnLogin(_ sender: Any) {
    }
    
}


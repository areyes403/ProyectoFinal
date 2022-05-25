//
//  RegisterViewController.swift
//  ProyectoFinal
//
//  Created by mac17 on 24/05/22.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var tfUser: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func btnLogin(_ sender: Any) {
        
        if let email = tfUser.text, let password = tfPassword.text{
            Auth.auth().createUser(withEmail: email,password:password){ resultado, error in
                if let e = error{
                    print("error al crear usuario en Firebase: \(e.localizedDescription)")
                }else{
                    print("usuario creado")
                    self.perform(performSegue(withIdentifier: "registromenu", sender: self))
                }
                
            }//del auth
        }//del if let
        
        
    }//del botton
    
 

}

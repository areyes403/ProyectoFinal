//
//  ViewController.swift
//  ProyectoFinal
//
//  Created by mac17 on 23/05/22.
//

import UIKit
import CLTypingLabel
import FirebaseAuth
import FirebaseCore

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
        if let email = tfUser.text, let password = tfPassword.text{
            Auth.auth().signIn(withEmail: email, password: password){[weak self] authResult, error in
            if let e = error{
                print("error al iniciar sesion: \(e.localizedDescription)")
            }else{
                print("Inicio de sesion exitoso!")
                self!.performSegue(withIdentifier: "loginmenu", sender: sender)
            }
            
            }
        }
        
        
        
    }
    
    
    class AppDelegate: NSObject, UIApplicationDelegate {
      func application(_ application: UIApplication,
                       didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
      }
    }
    
    
}


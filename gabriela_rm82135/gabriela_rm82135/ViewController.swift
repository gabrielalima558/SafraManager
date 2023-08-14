//
//  ViewController.swift
//  gabriela_rm82135
//
//  Created by Gabriela Lima de Araujo on 30/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var senha: UITextField!
    @IBOutlet weak var usuario: UITextField!
    var user: Usuario! = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func doLogin(){
        user = Usuario(username: usuario.text, senha: senha.text)
        if(user.logar()) {
            performSegue(withIdentifier: "loginToHome", sender:nil)     
        } else {
            let alerta = UIAlertController(title: "Alerta", message: "Usuário e/ou senha inválido(s)", preferredStyle: UIAlertController.Style.alert)
            alerta.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default,
                handler: nil))
            present(alerta, animated: true, completion: nil)
            
        }
    }
    @IBAction func equipeButton(_ sender: Any) {
        performSegue(withIdentifier: "loginToEquipe", sender:nil)
    }
    

    @IBAction func loginButton(_ sender: Any) {
        doLogin()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginToHome" {
            let t = segue.destination as! ResearchViewController
            t.usernameText = user!.username!
        }
    }
}


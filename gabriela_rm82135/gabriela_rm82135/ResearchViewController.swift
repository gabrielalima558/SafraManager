//
//  ResearchViewController.swift
//  gabriela_rm82135
//
//  Created by Gabriela Lima de Araujo on 30/05/23.
//

import UIKit

class ResearchViewController: UIViewController {
    var usernameText: String = ""
    @IBOutlet weak var dataSafra: UILabel!
    @IBOutlet weak var idSafra: UILabel!
    @IBOutlet weak var username: UILabel!
    var safra: Safra! = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        username.text = "Olá, \(usernameText)"
        setInfosUltimaPesquisa()
    }
    
    func setInfosUltimaPesquisa() {
        safra = Safra(idSafra: "90999", dataColeta: "20/06/2022", horarioColeta: "08:20",
            pragas: "Lagarta-elasmo, larva-alfinete e pulgão do milho",
            comprometimentoSafra: "16%"
        )
        
        idSafra.text = "Safra - \(safra.idSafra ?? "")"
        dataSafra.text = "\(safra.dataColeta ?? "") - \(safra.horarioColeta ?? "")"
    }
    @IBAction func detalhesButton(_ sender: Any) {
        performSegue(withIdentifier: "homeToDetails", sender: nil)
    }
    @IBAction func pesquisarButton(_ sender: Any) {
        performSegue(withIdentifier: "homeToPesquisa", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "homeToDetails" {
            let t = segue.destination as! DetailResearchViewController
            t.safra = safra
        }
    }
}

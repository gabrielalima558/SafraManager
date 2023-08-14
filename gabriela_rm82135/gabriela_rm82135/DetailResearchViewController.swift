//
//  DetailResearchViewController.swift
//  gabriela_rm82135
//
//  Created by Gabriela Lima de Araujo on 03/06/23.
//

import UIKit

class DetailResearchViewController: UIViewController {
    
    var safra: Safra! = nil

    @IBOutlet weak var numeroSafra: UILabel!
    @IBOutlet weak var dataColeta: UILabel!
    @IBOutlet weak var horarioColeta: UILabel!
    @IBOutlet weak var comprometimento: UILabel!
    @IBOutlet weak var pragas: UITextView!
    
    @IBOutlet weak var comparacao: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setSafra()
    }
    func setSafra() {
        numeroSafra.text = safra.idSafra
        dataColeta.text = safra.dataColeta
        horarioColeta.text = safra.horarioColeta
        comprometimento.text = "Comprometimento por pragas: \(safra.comprometimentoSafra ?? "")"
        pragas.text = safra.pragas
        safra.calculaDiferencaSafraPercentual()
        comparacao.text = safra.evolucaoSafra
    }

    @IBAction func helpButton(_ sender: Any) {
        let alerta = UIAlertController(title: "Ajuda", message: "Com essas informações da sua safra coletada por drones, você poderá verificar a qualidade de seus produtos para que você tome decisões para melhorar o seu cultivo.", preferredStyle: UIAlertController.Style.alert)
        alerta.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default,
            handler: nil))
        present(alerta, animated: true, completion: nil)
    }
}

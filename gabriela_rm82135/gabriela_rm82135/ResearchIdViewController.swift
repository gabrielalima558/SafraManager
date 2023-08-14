//
//  ResearchIdViewController.swift
//  gabriela_rm82135
//
//  Created by Gabriela Lima de Araujo on 03/06/23.
//

import UIKit

class ResearchIdViewController: UIViewController {

    @IBOutlet weak var idSafra: UITextField!
    var safra: Safra? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func buildSafra() {
        let textId: String? = idSafra.text
        if(!(textId?.isEmpty)!) {
            safra = Safra(
                idSafra: textId,
                dataColeta: "20/06/2022",
                horarioColeta: "08:20",
                pragas: "Lagarta-elasmo, larva-alfinete e pulgão do milho",
                comprometimentoSafra: "16%"
            )
            performSegue(withIdentifier: "pesquisaToSuccess", sender: nil)
        } else {
            performSegue(withIdentifier: "pesquisaToError", sender: nil)
        }
    }
    
    @IBAction func researchSafraButton(_ sender: Any) {
        buildSafra()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pesquisaToSuccess" {
            let t = segue.destination as! ResearchSuccessViewController
            t.safra = safra
        }
    }
}

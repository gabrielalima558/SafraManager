//
//  ResearchSuccessViewController.swift
//  gabriela_rm82135
//
//  Created by Gabriela Lima de Araujo on 03/06/23.
//

import UIKit

class ResearchSuccessViewController: UIViewController {
    var safra: Safra? = nil
    
    @IBOutlet weak var data: UILabel!
    @IBOutlet weak var safraId: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setSafraValues()
    }
    func setSafraValues() {
        safraId.text = "Safra - \(safra?.idSafra ?? "")"
        data.text = "\(safra?.dataColeta ?? "") - \(safra?.horarioColeta ?? "")"
       
    }
    @IBAction func detalhesButton(_ sender: Any) {
        performSegue(withIdentifier: "successToDetalhes", sender: nil)
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "successToDetalhes" {
            let t = segue.destination as! DetailResearchViewController
            t.safra = safra
        }
    }
}

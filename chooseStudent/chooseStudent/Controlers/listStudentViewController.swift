//
//  listStudentViewController.swift
//  chooseStudent
//
//  Created by CLAUDIA MALHEIROS on 10/4/22.
//

import UIKit

class listStudentViewController: UIViewController {
    
var cont = 0
    
var manager = managerStudents()
var student: Student!
    
    
    @IBOutlet weak var lbNome: UILabel!
    @IBOutlet weak var lbSerie: UILabel!
    @IBOutlet weak var lbNota: UILabel!
    
    @IBOutlet weak var btAnterior: UIButton!
    @IBOutlet weak var btSucessor: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btAnterior.isHidden = true
        btSucessor.isHidden = true
        
        if manager.escola.count > 0 {
            lbNome.text = manager.escola[0].nomeS
            lbSerie.text = manager.escola[0].serieS
            lbNota.text = manager.escola[0].notaS
        }
        if manager.escola.count > 1 {
            btSucessor.isHidden = false
        }
    }
    @IBAction func btAnterior(_ sender: Any) {
    }
    @IBAction func btSucessor(_ sender: Any) {
        cont = cont + 1
        student = manager.listStudent(posicao: cont)
        lbNome.text = student.nomeS
        lbSerie.text = student.serieS
        lbNota.text = student.notaS
        
        if (cont+1) == manager.escola.count{
            btSucessor.isHidden = true 
        }
            
    }
    
}

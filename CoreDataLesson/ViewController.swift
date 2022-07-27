//
//  ViewController.swift
//  CoreDataLesson
//
//  Created by Ольга Егорова on 20.07.2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    var dataStoreManager = DataStoreManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        toObtainMainUser ()

        textField.delegate = self
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        guard let name = textField.text else {return}
        dataStoreManager.updateMainUser(with: name)
        
        toObtainMainUser ()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //завершение работы с клавиатурой
        textField.resignFirstResponder()
        //если кнопка return работает - то
        textField.text = ""
        return true
        
    }
    
    @IBAction func removeDidPressed(_ sender: UIButton) {
        dataStoreManager.removeMainUser()
        toObtainMainUser ()
    }
    
    func  toObtainMainUser () {
        let user = dataStoreManager.obtainMainUser()
        
        nameLabel.text = user.name! + " " + (user.company?.name ?? "")
        ageLabel.text = String(user.age)
    }
    
}


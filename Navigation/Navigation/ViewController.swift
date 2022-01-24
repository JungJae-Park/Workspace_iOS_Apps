//
//  ViewController.swift
//  Navigation
//
//  Created by Park's MacBook Pro on 2022/01/24.
//

import UIKit

class ViewController: UIViewController, EditDelegate {

    @IBOutlet var txtMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        if segue.identifier == "editButton" { // 버튼을 클릭한 경우
            editViewController.textWayValue = "segue: Button"
        } else if segue.identifier == "editBarButton" { // 바 버튼을 클릭한 경우
            editViewController.textWayValue = "segue: Bar button"
        }
        editViewController.textMessage = txtMessage.text!
        editViewController.delegate = self
    }
    
    func didMessageEditDone(_ controller: EditViewController, message: String) {
        txtMessage.text = message
    }

}


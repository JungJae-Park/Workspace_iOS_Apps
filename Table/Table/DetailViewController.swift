//
//  DetailViewController.swift
//  Table
//
//  Created by Park's MacBook Pro on 2022/01/26.
//

import UIKit

class DetailViewController: UIViewController {

    var receiveItem = ""
    var receiveItemImage = ""
    
    @IBOutlet var lblItem: UILabel!
    @IBOutlet var imgItem: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblItem.text = receiveItem
        imgItem.image = UIImage(named: receiveItemImage)
    }
    
    func receiveItem(_ item: String) {
        receiveItem = item
    }
    
    func receiveItemImage(_ item: String) {
        receiveItemImage = item
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

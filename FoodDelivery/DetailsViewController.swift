//
//  DetailsViewController.swift
//  FoodDelivery
//
//  Created by Иван on 5/17/21.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var image = ""
    var name = ""

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelOutlet: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: image)
        labelOutlet.text = name
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        <#code#>
    }
    
    @IBAction func chooseButtonPressed(_ sender: Any) {
    }
    

}

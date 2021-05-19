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
    
    @IBOutlet weak var cheeseSwitch: UISwitch!
    @IBOutlet weak var hamSwitch: UISwitch!
    @IBOutlet weak var oliveSwitch: UISwitch!
    @IBOutlet weak var colaSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: image)
        labelOutlet.text = name
        
    }
    
    func makeOrderString() -> String {
        var order = String()
        if cheeseSwitch.isOn {
            order += "\nСыр"
        }
        if hamSwitch.isOn {
            order += "\nВетчина"
        }
        if oliveSwitch.isOn {
            order += "\nМаслины"
        }
        if colaSwitch.isOn {
            order += "\nКола"
        }
        return order
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "order" else { return }
        guard let destination = segue.destination as? OrderViewController else { return }
        destination.order = "Пицца \(labelOutlet.text ?? "не выбрана")" + "\(makeOrderString())"
    }
    
}

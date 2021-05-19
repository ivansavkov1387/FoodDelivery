//
//  OrderViewController.swift
//  FoodDelivery
//
//  Created by Иван on 5/18/21.
//

import UIKit

class OrderViewController: UIViewController {
    
    var order = ""
    
    @IBOutlet weak var orderLabel: UILabel!
    
    @IBOutlet weak var paperSwitch: UISwitch!
    @IBOutlet weak var cardSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        orderLabel.text = order
        cardSwitch.isOn = false
        
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Заказ оплачен!", message: "Ваш заказ доставят в течение 60 мин", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .cancel) { _ in
            self.performSegue(withIdentifier: "goToMenu", sender: nil)
        }
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    fileprivate func paperPayLogic() {
        if paperSwitch.isOn {
            cardSwitch.isOn = false
        } else {
            cardSwitch.isOn = true
        }
    }
    
    fileprivate func cardPayLogic() {
        if paperSwitch.isOn {
            paperSwitch.isOn = false
        } else {
            paperSwitch.isOn = true
        }
    }
    
    @IBAction func paperSwitchOff(_ sender: Any) {
        paperPayLogic()
    }
    @IBAction func cardSwitchOff(_ sender: Any) {
        cardPayLogic()
    }
    
    @IBAction func payButtonPressed(_ sender: Any) {
        showAlert()
    }
    
    
}

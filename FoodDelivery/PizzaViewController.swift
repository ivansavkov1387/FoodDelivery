//
//  PizzaViewController.swift
//  FoodDelivery
//
//  Created by Иван on 5/17/21.
//

import UIKit

class PizzaViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "carbonareSegue" {
            guard let destination = segue.destination as? DetailsViewController else { return }
            destination.name = "Карбонара"
            destination.image = "carbonara"
        } else {
            guard let destination = segue.destination as? DetailsViewController else { return }
            destination.name = "Прованс"
            destination.image = "provence"
        }
        
        
    }
}

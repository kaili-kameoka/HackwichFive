//
//  ViewController.swift
//  HackwichFive
//
//  Created by Kaili Kameoka on 2/21/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    var currentIndex = 0;
    var favoriteFoodsArra = ["Burgers", "Sushi", "Fried Chicken"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topLabel.text =  "My favorite foods:";
        bottomLabel.text = favoriteFoodsArra[currentIndex];
    }

    
}


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
    
    @IBOutlet weak var buttonLabel: UIButton!
    var currentIndex = 0;
    var favoriteFoodsArra = ["Burgers", "Sushi", "Fried Chicken"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topLabel.text =  "My favorite foods:";
        bottomLabel.text = favoriteFoodsArra[currentIndex];
    }

    @IBAction func buttonPressed(_ sender: Any) {
        if (self.currentIndex < favoriteFoodsArra.count) {
            self.bottomLabel.text = favoriteFoodsArra[currentIndex]
            self.buttonLabel.setTitle("next", for: UIControl.State.normal);
            currentIndex += 1;
            
        } else {
            print("button has been disabled");
            self.buttonLabel.isEnabled = false;
        }
    }
    
}


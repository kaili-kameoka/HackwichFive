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
        // Check that the curent index is within the range of the array.
        if (self.currentIndex < favoriteFoodsArra.count) {
            // Change the bottom label to the text of the current element in the array
            self.bottomLabel.text = favoriteFoodsArra[currentIndex]
            // change the button's label text to next
            self.buttonLabel.setTitle("next", for: UIControl.State.normal);
            // Increment the current index
            currentIndex += 1;
            
        } else {
            // Notify hte console tha the button is being disabled.
            print("button has been disabled");
            // Disable the button.
            self.buttonLabel.isEnabled = false;
        }
    }
    
}


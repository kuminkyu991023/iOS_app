//
//  ViewController.swift
//  simple_arrow_game
//
//  Created by 구민규 on 12/25/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image01: UIImageView!
    let symbols:[String] = ["arrow.left", "arrow.right", "arrow.up", "arrow.down"]
    var count:Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        change()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    func change(){
        let symbol = symbols.randomElement()!
        if symbol == "arrow.left"{
            label.text = "left"
        }
        else if symbol == "arrow.right"{
            label.text = "right"
        }
        else if symbol == "arrow.up"{
            label.text = "up"
        }
        else if symbol == "arrow.down"
        {
            label.text = "down"
         }
        image01.image = UIImage(systemName: symbol)
    }
    
    @IBAction func button_push(_ sender: Any) {
        change()
        print("you click button")
        print(count)
        count = count+1
        
    }
    
    


}


//
//  simple_dice_gameViewController.swift
//  simple_dice_game
//
//  Created by 구민규 on 12/25/23.
//
//DRY do not reapt yourself

import UIKit

class simple_dice_gameViewController: UIViewController {
    
    let symbols:[String]  = ["1.square","2.square","3.square","4.square","5.square","6.square"]
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        reload()
        
        //ToDo:
        //symbols에서 하나를 임의로로 추출해서,
        //이미지와 텍스트를 설정을 한다
        
        
// Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    
    func reload(){
        let symbol = symbols.randomElement()!
        imageview.image = UIImage(systemName: symbol)
        print("view is ready")
        label.text = String(symbol.prefix(1))//label에 들어갈 단어를 형성한다.
        
    }
    
    //IBAaction은 어떠한 함수와 연결되는 것을 표현항 것이다.
    @IBAction func buttonTapped(_ sender: Any) {
        
       reload()
        
        
    }
    //위에 작동되는 순서 잘 알고 있기
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

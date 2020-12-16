//
//  ViewController.swift
//  Tic-Tac-Toe
//
//  Created by Hanyu Yang on 2020/12/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gameStateNavBar: UINavigationBar!
    @IBOutlet weak var gameStateLabel: UILabel!
    @IBOutlet var gameBoardButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateView()
    }
    
    @IBAction func pressedNewGame(_ sender: Any) {
        print("New Game")
        updateView()
    }

    @IBAction func pressedGameBoardButton(_ sender: Any) {
        let button = sender as! UIButton
        print(button.tag)
        updateView()
    }
    
    func updateView() {
        
    }
}


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
    @IBOutlet weak var gameBoardImage: UIImageView!
    
    var xImage: UIImage!
    var oImage: UIImage!
    var game = TicTacToeGame()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if traitCollection.horizontalSizeClass == UIUserInterfaceSizeClass.compact {
            gameBoardImage.image = #imageLiteral(resourceName: "iPhone_board.png")
            xImage = #imageLiteral(resourceName: "iPhone_X.png")
            oImage = #imageLiteral(resourceName: "iPhone_O.png")
        } else {
            gameBoardImage.image = #imageLiteral(resourceName: "iPad_board.png")
            xImage = #imageLiteral(resourceName: "iPad_X.png")
            oImage = #imageLiteral(resourceName: "iPad_O.png")
        }
        updateView()
    }
    
    @IBAction func pressedNewGame(_ sender: Any) {
        //print("New Game")
        game = TicTacToeGame()
        updateView()
    }

    @IBAction func pressedGameBoardButton(_ sender: Any) {
        let button = sender as! UIButton
        //print(button.tag)
        game.pressedSquareAt(button.tag)
        updateView()
    }
    
    func updateView() {
        print("Game State: \(game)")
        
        if traitCollection.horizontalSizeClass == UIUserInterfaceSizeClass.compact {
            // IPhone
            gameStateLabel.text = game.state.rawValue
        } else {
            // IPad
            gameStateNavBar.topItem?.title = game.state.rawValue
        }
        
        for button in gameBoardButtons {
            let buttonIndex = button.tag
            switch game.board[buttonIndex] {
            case .none:
                button.setImage(nil, for: UIControl.State.normal)
            case .x:
                button.setImage(xImage, for: .normal)
            case .o:
                button.setImage(oImage, for: .normal)
            }
        }
    }
}


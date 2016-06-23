//
//  gamePage.swift
//  matchstickGame
//
//  Created by Jack Chen on 6/22/16.
//  Copyright © 2016 Jack Chen. All rights reserved.
//

import UIKit

class gamePage: UIViewController {
    
    @IBOutlet weak var playerCurrent: UILabel!
    
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if numberSticks == 20 {
            currentSticks = 20
            backgroundImage.image = UIImage(named: "twentyMatch.png")
        } else if numberSticks == 10 {
            currentSticks = 10
            backgroundImage.image = UIImage(named: "tenMatch.png")
        }
    }
    
    var currentSticks = numberSticks
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        newGame()
        if numberPlayers == 1 {
            play()
        } else {
            play2()
        }

        
        
    }
    var playerMadeMove = false
    
    func newGame() {

        if numberSticks == 10 {
            currentSticks = 10
            backgroundImage.image = UIImage(named: "tenMatch.png")
        } else if numberSticks == 20 {
            currentSticks = 20
            backgroundImage.image = UIImage(named: "twentyMatch.png")
        }
    }
    
    
    var playerMoved = "None"
    
    
    func play2() {
        if playerMoved == "None" || playerMoved == "2" {
            playerCurrent.text = "Player turn: One"
            
            if currentSticks <= 0 {
                print("i should get in here")
                winLabel.text = "Player One wins!"
            }
            print("player 1, make your move")
        } else if playerMoved == "1" {
            
            playerCurrent.text = "Player turn: Two"
            if currentSticks <= 0 {
                winLabel.text = "Player One wins!"
            }
            print("player 2, make your move")
        }
        
        
        
        
    }
    
    
    
    
    func play() {
        if playerMadeMove == false {
            print("pick 1, 2, or 3 matches")
        } else if playerMadeMove == true {
            if currentSticks == 0 {
                winLabel.text = "YOU WIN!"
                newGame()
            } else {
            let randomMatch = arc4random_uniform(2)

            switch randomMatch {
            case 0:
                currentSticks -= 1
                break
            case 1:
                currentSticks -= 2
                break
            default:
                break
            }
            
            if currentSticks <= 0 {
                winLabel.text = "Sorry, try again!"
                
                newGame()
            }
            
            if currentSticks == 1 {
                backgroundImage.image = UIImage(named: "oneMatch.png")
            } else if currentSticks == 19 {
                backgroundImage.image = UIImage(named: "nineteenMatch.png")
            } else if currentSticks == 18 {
                backgroundImage.image = UIImage(named: "eighteenMatch.png")
            } else if currentSticks == 17 {
                backgroundImage.image = UIImage(named: "seventeenMatch.png")
            } else if currentSticks == 16 {
                backgroundImage.image = UIImage(named: "sixteenMatch.png")
            } else if currentSticks == 15 {
                backgroundImage.image = UIImage(named: "fifteenMatch.png")
            } else if currentSticks == 14 {
                backgroundImage.image = UIImage(named: "fourteenMatch.png")
            } else if currentSticks == 13 {
                backgroundImage.image = UIImage(named: "thirteenMatch.png")
            } else if currentSticks == 12 {
                backgroundImage.image = UIImage(named: "twelveMatch.png")
            } else if currentSticks == 11 {
                backgroundImage.image = UIImage(named: "elevenMatch.png")
            } else if currentSticks == 10 {
                backgroundImage.image = UIImage(named: "tenMatch.png")
            } else if currentSticks == 9 {
                backgroundImage.image = UIImage(named: "nineMatch.png")
            } else if currentSticks == 8 {
                backgroundImage.image = UIImage(named: "eightMatch.png")
            } else if currentSticks == 7 {
                backgroundImage.image = UIImage(named: "sevenMatch.png")
            } else if currentSticks == 6 {
                backgroundImage.image = UIImage(named: "sixMatch.png")
            } else if currentSticks == 5 {
                backgroundImage.image = UIImage(named: "fiveMatch.png")
            } else if currentSticks == 4 {
                backgroundImage.image = UIImage(named: "fourMatch.png")
            } else if currentSticks == 3 {
                backgroundImage.image = UIImage(named: "threeMatch.png")
            } else if currentSticks == 2 {
                backgroundImage.image = UIImage(named: "twoMatch.png")
            } else {

            }

            playerMadeMove = false
            play()
            }
        }
        
    }
    
    @IBAction func pickedOne(sender: AnyObject) {
        
        currentSticks -= 1
        if currentSticks <= 0 {
            
            if numberPlayers == 1 {
                winLabel.text = "YOU WIN!"
                newGame()
            } else if numberPlayers == 2 {
                if playerMoved == "1" {
                    winLabel.text = "Player Two won!"
                } else if playerMoved == "2" {
                    winLabel.text = "Player One won!"
                }
                newGame()
            }
            
            

            

        } else if currentSticks == 1 {
            backgroundImage.image = UIImage(named: "oneMatch.png")

        } else if currentSticks == 19 {
            backgroundImage.image = UIImage(named: "nineteenMatch.png")
        } else if currentSticks == 18 {
            backgroundImage.image = UIImage(named: "eighteenMatch.png")
        } else if currentSticks == 17 {
            backgroundImage.image = UIImage(named: "seventeenMatch.png")
        } else if currentSticks == 16 {
            backgroundImage.image = UIImage(named: "sixteenMatch.png")
        } else if currentSticks == 15 {
            backgroundImage.image = UIImage(named: "fifteenMatch.png")
        } else if currentSticks == 14 {
            backgroundImage.image = UIImage(named: "fourteenMatch.png")
        } else if currentSticks == 13 {
            backgroundImage.image = UIImage(named: "thirteenMatch.png")
        } else if currentSticks == 12 {
            backgroundImage.image = UIImage(named: "twelveMatch.png")
        } else if currentSticks == 11 {
            backgroundImage.image = UIImage(named: "elevenMatch.png")
        } else if currentSticks == 10 {
            backgroundImage.image = UIImage(named: "tenMatch.png")
        } else if currentSticks == 9 {
            backgroundImage.image = UIImage(named: "nineMatch.png")
        } else if currentSticks == 8 {
            backgroundImage.image = UIImage(named: "eightMatch.png")
        } else if currentSticks == 7 {
            backgroundImage.image = UIImage(named: "sevenMatch.png")
        } else if currentSticks == 6 {
            backgroundImage.image = UIImage(named: "sixMatch.png")
        } else if currentSticks == 5 {
            backgroundImage.image = UIImage(named: "fiveMatch.png")
        } else if currentSticks == 4 {
            backgroundImage.image = UIImage(named: "fourMatch.png")
        } else if currentSticks == 3 {
            backgroundImage.image = UIImage(named: "threeMatch.png")
        } else if currentSticks == 2 {
            backgroundImage.image = UIImage(named: "twoMatch.png")
        } else {

        }
        
        if numberPlayers == 1 {
            playerMadeMove = true
            play()
        } else if numberPlayers == 2 {
            if playerMoved == "2" || playerMoved == "None" {
                playerMoved = "1"
                play2()
            } else if playerMoved == "1" {
                playerMoved = "2"
                play2()
            }
            
        }

    }
    
    
    
    
    
    @IBAction func twoPicked(sender: AnyObject) {
        
        currentSticks -= 2
        if currentSticks <= 0 {
            
            if numberPlayers == 1 {
                winLabel.text = "YOU WIN!"
                newGame()
            } else if numberPlayers == 2 {
                if playerMoved == "1" {
                    winLabel.text = "Player Two won!"
                } else if playerMoved == "2" {
                    winLabel.text = "Player One won!"
                }
                newGame()
            }
            
            
            
            
            
        }  else if currentSticks == 1 {
            backgroundImage.image = UIImage(named: "oneMatch.png")
        } else if currentSticks == 19 {
            backgroundImage.image = UIImage(named: "nineteenMatch.png")
        } else if currentSticks == 18 {
            backgroundImage.image = UIImage(named: "eighteenMatch.png")
        } else if currentSticks == 17 {
            backgroundImage.image = UIImage(named: "seventeenMatch.png")
        } else if currentSticks == 16 {
            backgroundImage.image = UIImage(named: "sixteenMatch.png")
        } else if currentSticks == 15 {
            backgroundImage.image = UIImage(named: "fifteenMatch.png")
        } else if currentSticks == 14 {
            backgroundImage.image = UIImage(named: "fourteenMatch.png")
        } else if currentSticks == 13 {
            backgroundImage.image = UIImage(named: "thirteenMatch.png")
        } else if currentSticks == 12 {
            backgroundImage.image = UIImage(named: "twelveMatch.png")
        } else if currentSticks == 11 {
            backgroundImage.image = UIImage(named: "elevenMatch.png")
        } else if currentSticks == 10 {
            backgroundImage.image = UIImage(named: "tenMatch.png")
        } else if currentSticks == 9 {
            backgroundImage.image = UIImage(named: "nineMatch.png")
        } else if currentSticks == 8 {
            backgroundImage.image = UIImage(named: "eightMatch.png")
        } else if currentSticks == 7 {
            backgroundImage.image = UIImage(named: "sevenMatch.png")
        } else if currentSticks == 6 {
            backgroundImage.image = UIImage(named: "sixMatch.png")
        } else if currentSticks == 5 {
            backgroundImage.image = UIImage(named: "fiveMatch.png")
        } else if currentSticks == 4 {
            backgroundImage.image = UIImage(named: "fourMatch.png")
        } else if currentSticks == 3 {
            backgroundImage.image = UIImage(named: "threeMatch.png")
        } else if currentSticks == 2 {
            backgroundImage.image = UIImage(named: "twoMatch.png")
        } else {

        }

        
        if numberPlayers == 1 {
            playerMadeMove = true
            play()
        } else if numberPlayers == 2 {
            if playerMoved == "2" || playerMoved == "None" {
                playerMoved = "1"
                play2()
            } else if playerMoved == "1" {
                playerMoved = "2"
                play2()
            }
            
        }
        
        
        
        
    }
    
    
    @IBAction func threeChosen(sender: AnyObject) {
        currentSticks -= 3
        
        if currentSticks <= 0 {
            
            if numberPlayers == 1 {
                winLabel.text = "YOU WIN!"
                newGame()
            } else if numberPlayers == 2 {
                if playerMoved == "1" {
                    winLabel.text = "Player Two won!"
                } else if playerMoved == "2" {
                    winLabel.text = "Player One won!"
                }
                newGame()
            }
            
        }  else if currentSticks == 1 {
            backgroundImage.image = UIImage(named: "oneMatch.png")

        } else if currentSticks == 19 {
            backgroundImage.image = UIImage(named: "nineteenMatch.png")
        } else if currentSticks == 18 {
            backgroundImage.image = UIImage(named: "eighteenMatch.png")
        } else if currentSticks == 17 {
            backgroundImage.image = UIImage(named: "seventeenMatch.png")
        } else if currentSticks == 16 {
            backgroundImage.image = UIImage(named: "sixteenMatch.png")
        } else if currentSticks == 15 {
            backgroundImage.image = UIImage(named: "fifteenMatch.png")
        } else if currentSticks == 14 {
            backgroundImage.image = UIImage(named: "fourteenMatch.png")
        } else if currentSticks == 13 {
            backgroundImage.image = UIImage(named: "thirteenMatch.png")
        } else if currentSticks == 12 {
            backgroundImage.image = UIImage(named: "twelveMatch.png")
        } else if currentSticks == 11 {
            backgroundImage.image = UIImage(named: "elevenMatch.png")
        } else if currentSticks == 10 {
            backgroundImage.image = UIImage(named: "tenMatch.png")
        } else if currentSticks == 9 {
            backgroundImage.image = UIImage(named: "nineMatch.png")
        } else if currentSticks == 8 {
            backgroundImage.image = UIImage(named: "eightMatch.png")
        } else if currentSticks == 7 {
            backgroundImage.image = UIImage(named: "sevenMatch.png")
        } else if currentSticks == 6 {
            backgroundImage.image = UIImage(named: "sixMatch.png")
        } else if currentSticks == 5 {
            backgroundImage.image = UIImage(named: "fiveMatch.png")
        } else if currentSticks == 4 {
            backgroundImage.image = UIImage(named: "fourMatch.png")
        } else if currentSticks == 3 {
            backgroundImage.image = UIImage(named: "threeMatch.png")
        } else if currentSticks == 2 {
            backgroundImage.image = UIImage(named: "twoMatch.png")
        } else {

        }
        
        
        if numberPlayers == 1 {
            playerMadeMove = true
            play()
        } else if numberPlayers == 2 {
            if playerMoved == "2" || playerMoved == "None" {
                playerMoved = "1"
                play2()
            } else if playerMoved == "1" {
                playerMoved = "2"
                play2()
            }
            
        }
        
        
        
        
        
    }
    
    
    
    
    
    
    

}

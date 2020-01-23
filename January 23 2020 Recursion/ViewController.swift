//
//  ViewController.swift
//  January 23 2020 Recursion
//
//  Created by Margiett Gil on 1/23/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var performOperations: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func performOperations(_ sender: UIButton) {
        //recurse(7)
        countDownToZero(from: 20)
    }
    // example 1
    func recurse(_ n: Int) {
        guard n > 0 else { return } // base case
        print("hi")
        recurse(n - 1) // recursive call - 6
    }
    // example 2
    func countDownToZero(from num: Int) {
        guard num >= 0 else { return } //  base call
        print(num) //20
        countDownToZero(from: num - 1) // recursive call
        
        // countDownToZero(19)
        // countDownToZero (18)
        // countDownToZero (17)
        // countDownToZero (16)
        
    }
    //MARK: example - factorial
    //MARK: formula for finding factorial is n * (n - 1)
    //MARK: factorial is used to find the number of permutation of a given is this case number
    func factorial(_ n: Int) -> Int {
        guard n > 1 else { return 1 } // base case
        return n * factorial(n - 1)
        // 4 * factorial (3) -> 24
        // 3 * factorial (2) -> 6
        // 2 * factorial (1) -> 2
        // factorial(1) -> 1
        
        
    }
     

}


//
//  EmojiDefViewController.swift
//  Emoji Dictionary
//
//  Created by Enrique V. Kortright on 5/1/17.
//  Copyright © 2017 Enrique V. Kortright. All rights reserved.
//

import UIKit

class EmojiDefViewController: UIViewController {
    
    var emoji = "No emoji"
    
    @IBOutlet weak var emojiLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print(emoji)
        emojiLabel.text = emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

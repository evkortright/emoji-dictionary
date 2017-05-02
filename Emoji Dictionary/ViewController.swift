//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Enrique V. Kortright on 4/30/17.
//  Copyright © 2017 Enrique V. Kortright. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var theTable: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        theTable.dataSource = self
        theTable.delegate = self
        emojis = loadEmojis()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row].icon
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(sender!)
        let emojiDefVC = segue.destination as! EmojiDefViewController
        emojiDefVC.emoji = sender as! Emoji!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadEmojis() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.icon = "😎"
        emoji1.description = "Cool Face"
        
        let emoji2 = Emoji()
        emoji2.icon = "😇"
        emoji2.description = "Angel Face"

        let emoji3 = Emoji()
        emoji3.icon = "💤"
        emoji3.description = "Sleeping"

        let emoji4 = Emoji()
        emoji4.icon = "⚽️"
        emoji4.description = "Soccer Ball"

        let emoji5 = Emoji()
        emoji5.icon = "🏀"
        emoji5.description = "Basketball"

        let emoji6 = Emoji()
        emoji6.icon = "🏈"
        emoji6.description = "Football"

        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }
}


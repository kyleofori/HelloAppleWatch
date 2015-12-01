//
//  InterfaceController.swift
//  HelloAppleWatch WatchKit App Extension
//
//  Created by Kyle Ofori on 11/24/15.
//  Copyright © 2015 Razeware. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var button: WKInterfaceButton!
    let emoji = EmojiData()
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        showFortune()
    }
    
    func showFortune() {
        let firstIndex = emoji.first.count.random()
        let secondIndex = emoji.second.count.random()
        let thirdIndex = emoji.third.count.random()
        let fourthIndex = emoji.fourth.count.random()
        let fifthIndex = emoji.fifth.count.random()
        
        button.setTitle("\(emoji.first[firstIndex])\(emoji.second[secondIndex])\(emoji.third[thirdIndex])\(emoji.fourth[fourthIndex])\(emoji.fifth[fifthIndex])")
    }
    
    @IBAction func newFortune() {
        showFortune()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

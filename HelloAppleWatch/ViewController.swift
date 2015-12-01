/*
* Copyright (c) 2015 Razeware LLC
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*/

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var emojiHelloLabel: UILabel!
  @IBOutlet weak var emojiFortuneLabel: UILabel!
  
  let emoji = EmojiData()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    emojiHelloLabel.text = "👋🍎⌚️‼"
    showFortune()
  }
  
  func showFortune() {
    let firstIndex = emoji.first.count.random()
    let secondIndex = emoji.second.count.random()
    let thirdIndex = emoji.third.count.random()
    let fourthIndex = emoji.fourth.count.random()
    let fifthIndex = emoji.fifth.count.random()
    
    emojiFortuneLabel.text = "\(emoji.first[firstIndex])\(emoji.second[secondIndex])\(emoji.third[thirdIndex])\(emoji.fourth[fourthIndex])\(emoji.fifth[fifthIndex])"
  }
  
  @IBAction func newFortune(sender: AnyObject) {
    showFortune()
  }
  
}


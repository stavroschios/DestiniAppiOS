//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Stavros Pachoundakis on 17/02/2021.
//  Copyright © 2021. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
     
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    
}

































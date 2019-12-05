//
//  FirstViewController.swift
//  myTime
//
//  Created by Luigi Cerrato on 05/12/2019.
//  Copyright © 2019 Luigi Cerrato. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var BadgeInButton: UIButton!
    
    @IBOutlet weak var BadgeOutButton: UIButton!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            getTime()
            setup()
        
    }
    func setup(){
        BadgeInButton.setTitle("Badge In", for: .normal)
        BadgeOutButton.setTitle("Badge Out" , for: .normal)
        
    }
    func getTime(){
        dateLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .long, timeStyle: .none)
            timeLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .short)
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(self.tick) , userInfo: nil, repeats: true)
        
    }

    @objc func tick() {
        dateLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .long, timeStyle: .none)
        timeLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .short)
    }

}

enum state {
    case  Working
    case  NotWorking
}




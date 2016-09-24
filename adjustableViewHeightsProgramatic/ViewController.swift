//
//  ViewController.swift
//  adjustableViewHeightsProgramatic
//
//  Created by Adhyam Nagarajan, Padmaja on 9/23/16.
//  Copyright © 2016 Adhyam Nagarajan, Padmaja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  typealias onReload = Void -> Void
  var reload:onReload?
  @IBOutlet weak var clickME: UIButton!{
    didSet{
      self.clickME.setTitle("Click to see your Poker face", forState: UIControlState.Normal)
    }
  }
  
  @IBOutlet weak var bradMeImage: UIImageView!
  
  @IBOutlet weak var containerView: UIView!
  @IBOutlet weak var containerViewHeight: NSLayoutConstraint!
  
  @IBAction func toggleAction(sender: AnyObject) {
    self.bradMeImage.hidden = false
    self.clickME.setTitle("Here you go!!!!!", forState: UIControlState.Normal)
//    self.bradMeImage.layoutIfNeeded()
//    self.bradMeImage.setNeedsDisplay()
    self.bradMeImage.layoutIfNeeded()
    self.containerViewHeight.constant = self.containerViewHeight.constant + 10
    self.containerView.layoutIfNeeded()
//    self.reload?()
//    self.bradMeImage.setNeedsDisplay()
//        self.containerView.setNeedsDisplay()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.bradMeImage.hidden = true
    if(self.bradMeImage.hidden){
      self.containerViewHeight.constant = self.containerViewHeight.constant - self.bradMeImage.frame.height
    }
  }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}


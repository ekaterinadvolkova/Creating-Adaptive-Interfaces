//
//  RadioViewController.swift
//  Course2Week4Task1
//
//  Copyright © 2018 e-Legion. All rights reserved.
//

import UIKit


class RadioViewController: UIViewController {
    
    @IBOutlet weak var circle1: UILabel!
    @IBOutlet weak var circle2: UILabel!
    @IBOutlet weak var circle3: UILabel!
    @IBOutlet weak var circle4: UILabel!
    @IBOutlet weak var circle5: UILabel!
    @IBOutlet weak var circle6: UILabel!
    
    @IBOutlet weak var buttonVertical1: UIButton!
    @IBOutlet weak var buttonVertical2: UIButton!
    @IBOutlet weak var buttonVertical3: UIButton!
    @IBOutlet weak var buttonVertical4: UIButton!
    @IBOutlet weak var buttonVertical5: UIButton!
    @IBOutlet weak var buttonVertical6: UIButton!
    @IBOutlet weak var buttonVertical7: UIButton!
    @IBOutlet weak var buttonVertical8: UIButton!
    @IBOutlet weak var buttonVertical9: UIButton!
    @IBOutlet weak var buttonVertical0: UIButton!
    
    @IBOutlet weak var buttonHorizontal1: UIButton!
    @IBOutlet weak var buttonHorizontal2: UIButton!
    @IBOutlet weak var buttonHorizontal3: UIButton!
    @IBOutlet weak var buttonHorizontal4: UIButton!
    @IBOutlet weak var buttonHorizontal5: UIButton!
    @IBOutlet weak var buttonHorizontal6: UIButton!
    @IBOutlet weak var buttonHorizontal7: UIButton!
    @IBOutlet weak var buttonHorizontal8: UIButton!
    @IBOutlet weak var buttonHorizontal9: UIButton!
    @IBOutlet weak var buttonHorizontal0: UIButton!
    
    
    override func viewDidLoad() {
        makeCircles()
        makeButtons()
    }
    
    func makeCircles(){
        circle1.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        circle2.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        circle3.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        circle4.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        circle5.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        circle6.makeRounded(borderColour: .darkText, borderWidth: 1.0)
    }
    
    func makeButtons(){
        buttonVertical1.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        buttonVertical2.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        buttonVertical3.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        buttonVertical4.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        buttonVertical5.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        buttonVertical6.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        buttonVertical7.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        buttonVertical8.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        buttonVertical9.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        buttonVertical0.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        
        buttonHorizontal1.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        buttonHorizontal2.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        buttonHorizontal3.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        buttonHorizontal4.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        buttonHorizontal5.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        buttonHorizontal6.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        buttonHorizontal7.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        buttonHorizontal8.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        buttonHorizontal9.makeRounded(borderColour: .darkText, borderWidth: 1.0)
        buttonHorizontal0.makeRounded(borderColour: .darkText, borderWidth: 1.0)
    }
}

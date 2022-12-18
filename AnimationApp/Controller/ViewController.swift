//
//  ViewController.swift
//  AnimationApp
//
//  Created by dzmitry on 17.12.22.
//

import UIKit
import Spring

class ViewController: UIViewController {

    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var springButton: SpringButton!
    
    @IBOutlet weak var nameAnimationOutlet: UILabel!
    @IBOutlet weak var forceOutlet: UILabel!
    @IBOutlet weak var durationOutlet: UILabel!
    @IBOutlet weak var delayOutlet: UILabel!
    @IBOutlet weak var curveOutlet: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cornerRadius()
    }

    @IBAction func sprinBtnAction(_ sender: SpringButton) {
        switch count {
        case 0:
            shakeAnimation()
            count = 1
        case 1:
            popAnimation()
            count = 2
        case 2:
            morphAnimation()
            count = 3
        case 3:
            squeezeAnimation()
            count = 0
        default:
            break
        }
    }
    
    private func squeezeAnimation() {
        springView.animation = AnimationEnum.squeeze.rawValue
        springView.curve = Curve.easeOut.rawValue
        springView.force = 1.29
        springView.duration = 0.20
        springView.delay = 1.56
        nameAnimationOutlet.text = "squeeze"
        forceOutlet.text = "1.29"
        durationOutlet.text = "0.20"
        delayOutlet.text = "1.56"
        curveOutlet.text = "easeOut"
        springView.backgroundColor = .yellow
        
        springView.animate()
    }
    
    private func morphAnimation() {
        springView.animation = AnimationEnum.morph.rawValue
        springView.curve = Curve.easeIn.rawValue
        springView.force = 1.34
        springView.duration = 0.75
        springView.delay = 0.80
        nameAnimationOutlet.text = "morph"
        forceOutlet.text = "1.34"
        durationOutlet.text = "0.75"
        delayOutlet.text = "0.80"
        curveOutlet.text = "easeIn"
        springView.backgroundColor = .green
        
        springView.animate()
    }
    
    private func popAnimation() {
        springView.animation = AnimationEnum.pop.rawValue
        springView.curve = Curve.linear.rawValue
        springView.force = 0.56
        springView.duration = 0.24
        springView.delay = 1.78
        nameAnimationOutlet.text = "pop"
        forceOutlet.text = "0.56"
        durationOutlet.text = "0.24"
        delayOutlet.text = "1.78"
        curveOutlet.text = "linear"
        springView.backgroundColor = .black
        
        springView.animate()
    }
    
    private func shakeAnimation() {
        springView.animation = AnimationEnum.shake.rawValue
        springView.curve = Curve.spring.rawValue
        springView.force = 1.44
        springView.duration = 0.58
        springView.delay = 1.22
        nameAnimationOutlet.text = "shake"
        forceOutlet.text = "1.44"
        durationOutlet.text = "0.58"
        delayOutlet.text = "1.22"
        curveOutlet.text = "spring"
        springView.backgroundColor = .blue
        
        springView.animate()
    }
    
    private func cornerRadius() {
        let width: CGFloat = UIScreen.main.bounds.width * 0.733
        springView.frame = CGRect (x: 0, y: 0, width: width, height: width)
        springView.layer.masksToBounds = true
        springView.layer.cornerRadius = width / 2
    }
    
}


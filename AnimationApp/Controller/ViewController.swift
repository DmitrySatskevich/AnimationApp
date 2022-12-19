//
//  ViewController.swift
//  AnimationApp
//
//  Created by dzmitry on 17.12.22.
//

import UIKit
import Spring

final class ViewController: UIViewController {

    @IBOutlet weak var springView: SpringView!
    
    @IBOutlet weak var nameAnimationOutlet: UILabel!
    @IBOutlet weak var forceOutlet: UILabel!
    @IBOutlet weak var durationOutlet: UILabel!
    @IBOutlet weak var delayOutlet: UILabel!
    @IBOutlet weak var curveOutlet: UILabel!
    
    var count = 0
    
    override func viewWillLayoutSubviews() {
        springView.layer.cornerRadius = springView.frame.width / 2
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
        default: break
        }
    }
    
    // MARK: - Private Func
    
    private func squeezeAnimation() {
        springView.animation = AnimationEnum.squeeze.rawValue
        springView.curve = Curve.easeOut.rawValue
        springView.force = 1.29
        springView.duration = 0.20
        springView.delay = 1.56
        nameAnimationOutlet.text = springView.animation
        forceOutlet.text = String(Float(springView.force))
        durationOutlet.text = String(Float(springView.duration))
        delayOutlet.text = String(Float(springView.delay))
        curveOutlet.text = springView.curve
        springView.backgroundColor = .yellow
        
        springView.animate()
    }
    
    private func morphAnimation() {
        springView.animation = AnimationEnum.morph.rawValue
        springView.curve = Curve.easeIn.rawValue
        springView.force = 1.34
        springView.duration = 0.75
        springView.delay = 0.80
        nameAnimationOutlet.text = springView.animation
        forceOutlet.text = String(Float(springView.force))
        durationOutlet.text = String(Float(springView.duration))
        delayOutlet.text = String(Float(springView.delay))
        curveOutlet.text = springView.curve
        springView.backgroundColor = .green
        
        springView.animate()
    }
    
    private func popAnimation() {
        springView.animation = AnimationEnum.pop.rawValue
        springView.curve = Curve.linear.rawValue
        springView.force = 0.56
        springView.duration = 0.24
        springView.delay = 1.78
        nameAnimationOutlet.text = springView.animation
        forceOutlet.text = String(Float(springView.force))
        durationOutlet.text = String(Float(springView.duration))
        delayOutlet.text = String(Float(springView.delay))
        curveOutlet.text = springView.curve
        springView.backgroundColor = .black
        
        springView.animate()
    }
    
    private func shakeAnimation() {
        springView.animation = AnimationEnum.shake.rawValue
        springView.curve = Curve.spring.rawValue
        springView.force = 1.44
        springView.duration = 0.58
        springView.delay = 1.22
        nameAnimationOutlet.text = springView.animation
        forceOutlet.text = String(Float(springView.force))
        durationOutlet.text = String(Float(springView.duration))
        delayOutlet.text = String(Float(springView.delay))
        curveOutlet.text = springView.curve
        springView.backgroundColor = .blue
        
        springView.animate()
    }
}


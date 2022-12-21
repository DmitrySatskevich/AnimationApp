//
//  ViewController.swift
//  AnimationApp
//
//  Created by dzmitry on 17.12.22.
//

import UIKit
import Spring

final class ViewController: UIViewController {

    @IBOutlet private weak var springView: SpringView!
    
    @IBOutlet private weak var nameAnimationOutlet: UILabel!
    @IBOutlet private weak var forceOutlet: UILabel!
    @IBOutlet private weak var durationOutlet: UILabel!
    @IBOutlet private weak var delayOutlet: UILabel!
    @IBOutlet private weak var curveOutlet: UILabel!
    
    override func viewWillLayoutSubviews() {
        springView.layer.cornerRadius = springView.frame.width / 2
    }

    @IBAction func sprinBtnAction(_ sender: SpringButton) {
        if let randomElement =
            AnimationEnum.allCases.randomElement()?.rawValue,
            let randomCurve = Curve.allCases.randomElement()?.rawValue {
            springView.animation = randomElement
            nameAnimationOutlet.text = randomElement
            springView.curve = randomCurve
            curveOutlet.text = randomCurve
            springView.backgroundColor = random()
        }
        // сила (force)
        springView.force = randomNumber()
        forceOutlet.text = printTextLbl(springView.force)
        // продолжительность (duration)
        springView.duration = randomNumber()
        durationOutlet.text = printTextLbl(springView.duration)
        // задержка (delay)
        springView.delay = randomNumber()
        delayOutlet.text = printTextLbl(springView.delay)
        // старт анимации
        springView.animate()
    }
    
    // MARK: - Private Func
    
    private func random() -> UIColor {
        return UIColor(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            alpha: 1)
    }
    
    private func randomNumber() -> CGFloat {
        return .random(in: 0.1...2)
    }
    
    private func printTextLbl(_ number: CGFloat) -> String {
        return String(format: "%.2f", number)
    }
}


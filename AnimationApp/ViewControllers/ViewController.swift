//
//  ViewController.swift
//  AnimationApp
//
//  Created by abd ul’Karim 📚 on 20.05.2024.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var animationSpringView: SpringView!
    @IBOutlet var animationSpringLabel: SpringLabel! {
        didSet {
            animationSpringLabel.text = animation.description
        }
    }
    
    // MARK: - Private properties
    private var animation = Animation.animation

    // MARK: - IB Actions
    @IBAction func runAnimationButtonPressed(_ sender: SpringButton) {
        animationSpringLabel.animation = "fadeOut"
        animationSpringLabel.animate()
        animationSpringLabel.animateNext { [unowned self] in
        animationSpringLabel.text = animation.description
        animationSpringLabel.animation = "fadeIn"
        animationSpringLabel.animate()
            
            animationSpringView.animation = animation.name
            animationSpringView.curve = animation.curve
            animationSpringView.duration = animation.duration
            animationSpringView.force = animation.force
            animationSpringView.delay = animation.delay
            animationSpringView.animate()
            
            animation = Animation.animation
            sender.setTitle("Run \(animation.name)", for: .normal)
        }
    }
}

//
//  ViewController.swift
//  SpringAnimation
//
//  Created by михаил сулим on 27.04.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var springAnimationLabel: UILabel!
    
    private let curve = ["spring",
                         "linear",
                         "easeIn",
                         "easeOut",
                         "easeInOut"]
    private let animation = ["shake",
                             "pop",
                             "morph",
                             "squeeze",
                             "wobble",
                             "swing",
                             "flipX",
                             "flipY",
                             "fall",
                             "squeezeLeft",
                             "squeezeRight",
                             "squeezeDown",
                             "squeezeUp",
                             "slideLeft",
                             "slideRight",
                             "slideDown",
                             "slideUp",
                             "fadeIn",
                             "fadeOut",
                             "fadeInLeft",
                             "fadeInRight",
                             "fadeInDown",
                             "fadeInUp",
                             "zoomIn",
                             "zoomOut",
                             "flash"]
    
    
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        
        let valueTougle = true
        if valueTougle {
            valueTougle = false
            animationTrue()
        } else {
            animationFalse()
        }
        
    }
    
    
    
    
    
    
        
    private func getData() {
        
        let currentAnimation =  String(animation.randomElement() ?? "slideDown")
        springAnimationView.animation = currentAnimation
        
        let currentCurve = String(curve.randomElement() ?? "spring")
        springAnimationView.curve = currentCurve
        
        let currentForce = CGFloat.random(in: 0.5...2)
        springAnimationView.force = currentForce
        
        let currentDuration = CGFloat.random(in: 0.5...2.5)
        springAnimationView.duration = currentDuration
        
        let currentVelocity = CGFloat.random(in: 0...1)
        springAnimationView.velocity = currentVelocity
        
        let currentDelay = CGFloat.random(in: 0...2)
        springAnimationView.delay = currentDelay
        
        let currentRotate = CGFloat.random(in: 0...0.2)
        springAnimationView.rotate = currentRotate
        
        
       /*  getLabel(animation: currentAnimation, curve: currentCurve,
                 force: currentForce, duration: currentDuration,
                 velocity: currentVelocity, delay: currentDelay,
                 rotate: currentRotate)
        springAnimationView.animate()  */
        
    }
    
    
    
    
    private func getLabel(animation: String, curve: String, force: CGFloat, duration: CGFloat, velocity: CGFloat, delay: CGFloat, rotate: CGFloat) {
        springAnimationLabel.text = """
animation: \(animation)
curve: \(curve)
force \(String(format: "%.2f", force))
duration \(String(format: "%.2f", duration))
velocity \(String(format: "%.2f", velocity))
delay \(String(format: "%.2f", delay))
rotate \(String(format: "%.2f", rotate))
"""
    }
    
}


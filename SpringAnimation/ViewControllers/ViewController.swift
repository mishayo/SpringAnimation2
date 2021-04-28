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
    
    @IBOutlet weak var textButton: SpringButton!
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textButton.setTitle("Run", for: .normal)
    }
    
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        textButton.setTitle("Run: \(getValueAnimation())", for: .normal)
        
        getData()
    }
    
    
 
    
    
    private func getData() {
        
        let currentAnimation =  valueAnimation
        springAnimationView.animation = currentAnimation
        
        let currentCurve = anotherAnimation.curve.randomElement() ?? "easeIn"
        springAnimationView.curve = currentCurve
        
        let currentForce = CGFloat.random(in: 0.5...2)
        springAnimationView.force = currentForce
        
        let currentDuration = CGFloat.random(in: 0.5...2.5)
        springAnimationView.duration = currentDuration
        
        let currentVelocity = CGFloat.random(in: 0...1)
        springAnimationView.velocity = currentVelocity
        
        let currentDelay = CGFloat.random(in: 0...2)
        springAnimationView.delay = currentDelay
        
       
        
        
        getLabel(animation: currentAnimation, curve: currentCurve,
                 force: currentForce, duration: currentDuration,
                 velocity: currentVelocity, delay: currentDelay)
        springAnimationView.animate()
        
    }
    
    private func getLabel(animation: String, curve: String, force: CGFloat, duration: CGFloat, velocity: CGFloat, delay: CGFloat) {
        springAnimationLabel.text = """
animation: \(animation)
curve: \(curve)
force \(String(format: "%.2f", force))
duration \(String(format: "%.2f", duration))
velocity \(String(format: "%.2f", velocity))
delay \(String(format: "%.2f", delay))
"""
    }
    
}


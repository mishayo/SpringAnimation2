//
//  model.swift
//  SpringAnimation
//
//  Created by михаил сулим on 27.04.2021.
//

import Spring


struct Animation {
    let animation: [String]
    
    let curve: [String]
}
  
let anotherAnimation = Animation(animation: ["shake",
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
                                             "flash"],
                                 curve: ["spring",
                                         "linear",
                                         "easeIn",
                                         "easeOut",
                                         "easeInOut"])

var valueCurve = anotherAnimation.curve.randomElement()
var valueAnimationTrue =  anotherAnimation.animation.randomElement()
var valueAnimationFalse = anotherAnimation.animation.randomElement()
var valueTougle = true
var valueAnimation = ""

 func getValueAnimation()  -> String {
    
    if valueTougle {
        valueTougle = false
        valueAnimationTrue = anotherAnimation.animation.randomElement()
        valueAnimation = valueAnimationFalse ?? "slideUp"
        return valueAnimationTrue ?? "slideUp"
        
    } else {
        valueTougle = true
        valueAnimationFalse = anotherAnimation.animation.randomElement()
        valueAnimation = valueAnimationTrue ?? "slideDown"
        return valueAnimationFalse ?? "slideDown"
    }
    
    
}











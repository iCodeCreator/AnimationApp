//
//  Animation.swift
//  AnimationApp
//
//  Created by abd ul’Karim 📚 on 20.05.2024.
//

struct Animation: CustomStringConvertible {
    
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static var animation: Animation {
        Animation(
            name: DataStore.shared.animations.randomElement()?.rawValue ?? "fadeIn",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 0.5...1.5),
            delay: 1
        )
    }
}


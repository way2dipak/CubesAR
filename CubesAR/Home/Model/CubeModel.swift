//
//  CubeModel.swift
//  CubesAR
//
//  Created by admin on 21/08/19.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation
import UIKit
import SceneKit


struct CubeModel {
    
    var minHeight: CGFloat
    var maxHeight: CGFloat
    var minDispersal: CGFloat
    var maxDispersal: CGFloat
    
    
    init(minHeight: CGFloat, maxHeight: CGFloat, minDispersal: CGFloat, maxDispersal: CGFloat) {
        self.minHeight = minHeight
        self.maxHeight = maxHeight
        self.minDispersal = minDispersal
        self.maxDispersal = maxDispersal
    }
    
   
    func generateRandomVector()-> SCNVector3 {
        return SCNVector3(CGFloat.random(in: minDispersal ... maxDispersal), CGFloat.random(in: minDispersal ... maxDispersal), CGFloat.random(in: minDispersal ... maxDispersal))
    }
    
    func generateRandomColor()-> UIColor {
        return UIColor(red: CGFloat.random(in: 0 ... 1), green: CGFloat.random(in: 0 ... 1), blue: CGFloat.random(in: 0 ... 1), alpha: CGFloat.random(in: 0.7 ... 1))
    }
    
    func generateRandomSize()-> CGFloat {
        return CGFloat.random(in: minHeight ... maxHeight)
    }
    
    
    func generateCube()-> SCNNode {
        let size = generateRandomSize()
        let cube = SCNBox(width: size, height: size, length: size, chamferRadius: 0.03)
        cube.materials.first?.diffuse.contents = generateRandomColor()
        
        let cubeNode = SCNNode(geometry: cube)
        cubeNode.position = generateRandomVector()
        let rotateAction = SCNAction.rotateBy(x: 0, y: 2 * .pi, z: 0, duration: 3)
        let repeatAction = SCNAction.repeatForever(rotateAction)
        cubeNode.runAction(repeatAction)
        return cubeNode
    }
    
    func generateStar() {
        let star = SCNC
    }
    
}

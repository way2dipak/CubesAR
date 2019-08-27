//
//  ViewController.swift
//  CubesAR
//
//  Created by admin on 21/08/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet var sceneView: ARSCNView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sceneView.delegate = self
        sceneView.showsStatistics = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()
        
        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    func addCube() {
        let cube = CubeModel(minHeight: 0.2, maxHeight: 0.6, minDispersal: -4, maxDispersal: 4)
        let cubeNode = cube.generateCube()
        sceneView.scene.rootNode.addChildNode(cubeNode)
    }
    
    
    @IBAction func onTappedAddCubesButton(_ sender: Any) {
        addCube()
    }
    
}




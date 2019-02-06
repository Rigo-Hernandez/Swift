
//
//  AppDelegate.swift
//  Poke3D
//
//  Created by Rigo Hernandez on 1/9/19.
//  Copyright © 2019 Rigo Hernandez. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        sceneView.autoenablesDefaultLighting = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()
        
        if let imageToTrack = ARReferenceImage.referenceImages(inGroupNamed: "Pokemon Cards", bundle: Bundle.main) {
            
            configuration.detectionImages = imageToTrack
            
            configuration.maximumNumberOfTrackedImages = 2
            
            print("Images Successfully Added")
            
            
        }
        
        
        
        
        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    // MARK: - ARSCNViewDelegate
    
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        
        let node = SCNNode()
        
        if let imageAnchor = anchor as? ARImageAnchor {
            
            let plane = SCNPlane(width: imageAnchor.referenceImage.physicalSize.width, height: imageAnchor.referenceImage.physicalSize.height)
            
            plane.firstMaterial?.diffuse.contents = UIColor(white: 1.0, alpha: 0.5)
            
            let planeNode = SCNNode(geometry: plane)
            
            planeNode.eulerAngles.x = -.pi / 2
            
            node.addChildNode(planeNode)
            
            if imageAnchor.referenceImage.name == "Machop" {
                if let pokeScene = SCNScene(named: "art.scnassets/Machop/Machop.scn") {
                    
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                        
                        pokeNode.eulerAngles.x = .pi / 2
                        
                        
                        planeNode.addChildNode(pokeNode)
                    }
                }
            }
            
            if imageAnchor.referenceImage.name == "Torchic" {
                if let pokeScene = SCNScene(named: "art.scnassets/Torchic/Torchic.scn") {
                    
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                        
                        pokeNode.eulerAngles.x = .pi / 2
                        
                        
                        planeNode.addChildNode(pokeNode)
                    }
                }
            }
            
            if imageAnchor.referenceImage.name == "Cyndaquil" {
                if let pokeScene = SCNScene(named: "art.scnassets/Cyndaquil/Cyndaquil.scn") {
                    
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                        
                        pokeNode.eulerAngles.x = .pi / 2
                        
                        
                        planeNode.addChildNode(pokeNode)
                    }
                }
            }
            
            if imageAnchor.referenceImage.name == "Pikachu" {
                if let pokeScene = SCNScene(named: "art.scnassets/Pikachu/Pikachu.scn") {
                    
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                        
                        pokeNode.eulerAngles.x = .pi / 2
                        
                        
                        planeNode.addChildNode(pokeNode)
                    }
                }
            }
            
            if imageAnchor.referenceImage.name == "Espurr" {
                if let pokeScene = SCNScene(named: "art.scnassets/Espurr/Espurr.scn"){
                    
                    if let pokeNode = pokeScene.rootNode.childNodes.first{
                        pokeNode.eulerAngles.x = .pi / 2
                        
                        planeNode.addChildNode(pokeNode)
                    }
                }
            }
            
            if imageAnchor.referenceImage.name == "Entei" {
                if let pokeScene = SCNScene(named: "art.scnassets/Entei/Entei.scn"){
                
                if let pokeNode = pokeScene.rootNode.childNodes.first{
                    pokeNode.eulerAngles.x = .pi / 2
                    
                    planeNode.addChildNode(pokeNode)
                    }
                }
            }
            
            if imageAnchor.referenceImage.name == "Charmander" {
                if let pokeScene = SCNScene(named: "art.scnassets/Charmander/Charmander.scn") {
                    
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                        
                        pokeNode.eulerAngles.x = .pi / 2
                        
                        
                        planeNode.addChildNode(pokeNode)
                    }
                }
            }
            
            if imageAnchor.referenceImage.name == "Squirtle" {
                if let pokeScene = SCNScene(named: "art.scnassets/Squirtle/Squirtle.scn") {
                    
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                        
                        pokeNode.eulerAngles.x = .pi / 2
                        
                        
                        planeNode.addChildNode(pokeNode)
                    }
                }
            }
            
            if imageAnchor.referenceImage.name == "Bulbasaur" {
                if let pokeScene = SCNScene(named: "art.scnassets/Bulbasaur/Bulbasaur.scn") {
                    
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                        
                        pokeNode.eulerAngles.x = .pi / 2
                        
                        
                        planeNode.addChildNode(pokeNode)
                    }
                }
            }
            
            if imageAnchor.referenceImage.name == "oddish" {
                if let pokeScene = SCNScene(named: "art.scnassets/Oddish/Oddish.scn") {
                    
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                        
                        pokeNode.eulerAngles.x = .pi
                        
                        
                        planeNode.addChildNode(pokeNode)
                    }
                }
            }
            
            if imageAnchor.referenceImage.name == "eevee" {
                if let pokeScene = SCNScene(named: "art.scnassets/Eevee/Eevee.scn") {
                    
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                        
                        pokeNode.eulerAngles.x = .pi / 2
                        
                        planeNode.addChildNode(pokeNode)
                    }
                }
            }
            
            
            
            
            
        }
        
        
        
        return node
        
    }
    
}


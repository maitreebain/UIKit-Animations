//
//  AnimationsTabController.swift
//  UIKitAnimations
//
//  Created by Maitree Bain on 1/31/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {
    
    private lazy var sampleAnimationsVC: SampleAnimationsController = {
        let viewController = SampleAnimationsController()
        viewController.tabBarItem = UITabBarItem(title: "Sample Animations", image: UIImage(systemName: "1.circle"), tag: 0)
        return viewController
    }()
    
    private lazy var constraintsAnimationsVC: ConstraintsAnimationsController = {
        let viewController = ConstraintsAnimationsController()
        viewController.tabBarItem = UITabBarItem(title: "Constraints Animations", image: UIImage(systemName: "2.circle"), tag: 1)
        return viewController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set View Controllers for the tab bar
        // in our app we will have two tabs
        
        viewControllers = [sampleAnimationsVC, constraintsAnimationsVC]
    }
    
    
}

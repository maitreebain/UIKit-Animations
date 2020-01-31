//
//  AnimationsTabController.swift
//  UIKitAnimations
//
//  Created by Maitree Bain on 1/31/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //set View Controllers for the tab bar
        // in our app we will have two tabs
        
        viewControllers = [SampleAnimationsController(), ConstraintsAnimationsController()]
    }

    
}

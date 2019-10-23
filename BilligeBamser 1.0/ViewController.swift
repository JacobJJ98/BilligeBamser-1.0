//
//  ViewController.swift
//  BilligeBamser 1.0
//
//  Created by Jacob Jørgensen on 09/10/2019.
//  Copyright © 2019 Jacob Jørgensen. All rights reserved.
//

import UIKit
import ESTabBarController_swift
class ViewController: UIViewController, UITabBarControllerDelegate {
    

    let tabbarController = CustomTabbarController()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("køres")
        
        
        
        
        
       
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        //If logged in == true else show login
        
        tabbarController.shouldHijackHandler = {
                   tabbarController, viewController, index in
                   if index == 2 {
                       let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                       let newViewController = storyBoard.instantiateViewController(withIdentifier: "opretBajer") as! UIViewController
                       tabbarController.present(newViewController, animated: true, completion: nil)
        
                       return true
                   }
                   return false
               }
        
        tabbarController.modalPresentationStyle = .fullScreen
        self.present(tabbarController, animated: true, completion: nil)
        
    }

    
    
}


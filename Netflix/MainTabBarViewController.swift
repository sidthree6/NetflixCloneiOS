//
//  ViewController.swift
//  Netflix
//
//  Created by Sidd Panchal on 2022-11-30.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemMint
        
        // Creating 4 Navigation controllers and attach it to view controllers
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpComingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadViewController())
        
        // Add imagaes to each view controller
        vc1.tabBarItem.image = UIImage(systemName: "house.circle")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass.circle")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.circle")
        
        // Add titles to each view controller
        vc1.title = "Home"
        vc2.title = "Coming Soon"
        vc3.title = "Search"
        vc4.title = "Downloads"
        
        tabBar.tintColor = .label
        
        // Add all view controllers to Tabs
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }


}


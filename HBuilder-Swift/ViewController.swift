//
//  ViewController.swift
//  HBuilder-Integrate-Swift
///Users/yutian/Applications/Xcode/noticer-h5/noticer/noticer/inc
//  Created by EICAPITAN on 17/5/17.
//  Copyright © 2017年 EICAPITAN. All rights reserved.
//

import UIKit
import Foundation

var webView:UIView?

class ViewController: UIViewController,PDRCoreDelegate {
    
    let pCoreHandle:PDRCore? = PDRCore.instance();
    var pAppHandle:PDRCoreApp?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true;
        webView = UIView.init(frame:self.view.bounds);
        self.view.addSubview(webView!);
        
        pCoreHandle?.coreDeleagete = self;
        pCoreHandle?.persentViewController = self;
        pCoreHandle?.setContainerView(webView!);
        
        let pWWWPath = Bundle.main.bundlePath + "/Pandora/apps/HelloH5/www";
        let argus = "runtime argument";
        pAppHandle = pCoreHandle?.appManager.openApp(atLocation: pWWWPath, withIndexPath: "index.html", withArgs: argus, with: nil);
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


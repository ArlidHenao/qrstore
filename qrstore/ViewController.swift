//
//  ViewController.swift
//  qrstore
//
//  Created by cristian agudelo on 18/06/19.
//  Copyright © 2019 singleclick. All rights reserved.
//

import UIKit
import WebKit
import AVKit
import JavaScriptCore

class ViewController: UIViewController, WKUIDelegate {

    var webView: WKWebView!
    
    override func loadView() {
        super.loadView()
        		
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        //webView.loadPlugin(Plugin(), namespace: "foo")
        view = self.webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let url = URL(string: "https://qrstore.viergegroup.com/")
        let request = URLRequest(url: url!)
        
        webView.configuration.preferences.javaScriptEnabled = true
        webView.load(request)
    }

    class Plugin : NSObject {
        func openBarcodeReader() {
            print("Ingreso a funciòn")
        }
    }
    
    

}



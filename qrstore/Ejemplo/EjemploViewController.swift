//
//  EjemploViewController.swift
//  qrstore
//
//  Created by cristian agudelo on 9/11/19.
//  Copyright © 2019 singleclick. All rights reserved.
//

import UIKit
import WebKit
import AVFoundation

class EjemploViewController: UIViewController, WKUIDelegate, WKScriptMessageHandler, AVCaptureMetadataOutputObjectsDelegate {

    var webView: WKWebView!
    
    var video = AVCaptureSession()
    
    override func loadView() {
        super.loadView()
        
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hola mundo")
        webView.configuration.userContentController.add(self, name: "jsHandler")
        let bundleURL = Bundle.main.resourceURL!.absoluteURL
        let html = bundleURL.appendingPathComponent("try.html")
        webView.loadFileURL(html, allowingReadAccessTo: bundleURL)
        // Do any additional setup after loading the view.
    }
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        if message.name == "jsHandler" {
        }
    }
    
    
}

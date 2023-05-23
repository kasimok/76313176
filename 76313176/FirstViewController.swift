//
//  ViewController.swift
//  76313176
//
//  Created by 0x67 on 2023-05-23.
//

import UIKit
import WebKit

class FirstViewController: UIViewController {
  
  var firstFinished = false
  
  var sharedWebView: WKWebView {
    (UIApplication.shared.delegate as! AppDelegate).webView
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    let request = URLRequest(url: URL(string: "https://www.stackoverflow.com")!)
    sharedWebView.load(request)
    sharedWebView.navigationDelegate = self
  }
  
  override func viewWillAppear(_ animated: Bool) {
    debugPrint("\(#function)")
    sharedWebView.frame = view.bounds
    sharedWebView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
    view.addSubview(sharedWebView)
  }
}


extension FirstViewController:WKNavigationDelegate{
  func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
    firstFinished = true
  }
  
  func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction) async -> WKNavigationActionPolicy {

    if firstFinished{
      
      // tap anywhere> it will load another URL
      let tabbarController = parent as! UITabBarController
      tabbarController.selectedIndex = 1
      
    }
    return .allow
  }
}

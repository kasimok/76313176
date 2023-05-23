//
//  SecondViewController.swift
//  76313176
//
//  Created by 0x67 on 2023-05-23.
//

import UIKit
import WebKit

class SecondViewController: UIViewController {
  
  var sharedWebView: WKWebView {
    (UIApplication.shared.delegate as! AppDelegate).webView
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    debugPrint("\(#function)")
    sharedWebView.frame = view.bounds
    sharedWebView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
    view.addSubview(sharedWebView)
  }
  
  
  
}

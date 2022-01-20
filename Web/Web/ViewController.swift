//
//  ViewController.swift
//  Web
//
//  Created by Park's MacBook Pro on 2022/01/20.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var txtUrl: UITextField!
    @IBOutlet var myWebView: WKWebView!
    @IBOutlet var myActivityIndicator: UIActivityIndicatorView!
    
    func loadWebPage(_ url: String) {
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        myWebView.load(myRequest)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myWebView.navigationDelegate = self
        loadWebPage("http://www.naver.com")
    }
    
    @objc(webView:didCommitNavigation:) func webView(_ webView: WKWebView, didCommit navigation:WKNavigation!) {
        myActivityIndicator.startAnimating()
        myActivityIndicator.isHidden = false
    }
    @objc(webView:didFinishNavigation:) func webView(_ webView: WKWebView, didFinish navigation:WKNavigation!) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
    @objc(webView:didFailNavigation:) func webView(_ webView: WKWebView, didFail navigation:WKNavigation!) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
    

    @IBAction func btnGotoUrl(_ sender: UIButton) {
    }
    
    @IBAction func btnGoSite1(_ sender: UIButton) {
    }
    
    @IBAction func btnGoSite2(_ sender: UIButton) {
    }
    
    @IBAction func btnLoadHtmlString(_ sender: UIButton) {
    }
    
    @IBAction func btnLoadHtmlFile(_ sender: UIButton) {
    }
    
    @IBAction func btnStop(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func btnReload(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func btnRewind(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func btnGoForward(_ sender: UIBarButtonItem) {
    }
    
}


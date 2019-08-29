//
//  HomeViewController.swift
//  Met Gala
//
//  Created by Brandon Fong on 7/30/19.
//  Copyright © 2019 Fiesta Togo Inc. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func seeArtPressed(_ sender: Any) {
        let galleryViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "GVC") as! GalleryViewController
        
        let activityIndicatoryView = UIActivityIndicatorView()
        activityIndicatoryView.style = .whiteLarge
        activityIndicatoryView.center = CGPoint(x: view.center.x, y: view.center.y)
        activityIndicatoryView.startAnimating()
        view.addSubview(activityIndicatoryView)
        
        present(galleryViewController, animated: true) {
            activityIndicatoryView.stopAnimating()
            activityIndicatoryView.removeFromSuperview()
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

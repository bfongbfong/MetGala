//
//  PaintingFullScreenViewController.swift
//  Met Gala
//
//  Created by Brandon Fong on 7/30/19.
//  Copyright © 2019 Fiesta Togo Inc. All rights reserved.
//

import UIKit

class PaintingFullScreenViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var paintingScrollView: UIScrollView!
    var paintingImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        paintingScrollView.contentSize = CGSize(width: paintingImageView.frame.width, height: paintingImageView.frame.height)
        paintingScrollView.bounces = false
        paintingScrollView.bouncesZoom = true
        paintingScrollView.minimumZoomScale = 0.3
        paintingScrollView.maximumZoomScale = 2
        
        paintingScrollView.addSubview(paintingImageView)
    }
    
    @IBAction func dismissToPaintingDetail(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return paintingImageView
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

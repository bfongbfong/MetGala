//
//  PaintingDetailViewController.swift
//  Met Gala
//
//  Created by Brandon Fong on 7/30/19.
//  Copyright © 2019 Fiesta Togo Inc. All rights reserved.
//

import UIKit

class PaintingDetailViewController: UIViewController {
    
    var painting: Painting!
    var paintingIndex: Int!

    @IBOutlet weak var paintingImageView: UIImageView!
    
    @IBOutlet weak var paintingTitleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
        // Do any additional setup after loading the view.
    }
    
    func setUpUI() {
        paintingImageView.image = UIImage(named: painting.imageName)
        paintingTitleLabel.text = painting.title
        artistLabel.text = painting.artist
        dateLabel.text = painting.date
    }
    
    @IBAction func CancelPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func toOnlineReference(_ sender: Any) {
    }
    
    
    @IBAction func swipeLeft(_ sender: Any) {
        // going forward
        print("swipe left (forward) called")
        if paintingIndex == Painting.paintings.count - 1 {
            return
        }
        paintingIndex += 1
        painting = Painting.paintings[paintingIndex]
        setUpUI()
    }
    
    
    @IBAction func swipeRight(_ sender: Any) {
        print("swipe right (backward) called")
        // going back
        if paintingIndex == 0 {
            return
        }
        paintingIndex -= 1
        painting = Painting.paintings[paintingIndex]
        setUpUI()
    }
    
    
    @IBAction func toFullScreen(_ sender: Any) {
        let fullScreenPaintingVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FullScreenPaintingVC") as! PaintingFullScreenViewController
        fullScreenPaintingVC.paintingImageView = UIImageView(image: UIImage(named: Painting.paintings[paintingIndex].imageName))
        present(fullScreenPaintingVC, animated: true, completion: nil)
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

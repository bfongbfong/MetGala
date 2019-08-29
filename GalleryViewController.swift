//
//  GalleryViewController.swift
//  Met Gala
//
//  Created by Brandon Fong on 7/30/19.
//  Copyright © 2019 Fiesta Togo Inc. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var galleryCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Painting.paintings.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = galleryCollectionView.dequeueReusableCell(withReuseIdentifier: "GalleryCollectionViewCell", for: indexPath) as! GalleryCollectionViewCell
        cell.paintingThumbnailImage.image = UIImage(named: Painting.paintings[indexPath.row].imageName)
        cell.layer.cornerRadius = cell.frame.width/14
        cell.clipsToBounds = true
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width/3.15, height: view.frame.width/3.15)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let paintingDetailViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PDVC") as! PaintingDetailViewController
        
        paintingDetailViewController.painting = Painting.paintings[indexPath.row]
        paintingDetailViewController.paintingIndex = indexPath.row
        paintingDetailViewController.modalTransitionStyle = .flipHorizontal
        present(paintingDetailViewController, animated: true, completion: nil)
    }
    
    
    
    @IBAction func homeButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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

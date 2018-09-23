//
//  PreViewController.swift
//  SwiftSnapCamera
//
//  Created by 三上大河 on 2018/09/23.
//  Copyright © 2018年 三上大河. All rights reserved.
//

import UIKit

class PreViewController: UIViewController {

    var image:UIImage?
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = image
    }
    
    
    @IBAction func save(_ sender: Any) {
        UIImageWriteToSavedPhotosAlbum(image!, nil, nil, nil)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

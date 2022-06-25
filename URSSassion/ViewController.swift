//
//  ViewController.swift
//  URSSassion
//
//  Created by владислав Руднев on 03.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet var imageView: UIImageView!
    
    @IBAction func getimageButton(_ sender: Any) {
        let API = "https://picsum.photos/200/300"
        guard let apiURL = URL(string: API) else {
            fatalError("Some Error")
        }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: apiURL) { (data, respons, error ) in
            guard let data = data, error == nil else {return}
            DispatchQueue.main.async {
                self.imageView.image = UIImage(data: data)
            }

        }
        
        task.resume()
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


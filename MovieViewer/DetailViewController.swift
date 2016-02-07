//
//  DetailViewController.swift
//  MovieViewer
//
//  Created by Eileen Madrigal on 1/31/16.
//  Copyright © 2016 Eileen Madrigal. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var infoView: UIView!
    var movie: NSDictionary!
    
    override func viewDidLoad() {
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width , height: infoView.frame.origin.y + infoView.frame.size.height)
        let title = movie["title"] as? String
        let overview = movie["overview"] as? String
        let posterPath = movie["poster_path"] as! String
        let baseUrl = "http://image.tmdb.org/t/p/w500"
        
        //let imageUrl = NSURL(string: baseUrl + posterPath)
        
        let imageRequest = NSURLRequest(URL: NSURL(string: baseUrl + posterPath)!)
        
        self.posterView.setImageWithURLRequest(
            imageRequest,
            placeholderImage: nil,
            success: { (imageRequest, imageResponse, image) -> Void in
                
                  if imageResponse == nil {
                    
                    self.posterView.alpha = 0.0
                    self.posterView.image = image
                    UIView.animateWithDuration(2.0, animations: { () -> Void in
                        self.posterView.alpha = 1.0
                    })
                } else {
                    
                    self.posterView.image = image
                }
            },
            failure: { (imageRequest, imageResponse, error) -> Void in
                print("blah")
        })
        
    
        titleLabel.text = title
        overviewLabel.text = overview
        overviewLabel.sizeToFit()
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

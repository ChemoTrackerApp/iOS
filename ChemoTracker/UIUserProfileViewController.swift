//
//  UIUserProfileViewController.swift
//  ChemoTracker
//
//  Created by Jessica Hanta on 2017-07-11.
//  Copyright © 2017 Innovare. All rights reserved.
//

import UIKit

class UIUserProfileViewController: UIViewController {
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nicknameText: UILabel!
    @IBOutlet weak var fullnameText: UILabel!
    @IBOutlet weak var diagnosisLabelText: UILabel!
    @IBOutlet weak var drugAllergiesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.profileImage.layer.cornerRadius = self.profileImage.frame.height/2
        self.profileImage.clipsToBounds = true
        
        UIGraphicsBeginImageContext(self.topView.frame.size)
        UIImage(named: "profilebackground")?.draw(in: self.topView.bounds)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        self.topView.backgroundColor = UIColor(patternImage: image)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

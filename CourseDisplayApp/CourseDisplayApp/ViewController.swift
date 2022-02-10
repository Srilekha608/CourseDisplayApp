//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Janagam,Srilekha on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

  
    
    
    @IBOutlet var UIImageview: UIImageView!
    
    
    @IBOutlet var crsNumber: UITextField!
    
    @IBOutlet var crsTitle: UITextField!
    
    @IBOutlet var crsOffered: UITextField!
    
    @IBOutlet var Previous: UIButton!
    
    @IBOutlet var Next: UIButton!
    
    let courses = [
        ["img01" , " 44555" ,"Network Security" , "Fall 2022"],
        ["img02" , " 44543" ,"IOS" , "Spring 2022"],
        ["img03" , " 44663" ,"StreamingData" , "Summer 2022"]
    
    ]
    
    var imageNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Load the details of the first course
         updateUI(imageNumber);
        //previous button disabled
        Previous.isEnabled = false;
    
    }
    
    
    @IBAction func PreviousButton(_ sender: UIButton) {
        imageNumber = imageNumber - 1
        updateUI(imageNumber);
        
        Previous.isEnabled = true;
        Next.isEnabled = true;
        
        if(imageNumber == 0){
            Previous.isEnabled = false;

            
        }
        
    }
    
    
    @IBAction func NextButton(_ sender: UIButton) {
        //UI should be updated with the next course details
        
        imageNumber = imageNumber + 1
        updateUI(imageNumber);
        
        Previous.isEnabled = true;
        
        if(imageNumber == courses.count - 1 ){
            Next.isEnabled = false;
            
        }

        
        

        
        
    }
    
    func updateUI(_ imageNumber:Int){
        UIImageview.image = UIImage(named: courses[imageNumber][0])
        crsNumber.text = courses[imageNumber][1]
        crsTitle.text = courses[imageNumber][2]
        crsOffered.text = courses[imageNumber][3]
        
        
        
    }


}


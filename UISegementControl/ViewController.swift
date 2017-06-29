//
//  ViewController.swift
//  UISegementControl
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl:UISegmentedControl!
    @IBOutlet weak var resultLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func customizeAppreance() -> Void  {

        //- Can change the tint color
        segmentedControl.tintColor = .red

        //-- Can pass your custom attributes
        segmentedControl.setTitleTextAttributes(["":""], for: .normal)

        //-- Set your image name
        let myImage = UIImage(named:"")

        // Image between two unselected segments.
        segmentedControl.setDividerImage(myImage, forLeftSegmentState:.normal,
                                           rightSegmentState:.normal, barMetrics:.default)

        // Image between segment selected on the left and unselected on the right.
        segmentedControl.setDividerImage(myImage, forLeftSegmentState: .selected, rightSegmentState: .normal, barMetrics: .default)


        // Image between segment selected on the right and unselected on the left.
        segmentedControl.setDividerImage(myImage, forLeftSegmentState: .normal, rightSegmentState: .selected, barMetrics: .default)

    }

    @IBAction func segmentIndexChanged(_ sender: AnyObject) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            resultLabel.text = "First Segment Selected"
        case 1:
            resultLabel.text = "Second Segment Selected"
        default:
            break
        }
    }

}


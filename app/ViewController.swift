//
//  ViewController.swift
//  app
//
//  Created by Mohan K on 12/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valueLbl: UILabel!
    
     @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var switchn: UISwitch!
    
    @IBOutlet weak var uiViewOutlet: UIView!
        
    
    
    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBOutlet weak var segmentControlOutlet: UISegmentedControl!
    
    @IBOutlet weak var switchLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stepper.autorepeat = true
        stepper.isContinuous = true
        valueLbl.text = stepper.value.description
        stepper.maximumValue = 20
        stepper.minimumValue = -20
        
        uiViewOutlet.backgroundColor = .red
        segmentControlOutlet.backgroundColor = .red
        
    }

    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        valueLbl.text = sender.value.description
    }

    @IBAction func switchnValueChanged(_ sender: UISwitch) {
        if(switchn.isOn){
            switchLabel.text = "Switch is on"
        }
        else {
            switchLabel.text = "Switch is off"
        }
        
        view.addSubview(switchn)
    }
    
    
    @IBAction func segmentControllClick(_ sender: Any) {
        switch segmentControlOutlet.selectedSegmentIndex {
        case 0:
            uiViewOutlet.backgroundColor = .red
            segmentControlOutlet.backgroundColor = .red
        case 1 :
            uiViewOutlet.backgroundColor = .green
            segmentControlOutlet.backgroundColor = .green
       
        default:
            break
        }
        
    }
    
}


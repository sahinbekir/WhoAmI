//
//  ViewController.swift
//  WhoAmI
//
//  Created by sahinbekir on 15.07.2024.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var imgAnswer: UIImageView!
    @IBOutlet weak var answerBtn: UIButton!
    @IBOutlet weak var trueAnsBtn: UIButton!
    @IBOutlet weak var textF: UITextField!
    @IBOutlet weak var accBtn: UIButton!
    @IBOutlet weak var sLabel: UILabel!
    @IBOutlet weak var iLabel: UILabel!
    @IBOutlet weak var cho1Btn: UIButton!
    @IBOutlet weak var cho2Btn: UIButton!
    @IBOutlet weak var cho3Btn: UIButton!
    
    var appM = AppModel()
    
    var matchAns = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fStart()
        textF.delegate = self
    }
    
    
    @IBAction func clickBtn(_ sender: UIButton) {
        
        let cho = sender.titleLabel?.text
        
        if cho == appM.btnAnswer
        {
            tryToAnswer()
        }
        else if cho == appM.btnNewClue {
            appM.nextClue()
            fStart()
        } 
        else if cho == appM.btnSkip {
            appM.nextPer()
            if appM.flag != true{
                
                fStart()
            }
            else {
                notificationPopUp()
                Timer.scheduledTimer(timeInterval: 10.0, target: self, selector: #selector(fStart), userInfo: nil, repeats: false)
            }
            appM.flag = false
        }
        else {
            //imgAnswer.image = #imageLiteral(resourceName: "\(appM.getPersonName())")
            imgAnswer.image = #imageLiteral(resourceName: "\(appM.getPersonName())")
            
            if let text = textF.text
            {
                answerBtn.setTitle(text, for: .normal)
                trueAnsBtn.setTitle(appM.getPersonName(), for: .normal)
                
                if text.localizedCaseInsensitiveCompare(appM.getPersonName()) == .orderedSame
                {
                    matchAns = true
                    if let image = UIImage(named: "greenbg.jpeg")
                    {
                        answerBtn.setBackgroundImage(image, for: .normal)
                    }
                }
                else
                {
                    matchAns = false
                    if let image = UIImage(named: "redbg.jpeg")
                    {
                        answerBtn.setBackgroundImage(image, for: .normal)
                    }
                }
                
                textF.text = ""
                fAnswerS()
                notificationPopUp()
                appM.nextPer()
                
                if appM.person == 0 {
                    Timer.scheduledTimer(withTimeInterval: 11.0, repeats: false) { timer in
                        self.notificationPopUp()
                        Timer.scheduledTimer(timeInterval: 10.0, target: self, selector: #selector(self.fStart), userInfo: nil, repeats: false)
                        self.appM.flag = false
                    }
                }
                else {
                    Timer.scheduledTimer(timeInterval: 10.0, target: self, selector: #selector(self.fStart), userInfo: nil, repeats: false)
                }
                appM.clue = 0
            }
        }
    }

    func tryToAnswer()
    {
        sLabel.text = "Who am I?"
        iLabel.text = "\(appM.whoAmIs[appM.person].personInfos[0..<appM.clue + 1])"
        imgAnswer.isHidden = true
        answerBtn.isHidden = true
        trueAnsBtn.isHidden = true
        textF.isHidden = false
        accBtn.isHidden = false
        sLabel.isHidden = false
        iLabel.isHidden = false
        cho1Btn.isHidden = true
        cho2Btn.isHidden = true
        cho3Btn.isHidden = true
    }
    
    func fAnswerS()
    {
        imgAnswer.isHidden = false
        answerBtn.isHidden = false
        trueAnsBtn.isHidden = false
        textF.isHidden = true
        accBtn.isHidden = true
        sLabel.isHidden = true
        iLabel.isHidden = true
        cho1Btn.isHidden = true
        cho2Btn.isHidden = true
        cho3Btn.isHidden = true
    }
    
    @objc func fStart()
    {
        imgAnswer.isHidden = true
        answerBtn.isHidden = true
        trueAnsBtn.isHidden = true
        textF.isHidden = true
        accBtn.isHidden = true
        sLabel.isHidden = false
        iLabel.isHidden = false
        cho1Btn.isHidden = false
        cho2Btn.isHidden = false
        cho3Btn.isHidden = false
        
        sLabel.text = "Clue: \(appM.clue + 1) (\(String(appM.whoAmIs[appM.person].personInfos.count)))"
        iLabel.text = appM.getClue()
        cho1Btn.setTitle(appM.btnAnswer, for: .normal)
        cho2Btn.setTitle(appM.btnNewClue, for: .normal)
        cho3Btn.setTitle(appM.btnSkip, for: .normal)
    }
    
    @objc func notificationPopUp()
    {
        var titleP = ""
        var textP = ""
        if appM.flag == true {
            titleP = "Restartin App"
            textP = "All Questions Done..."
        }
        else {
            if matchAns == true {
                titleP = "Well Done"
                textP = "Your Answer is True"
            }
            else {
                titleP = "Unfortinally"
                textP = "Your Answer is False"
            }
            
        }
        // UIAlertController
        let alert = UIAlertController(title: titleP, message: textP, preferredStyle: .alert)
        if titleP != "Restartin App" {
            // Close Button
            let closeAction = UIAlertAction(title: "Close", style: .default)
            {
                (action) in
                // Close Action
            }
            
            // Close Action to UIAlertController
            alert.addAction(closeAction)
        }

        // UIAlertController Show on Screen
        present(alert, animated: true, completion: nil)

        // Timer UIAlertController
        DispatchQueue.main.asyncAfter(deadline: .now() + 10.0)
        {
            alert.dismiss(animated: true, completion: nil)
        }
    }
    
}

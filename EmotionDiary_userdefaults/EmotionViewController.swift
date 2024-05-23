//
//  EmotionViewController.swift
//  EmotionDiary_userdefaults
//
//  Created by 양승혜 on 5/23/24.
//

import UIKit

class EmotionViewController: UIViewController {
    
    let emotions = ["행복해", "좋아해", "사랑해", "화를내", "당황해", "막막해", "곤란해", "우울해", "억울해"]
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!
    @IBOutlet var button9: UIButton!
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    @IBOutlet var label5: UILabel!
    @IBOutlet var label6: UILabel!
    @IBOutlet var label7: UILabel!
    @IBOutlet var label8: UILabel!
    @IBOutlet var label9: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonUI()
        button1Default()
        button2Default()
        button3Default()
        button4Default()
        button5Default()
        button6Default()
        button7Default()
        button8Default()
        button9Default()
    }
    
    
    @IBAction func button1Clicked(_ sender: UIButton) {
        let before1 = UserDefaults.standard.integer(forKey: "count1")
        let after1 = before1 + 1
        UserDefaults.standard.set(after1, forKey: "count1")
        let final1 = UserDefaults.standard.integer(forKey: "count1")
        label1.text = "행복해 \(final1)"
    }
    
    @IBAction func button2Clicked(_ sender: UIButton) {
        let before2 = UserDefaults.standard.integer(forKey: "count2")
        let after2 = before2 + 1
        UserDefaults.standard.set(after2, forKey: "count2")
        let final2 = UserDefaults.standard.integer(forKey: "count2")
        label2.text = "좋아해 \(final2)"
    }
    
    @IBAction func button3Clicked(_ sender: UIButton) {
        let before3 = UserDefaults.standard.integer(forKey: "count3")
        let after3 = before3 + 1
        UserDefaults.standard.set(after3, forKey: "count3")
        let final3 = UserDefaults.standard.integer(forKey: "count3")
        label3.text = "사랑해 \(final3)"
    }
    
    private func buttonLogic(slime: String, emotionButton: UIButton!) {
        emotionButton.setImage(UIImage(named: slime), for: .normal)
    }
    
    private func buttonUI() {
        let slimes =  ["slime1", "slime2", "slime3", "slime4", "slime5", "slime6", "slime7", "slime8", "slime9"]
        
        let emotionButtons = [button1, button2, button3, button4, button5, button6, button7, button8, button9]
        
        for index in slimes.indices {
            buttonLogic(slime: slimes[index], emotionButton: emotionButtons[index])
            
        }
    }
    
    private func button1Default() {
        let happy = UserDefaults.standard.integer(forKey: "count1")
        label1.text = "행복해 \(happy)"
        label1.textAlignment = .center
    }
    
    private func button2Default() {
        let like = UserDefaults.standard.integer(forKey: "count2")
        label2.text = "좋아해 \(like)"
        label2.textAlignment = .center
    }
    
    private func button3Default() {
        let love = UserDefaults.standard.integer(forKey: "count3")
        label3.text = "사랑해 \(love)"
        label3.textAlignment = .center
    }
    
    private func button4Default() {
        let angry = UserDefaults.standard.integer(forKey: "count4")
        label4.text = "화를내 \(angry)"
        label4.textAlignment = .center
    }
    
    private func button5Default() {
        let panic = UserDefaults.standard.integer(forKey: "count5")
        label5.text = "당황해 \(panic)"
        label5.textAlignment = .center
    }
    
    private func button6Default() {
        let hopeless = UserDefaults.standard.integer(forKey: "count6")
        label6.text = "막막해 \(hopeless)"
        label6.textAlignment = .center
    }
    
    private func button7Default() {
        let trouble = UserDefaults.standard.integer(forKey: "count7")
        label7.text = "곤란해 \(trouble)"
        label7.textAlignment = .center
    }
    
    private func button8Default() {
        let depressed = UserDefaults.standard.integer(forKey: "count8")
        label8.text = "우울해 \(depressed)"
        label8.textAlignment = .center
    }
    
    private func button9Default() {
        let unfair = UserDefaults.standard.integer(forKey: "count9")
        label9.text = "억울해 \(unfair)"
        label9.textAlignment = .center
    }
    
}

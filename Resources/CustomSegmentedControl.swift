//
//  CustomSegmentedControl.swift
//  eShelves
//
//  Created by Ayo Soul on Mac on 15/12/2018.
//  Copyright © 2018 Ayo Soul on Mac. All rights reserved.
//

import UIKit

// @IBDesignable allows you to see your changes right on the Storyboard
@IBDesignable
class CustomSegmentedControl: UIControl {
    var buttons = [UIButton]()
    var selector: UIView!
    var selectedSegmentIndex = 0
    
    @IBInspectable
    var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable
    var borderColour: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColour.cgColor
        }
    }

    @IBInspectable
    var commaSeperatedButtontitles: String = "" {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable
    var textColour: UIColor = .white {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable
    var selectorColour: UIColor =  .darkGray {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable
    var selectorTextColour: UIColor = .cyan {
        didSet {
            updateView()
        }
    }
    
    // 1 - Parse the comma separated string
    // 2 - Create a UIButton for each string
    // 3 - Position the UIButton
    func updateView(){
        // Reset array of buttons and stack views
        buttons.removeAll()
//        subviews.forEach { (view) in
//            view.removeFromSuperview()
        subviews.forEach { $0.removeFromSuperview() }
        
        let buttonTitles = commaSeperatedButtontitles.components(separatedBy: ",")
        
        // For each title in buttontitle separate the Title and make a button
        for buttonTitle in buttonTitles{
            let button = UIButton(type: .system)
            // Set button attribute
            button.setTitle(buttonTitle, for: .normal)
            button.setTitleColor(textColour, for: .normal)
            button.addTarget(self, action: #selector(buttonPressed(button:)), for: .touchUpInside)
            // Add button to array of buttons
            buttons.append(button)
        }
        
        buttons[0].setTitleColor(selectorTextColour, for: .normal)
        
        // Detrmine the width of the selector
        let selectorWidth = frame.width / CGFloat(buttonTitles.count)
        
        // Set up the selector UIView
        selector = UIView(frame: CGRect(x: 0, y: 0, width: selectorWidth, height: frame.height))
        selector.layer.cornerRadius = frame.height / 2
        selector.backgroundColor = selectorColour
        
        // Add selector to the UIView
        addSubview(selector)
        
        // Add the array of buttons to the UIView
        
        // Create stack view and set attributes
        let stackView = UIStackView(arrangedSubviews: buttons)
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        
        // add stack view to UIView
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        // set anchors for stackview to buttons
        stackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        stackView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        stackView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
    }
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        layer.cornerRadius = frame.height / 2
    }
 
    @objc func buttonPressed(button: UIButton){
        for (buttonIndex, btn) in buttons.enumerated() {
            btn.setTitleColor(textColour, for: .normal)
            
            if btn == button {
                selectedSegmentIndex = buttonIndex
                let selectorStartPosition = frame.width / CGFloat(buttons.count) * CGFloat(buttonIndex)
                UIView.animate(withDuration: 0.3) {
                    self.selector.frame.origin.x = selectorStartPosition
                }
                btn.setTitleColor(selectorTextColour, for: .normal)
            }
        }
        sendActions(for: .valueChanged)
    }
}

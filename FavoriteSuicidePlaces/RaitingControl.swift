//
//  RaitingControl.swift
//  FavoriteSuicidePlaces
//
//  Created by Maxim Spiridonov on 10/05/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import UIKit

@IBDesignable class RaitingControl: UIStackView {
    
    //    MARK: Properties
    var raiting = 0
    
    private var raitingButtons = [UIButton]()
    
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0) {
        didSet {
            setupButtons()
        }
    }
    @IBInspectable var starCount: Int = 5 {
        didSet {
            setupButtons()
        }
    }
    
    
    

    // MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    // MARK: Button Action
    
    @objc func raitngButtonTapped(button: UIButton) {
        print("Button pressed")
    }
    
    // MARK: Private Methods
    
    private func setupButtons() {
        
        for button in raitingButtons {
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        
        raitingButtons.removeAll()
        
        
        for _ in 0..<starCount {
            //        create button
            let button = UIButton()
            button.backgroundColor = .red
            
            //        add constraint
            
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
            
            //        setup the button action
            
            button.addTarget(self, action: #selector(raitngButtonTapped(button:)), for: .touchUpInside)
            
            
            //        add the button to the stack view
            
            addArrangedSubview(button)
            
            raitingButtons.append(button)
        }

    }
    
}

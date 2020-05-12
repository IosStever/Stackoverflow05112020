//
//  MyTableViewCell.swift
//  Stackoverflow05112020
//
//  Created by Steven Robertson on 5/11/20.
//  Copyright © 2020 Steven Robertson. All rights reserved.
//

import UIKit

protocol MyTableViewCellDelegate : class {
    func didTapButton ()
    func didLongPressButton ()
}

class MyTableViewCell: UITableViewCell {
    
    weak var delegate: MyTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    @objc func didLongPress(sender: UILongPressGestureRecognizer) {
        if sender.state == UIGestureRecognizer.State.began {
            delegate?.didLongPressButton()
        }
    }
    
    @IBAction func expandButton(_ sender: Any) {
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(didLongPress))
        self.addGestureRecognizer(longPress)
        delegate?.didTapButton()
        
    }
    
}

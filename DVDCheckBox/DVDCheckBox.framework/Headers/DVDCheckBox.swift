//
//  DVDCheckBox.swift
//  DVDCheckBox
//
//  Created by Mr.Robo on 11/9/18.
//  Copyright © 2018 DVDCheckBox. All rights reserved.
//

import UIKit

public class DVDCheckBox: UIView, DVDCheckBoxProtocol {
    @IBOutlet weak var checkBoxBtn: UIButton!
    
    @IBInspectable var unSelectImgName:String = ""{
        didSet{
            iconRightImg.image = UIImage(named: unSelectImgName)
            iconLeftImg.image = UIImage(named: unSelectImgName)
        }
        
    }
    
    @IBInspectable var selectImgName:String = ""{
        didSet{
            iconRightImg.highlightedImage = UIImage(named: selectImgName)
            iconLeftImg.highlightedImage = UIImage(named: selectImgName)
        }
        
    }
    
    public var isSelected:Bool = false{
        didSet{
            iconRightImg.isHighlighted = isSelected
            iconLeftImg.isHighlighted = isSelected
            checkBoxBtn.isSelected = isSelected
        }
    }
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var iconRightImg: UIImageView!
    @IBOutlet weak var iconLeftImg: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView ()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpView ()
        
    }
    
    let nibName = "DVDCheckBox"
    var contentView: UIView!
    
    private func setUpView() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: self.nibName, bundle: bundle)
        self.contentView = nib.instantiate(withOwner: self, options: nil).first as? UIView
        addSubview(contentView)
        contentView?.frame = bounds
        contentView?.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }

    @IBAction func checkBoxAction(_ sender: Any) {
        
    }
    
}

//
//  DVDCheckBox.swift
//  DVDCheckBox
//
//  Created by Mr.Robo on 11/9/18.
//  Copyright © 2018 DVDCheckBox. All rights reserved.
//

import UIKit

public class DVDCheckBox: UIView, DVDCheckBoxProtocol {
    public var actionHandler: ActionResult?
    
    @IBOutlet weak var imgLeftWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var imgLeftHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var imgRightHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var imgRightWithConstraint: NSLayoutConstraint!
    @IBOutlet weak var checkBoxBtn: UIButton!
    
    @IBInspectable var animationDuration:CGFloat = 0.0

    @IBInspectable var unSelectImgName:UIImage?{
        didSet{
            iconRightImg.image = unSelectImgName
            iconLeftImg.image = unSelectImgName
            imageAnimation()
        }
        
    }
    
    @IBInspectable var selectImgName:UIImage?{
        didSet{
            iconRightImg.highlightedImage = selectImgName
            iconLeftImg.highlightedImage = selectImgName
            imageAnimation()
        }
        
    }
    
    public var isSelected:Bool = false{
        didSet{
            iconRightImg.isHighlighted = isSelected
            iconLeftImg.isHighlighted = isSelected
            checkBoxBtn.isSelected = isSelected
            imageAnimation()
        }
    }
    
    @IBInspectable var isLeft: Bool = false{
        didSet{
            if isLeft{
                imgRightWithConstraint.constant = 0
                imgRightHeightConstraint.constant = 0
                iconRightImg.isHidden = true
                titleLbl.textAlignment = .left
            }else{
                imgLeftHeightConstraint.constant = 0
                imgLeftWidthConstraint.constant = 0
                iconLeftImg.isHidden = true
                titleLbl.textAlignment = .right

            }
            layoutIfNeeded()
        }
        
    }
    
    @IBInspectable var fontSize:CGFloat = 15.0{
        didSet{
            titleLbl.font = UIFont.systemFont(ofSize: fontSize)
        }
    }
    
    @IBInspectable var textColor:UIColor = .black{
        didSet{
            titleLbl.textColor =  textColor
        }
        
    }
    
    public var titleText:String? = ""{
        didSet{
            titleLbl.text =  titleText
        }
        
    }
    
    @IBInspectable var imgWidth:CGFloat = 50.0 {
        didSet{
            imgLeftWidthConstraint.constant = imgWidth
            imgRightWithConstraint.constant = imgWidth
            layoutIfNeeded()
        }
    }
    
    @IBInspectable var imgHeight:CGFloat = 50.0 {
        didSet{
            imgLeftHeightConstraint.constant = imgHeight
            imgRightHeightConstraint.constant = imgHeight
            layoutIfNeeded()
        }
    }
    
    
    func imageAnimation(){
        iconRightImg.alpha = 0
        iconLeftImg.alpha = 0
        titleLbl.alpha = 0
        UIView.animate(withDuration: TimeInterval(animationDuration)) {
            self.iconRightImg.alpha = 1
            self.iconLeftImg.alpha = 1
            self.titleLbl.alpha = 1
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

    public override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    @IBAction func checkBoxAction(_ sender: Any) {
        isSelected = !isSelected
        actionHandler?(isSelected)
    }
    
}

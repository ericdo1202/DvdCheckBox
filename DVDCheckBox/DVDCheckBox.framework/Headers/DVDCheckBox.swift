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
    @IBOutlet public weak var checkBoxBtn: UIButton!
    @IBOutlet public weak var titleLbl: CustomLabel!
    @IBOutlet weak var iconRightImg: UIImageView!
    @IBOutlet weak var iconLeftImg: UIImageView!

    var animationDuration:CGFloat = 0.5

    @IBInspectable public var unSelectImage:UIImage?{
        didSet{
            iconRightImg.image = unSelectImage
            iconLeftImg.image = unSelectImage
//            imageAnimation()
        }
        
    }
    
    @IBInspectable public var selectImage:UIImage?{
        didSet{
            iconRightImg.highlightedImage = selectImage
            iconLeftImg.highlightedImage = selectImage
//            imageAnimation()
        }
        
    }
    
    public var isEnable:Bool = true{
        didSet{
            if isEnable {
                self.alpha = 1
                self.isUserInteractionEnabled = true
            }else{
                self.alpha = 0.5
                self.isUserInteractionEnabled = false
            }
        }
        
    }
    
    public var isSelected:Bool = false{
        didSet{
            iconRightImg.isHighlighted = isSelected
            iconLeftImg.isHighlighted = isSelected
            if checkBoxBtn.isSelected != isSelected{
                checkBoxBtn.isSelected = isSelected
                if isSelected{
                   // imageAnimation()
                }
            }
            titleLbl.isHighlighted = isSelected
        }
    }
    
    @IBInspectable public var isLeft: Bool = false{
        didSet{
            if isLeft{
                imgRightWithConstraint.constant = 0
                imgRightHeightConstraint.constant = 0
                iconRightImg.isHidden = true
                if NSLocale.characterDirection(forLanguage: NSLocale.preferredLanguages[0]) == .rightToLeft {
                    titleLbl.textAlignment = .right
                }else{
                    titleLbl.textAlignment = .left
                }
            }else{
                imgLeftHeightConstraint.constant = 0
                imgLeftWidthConstraint.constant = 0
                iconLeftImg.isHidden = true
                if NSLocale.characterDirection(forLanguage: NSLocale.preferredLanguages[0]) == .rightToLeft {
                    titleLbl.textAlignment = .left
                }else{
                    titleLbl.textAlignment = .right
                }
            }
            
            
            
//            layoutIfNeeded()
        }
        
    }
    
    @IBInspectable public var isRadio: Bool = false
    
    @IBInspectable public var fontSize:CGFloat = 15.0{
        didSet{
            titleLbl.font = UIFont.systemFont(ofSize: fontSize)
        }
    }
    
    @IBInspectable public var textColorSelect:UIColor = .black{
        didSet{
            titleLbl.highlightedTextColor =  textColorSelect
        }
        
    }
    
    @IBInspectable public var textColorUnselect:UIColor = .black{
        didSet{
            titleLbl.textColor =  textColorUnselect
        }
        
    }
    
    public var titleText:String? = ""{
        didSet{
            titleLbl.text =  titleText
        }
        
    }
    
    @IBInspectable public var imgWidth:CGFloat = 50.0 {
        didSet{
            imgLeftWidthConstraint.constant = imgWidth
            imgRightWithConstraint.constant = imgWidth
//            layoutIfNeeded()
        }
    }
    
    @IBInspectable public var imgHeight:CGFloat = 50.0 {
        didSet{
            imgLeftHeightConstraint.constant = imgHeight
            imgRightHeightConstraint.constant = imgHeight
//            layoutIfNeeded()
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
        let button = sender as! UIButton
        if button.isSelected  && isRadio{
            return
        }
        
        isSelected = !isSelected
        actionHandler?(isSelected)
    }
    
}

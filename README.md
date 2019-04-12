# DvdCheckBox Custom checkboxes for Swift

U can use the DVDCheckBox class to use some pre-built checkboxes, or you can extend it really easy to suit your own design. Every checkbox has a selected animation. When the text is longer then the available space, it will automatically wrap the text over multiple lines.U can custom checkb by image view

The current version supports 2 different checkboxes:

  - Right checkbox

  - Left checkbox
  
 The current version supports radio option


## Support
  - Swift 4.x
  - iOS Deployment target 9.0 and above
  
## Result
![simulator screen shot - iphone xr - 2018-11-14 at 23 16 15](https://user-images.githubusercontent.com/15991780/48495866-70ff8380-e863-11e8-9056-4370fde3765c.png)

## Installation
---- Manual ----
- Just drag the DVDCheckBox.framework to your project.
- Import the DVDCheckBox module to class you want to use.

## How to use 
- Drag a UIView to storyboard and extend DVDCheckBox from your view.
- Set some property if you want on storyboard
- Import the DVDCheckBox module to your class.
- Drag outlet your DVDCheckBox component from storyboard.
- You can set the following properties on every data object:

     | Property | What does it do |
     |------------ | -------------|
     | animationDuration | Set animation checkbox status changed|
     | unSelectImage | Set un select image of checkbox|
     | selectImage | Set select image of checkbox|
     | isSelected | Change checkbox status|
     | isLeft | Change style checkbox (left, right)|
     | fontSize | Change font size of title |
     | textColor | Change color of title |
     | titleText | Change text of title |
     | imgWidth | Change checkbox image with size |
     | imgHeight | Change checkbox image height size |
     | actionHandler | Update callback when checkbox select |
     | isRadio | Enable radio option |


## Example
<img width="1131" alt="screen shot 2018-11-14 at 11 19 46 pm" src="https://user-images.githubusercontent.com/15991780/48496080-d0f62a00-e863-11e8-891b-7c3a75ab1458.png">
  
    import DVDCheckBox

    class ViewController: UIViewController {
    @IBOutlet weak var checkBox: DVDCheckBox!
    @IBOutlet weak var checkbox2: DVDCheckBox!
    @IBOutlet weak var radio1: DVDCheckBox!
    @IBOutlet weak var radio2: DVDCheckBox!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        checkBox.titleText = "Checkbox 1"
        checkbox2.titleText = "Checkbox 2"
        checkBox.actionHandler = {(isSelceted)->() in
            print("Check box 1 IsSelected: \(isSelceted)")
        }
        
        checkbox2.actionHandler = {(isSelceted)->() in
            print("Check box 2 IsSelected: \(isSelceted)")
        }
        
        radio1.titleText = "Radio 1"
        radio2.titleText = "Radio 2"
        radio1.actionHandler = {(isSelceted)->() in
            print("Radio 1 IsSelected: \(isSelceted)")
            self.radio2.isSelected = false
        }
        
        radio2.actionHandler = {(isSelceted)->() in
            print("Radio 2 IsSelected: \(isSelceted)")
            self.radio1.isSelected = false
        }
        
    }


}


## Demo
There is a demo project added to this repository, so you can see how it works.

## License
MIT License

Copyright (c) 2018 mrrobo1510

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
  









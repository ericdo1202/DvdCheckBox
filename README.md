# DvdCheckBox Custom checkboxes for Swift

U can use the DVDCheckBox class to use some pre-built checkboxes, or you can extend it really easy to suit your own design. Every checkbox has a selected animation. When the text is longer then the available space, it will automatically wrap the text over multiple lines.U can custom check by image view

The current version supports 2 different checkboxes:

  - Right checkbox

  - Left checkbox

## Support
  - Swift 4.x
  - iOS Deployment target 9.0 and above
  
## Result
![simulator screen shot - iphone xr - 2018-11-10 at 00 16 19](https://user-images.githubusercontent.com/15991780/48277904-9a449c00-e47e-11e8-9c15-d0fb9f6d3a7a.png)

## Installation
---- Manual ----
- Just drag the DVDCheckBox.framework to your project.
- Import the DVDCheckBox module to class you want to use.

## How to use 
- Drag a UIView to storyboard and extend DVDCheckBox from your view.
- Set some property if you want on storyboard
- Import the DVDCheckBox module to your class.
- Drag outlet of your DVDCheckBox component from storyboard.
- You can set the following properties on every data object:

       Property | What does it do
      ------------ | -------------
      animationDuration | Set animation checkbox status changed
      unSelectImage | Set un select image of checkbox
      selectImage | Set select image of checkbox
      isSelected | Change checkbox status
      isLeft | Change style checkbox (left, right)
      fontSize | Change font size of title 
      textColor | Change color of title 
      titleText | Change text of title 
      imgWidth | Change checkbox image with size 
      imgHeight | Change checkbox image height size 
      actionHandler | Update callback when checkbox select 
      
|  d | d  | d  | d  |
|---|---|---|---|
| d  | d  | d  |   |

## Example
<img width="1127" alt="screen shot 2018-11-10 at 12 22 21 am" src="https://user-images.githubusercontent.com/15991780/48277938-b6e0d400-e47e-11e8-995a-81006385b59d.png">
  
import DVDCheckBox

    class ViewController: UIViewController {
      @IBOutlet weak var checkBox: DVDCheckBox!
      @IBOutlet weak var checkbox2: DVDCheckBox!
    
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
        
      }

    }


## Demo
There is a demo project added to this repository, so you can see how it works.

## License
DVDCheckBox published under the MIT license:

Copyright (C) 2018, Mr.Robo

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
  









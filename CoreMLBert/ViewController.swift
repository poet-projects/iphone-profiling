//
//  ViewController.swift
//  CoreMLBert
//
//  Created by Julien Chaumond on 27/06/2019.
//  Copyright © 2019 Hugging Face. All rights reserved.
//

import UIKit
import AVFoundation
import CoreML

class ViewController: UIViewController {
    @IBOutlet weak var shuffleBtn: UIButton!
    @IBOutlet weak var subjectField: UITextView!
    @IBOutlet weak var questionField: UITextView!
    @IBOutlet weak var answerBtn: UIButton!
    @IBOutlet weak var answerLabel: UILabel!
    let loaderView = LoaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(loaderView)
        loaderView.isLoading = true
        Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { _ in
            self.loaderView.isLoading = false
        }
        
        answerBtn.addTarget(self, action: #selector(answer), for: .touchUpInside)
        
        subjectField.flashScrollIndicators()
        questionField.flashScrollIndicators()
    }
    
    @objc func answer() {
        answerLabel.text = "Loading..."
        loaderView.isLoading = true
        
        let tempDirectoryURL = URL(fileURLWithPath: NSTemporaryDirectory(), isDirectory: true)

        let targetURL = tempDirectoryURL.appendingPathComponent("poet").appendingPathExtension("txy")

        DispatchQueue.global().async {
            let start = 1              
            let end = 96
DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 1/27"
}
let input_2_320_96_96 = try! MLMultiArray(shape: [2, 320, 96, 96], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<320 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input_2_320_96_96[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 2/27"
}
let input_2_320 = try! MLMultiArray(shape: [2, 320], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<320 {
input_2_320[[d0,d1] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 3/27"
}
let input_2_320_48_48 = try! MLMultiArray(shape: [2, 320, 48, 48], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<320 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input_2_320_48_48[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 4/27"
}
let input_2_77_1024 = try! MLMultiArray(shape: [2, 77, 1024], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<77 {
for d2 in 0..<1024 {
input_2_77_1024[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 5/27"
}
let input_2_1920_48_48 = try! MLMultiArray(shape: [2, 1920, 48, 48], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<1920 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input_2_1920_48_48[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 6/27"
}
let input_2_144_1280 = try! MLMultiArray(shape: [2, 144, 1280], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<144 {
for d2 in 0..<1280 {
input_2_144_1280[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 7/27"
}
let input_2_960_48_48 = try! MLMultiArray(shape: [2, 960, 48, 48], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<960 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input_2_960_48_48[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 8/27"
}
let input_2_1280_24_24 = try! MLMultiArray(shape: [2, 1280, 24, 24], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<1280 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input_2_1280_24_24[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 9/27"
}
let input_2_2304_640 = try! MLMultiArray(shape: [2, 2304, 640], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<2304 {
for d2 in 0..<640 {
input_2_2304_640[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 10/27"
}
let input_2_9216_1280 = try! MLMultiArray(shape: [2, 9216, 1280], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<9216 {
for d2 in 0..<1280 {
input_2_9216_1280[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 11/27"
}
let input_2_9216_320 = try! MLMultiArray(shape: [2, 9216, 320], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<9216 {
for d2 in 0..<320 {
input_2_9216_320[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 12/27"
}
let input_2_2560_12_12 = try! MLMultiArray(shape: [2, 2560, 12, 12], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<2560 {
for d2 in 0..<12 {
for d3 in 0..<12 {
input_2_2560_12_12[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 13/27"
}
let input_2_144_5120 = try! MLMultiArray(shape: [2, 144, 5120], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<144 {
for d2 in 0..<5120 {
input_2_144_5120[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 14/27"
}
let input_2_640_48_48 = try! MLMultiArray(shape: [2, 640, 48, 48], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<640 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input_2_640_48_48[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 15/27"
}
let input_2_1280 = try! MLMultiArray(shape: [2, 1280], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<1280 {
input_2_1280[[d0,d1] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 16/27"
}
let input_2_1920_24_24 = try! MLMultiArray(shape: [2, 1920, 24, 24], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<1920 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input_2_1920_24_24[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 17/27"
}
let input_2 = try! MLMultiArray(shape: [2], dataType: .float16)
for d0 in 0..<2 {
input_2[[d0] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 18/27"
}
let input_2_2304_2560 = try! MLMultiArray(shape: [2, 2304, 2560], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<2304 {
for d2 in 0..<2560 {
input_2_2304_2560[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 19/27"
}
let input_2_640_24_24 = try! MLMultiArray(shape: [2, 640, 24, 24], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<640 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input_2_640_24_24[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 20/27"
}
let input_2_640_96_96 = try! MLMultiArray(shape: [2, 640, 96, 96], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<640 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input_2_640_96_96[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 21/27"
}
let input_2_576_1280 = try! MLMultiArray(shape: [2, 576, 1280], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<576 {
for d2 in 0..<1280 {
input_2_576_1280[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 22/27"
}
let input_2_576_5120 = try! MLMultiArray(shape: [2, 576, 5120], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<576 {
for d2 in 0..<5120 {
input_2_576_5120[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 23/27"
}
let input_2_2560_24_24 = try! MLMultiArray(shape: [2, 2560, 24, 24], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<2560 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input_2_2560_24_24[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 24/27"
}
let input_2_4_96_96 = try! MLMultiArray(shape: [2, 4, 96, 96], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<4 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input_2_4_96_96[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 25/27"
}
let input_2_1280_48_48 = try! MLMultiArray(shape: [2, 1280, 48, 48], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<1280 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input_2_1280_48_48[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 26/27"
}
let input_2_960_96_96 = try! MLMultiArray(shape: [2, 960, 96, 96], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<960 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input_2_960_96_96[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 27/27"
}
let input_2_1280_12_12 = try! MLMultiArray(shape: [2, 1280, 12, 12], dataType: .float16)
for d0 in 0..<2 {
for d1 in 0..<1280 {
for d2 in 0..<12 {
for d3 in 0..<12 {
input_2_1280_12_12[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}



            // pageout_input

            // for i in 0..<100 {
            //     do {
            //         try (
            //             withUnsafeBytes(of: arr) { Data($0) }
            //         ).write(to: targetURL)
            //     } catch {
            //         print(error)
            //     }
            //     usleep(25000)

            //     DispatchQueue.main.async {
            //         self.answerLabel.text = "paging " + String(i + 1) + "/100"
            //     }
            // }

            // usleep(1000000)
            
            // for i in 0..<100 {
            //     do {
            //         let fileHandle = try (FileHandle(forReadingFrom: targetURL))
            //         // pagein_input
            //         fileHandle.closeFile()
            //     } catch {
            //         print("ERROR WHEN PAGING IN")
            //     }
                
            //     usleep(25000)

            //     DispatchQueue.main.async {
            //         self.answerLabel.text = "paging in " + String(i + 1) + "/100"
            //     }
            // }

            print("DONE PREDICTING")
            
            DispatchQueue.main.async {
                self.loaderView.isLoading = false
                self.answerLabel.text = "done"
            }
        }
    }
    
    func say(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
}


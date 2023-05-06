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

        DispatchQueue.global().async {
            let profileCompute = true

            if profileCompute {
                let start = 1              
                let end = 96
DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 1/27"
}
let input_2_320_48_48 = try! MLMultiArray(shape: [2, 320, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<320 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input_2_320_48_48[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 2/27"
}
let input_2_1920_48_48 = try! MLMultiArray(shape: [2, 1920, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1920 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input_2_1920_48_48[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 3/27"
}
let input_2_77_1024 = try! MLMultiArray(shape: [2, 77, 1024], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<77 {
for d2 in 0..<1024 {
input_2_77_1024[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 4/27"
}
let input_2_960_48_48 = try! MLMultiArray(shape: [2, 960, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<960 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input_2_960_48_48[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 5/27"
}
let input_2_144_1280 = try! MLMultiArray(shape: [2, 144, 1280], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<144 {
for d2 in 0..<1280 {
input_2_144_1280[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 6/27"
}
let input_2_1280_24_24 = try! MLMultiArray(shape: [2, 1280, 24, 24], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1280 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input_2_1280_24_24[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 7/27"
}
let input_2_2304_640 = try! MLMultiArray(shape: [2, 2304, 640], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<2304 {
for d2 in 0..<640 {
input_2_2304_640[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 8/27"
}
let input_2_9216_1280 = try! MLMultiArray(shape: [2, 9216, 1280], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<9216 {
for d2 in 0..<1280 {
input_2_9216_1280[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 9/27"
}
let input_2_9216_320 = try! MLMultiArray(shape: [2, 9216, 320], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<9216 {
for d2 in 0..<320 {
input_2_9216_320[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 10/27"
}
let input_2_2560_12_12 = try! MLMultiArray(shape: [2, 2560, 12, 12], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<2560 {
for d2 in 0..<12 {
for d3 in 0..<12 {
input_2_2560_12_12[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 11/27"
}
let input_2_144_5120 = try! MLMultiArray(shape: [2, 144, 5120], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<144 {
for d2 in 0..<5120 {
input_2_144_5120[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 12/27"
}
let input_2_640_48_48 = try! MLMultiArray(shape: [2, 640, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<640 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input_2_640_48_48[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 13/27"
}
let input_2_2304_2560 = try! MLMultiArray(shape: [2, 2304, 2560], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<2304 {
for d2 in 0..<2560 {
input_2_2304_2560[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 14/27"
}
let input_2_1920_24_24 = try! MLMultiArray(shape: [2, 1920, 24, 24], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1920 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input_2_1920_24_24[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 15/27"
}
let input_2_1280 = try! MLMultiArray(shape: [2, 1280], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1280 {
input_2_1280[[d0,d1] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 16/27"
}
let input_2_640_24_24 = try! MLMultiArray(shape: [2, 640, 24, 24], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<640 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input_2_640_24_24[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 17/27"
}
let input_2 = try! MLMultiArray(shape: [2], dataType: .float32)
for d0 in 0..<2 {
input_2[[d0] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 18/27"
}
let input_2_576_1280 = try! MLMultiArray(shape: [2, 576, 1280], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<576 {
for d2 in 0..<1280 {
input_2_576_1280[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 19/27"
}
let input_2_640_96_96 = try! MLMultiArray(shape: [2, 640, 96, 96], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<640 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input_2_640_96_96[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 20/27"
}
let input_2_576_5120 = try! MLMultiArray(shape: [2, 576, 5120], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<576 {
for d2 in 0..<5120 {
input_2_576_5120[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 21/27"
}
let input_2_2560_24_24 = try! MLMultiArray(shape: [2, 2560, 24, 24], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<2560 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input_2_2560_24_24[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 22/27"
}
let input_2_4_96_96 = try! MLMultiArray(shape: [2, 4, 96, 96], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<4 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input_2_4_96_96[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 23/27"
}
let input_2_1280_48_48 = try! MLMultiArray(shape: [2, 1280, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1280 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input_2_1280_48_48[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 24/27"
}
let input_2_320_96_96 = try! MLMultiArray(shape: [2, 320, 96, 96], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<320 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input_2_320_96_96[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 25/27"
}
let input_2_960_96_96 = try! MLMultiArray(shape: [2, 960, 96, 96], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<960 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input_2_960_96_96[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 26/27"
}
let input_2_1280_12_12 = try! MLMultiArray(shape: [2, 1280, 12, 12], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1280 {
for d2 in 0..<12 {
for d3 in 0..<12 {
input_2_1280_12_12[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 27/27"
}
let input_2_320 = try! MLMultiArray(shape: [2, 320], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<320 {
input_2_320[[d0,d1] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}

if start...end ~= 1 {
var conv2d_2_1280_12_12_to_2_1280_12_12_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_2_1280_12_12_to_2_1280_12_12_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_2_1280_12_12_to_2_1280_12_12_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_2_1280_12_12_to_2_1280_12_12_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_2_1280_12_12_to_2_1280_12_12_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(input: input_2_1280_12_12))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 1/96 run " + String(i + 1) + "/100"
}}
conv2d_2_1280_12_12_to_2_1280_12_12_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 2 {
var conv2d_2_1280_24_24_to_2_1280_12_12_dtype_float32_params_3_3_2_2_1_1_1_1_1_instance: conv2d_2_1280_24_24_to_2_1280_12_12_dtype_float32_params_3_3_2_2_1_1_1_1_1? = conv2d_2_1280_24_24_to_2_1280_12_12_dtype_float32_params_3_3_2_2_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_2_1280_24_24_to_2_1280_12_12_dtype_float32_params_3_3_2_2_1_1_1_1_1_instance!.prediction(input: conv2d_2_1280_24_24_to_2_1280_12_12_dtype_float32_params_3_3_2_2_1_1_1_1_1Input(input: input_2_1280_24_24))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 2/96 run " + String(i + 1) + "/100"
}}
conv2d_2_1280_24_24_to_2_1280_12_12_dtype_float32_params_3_3_2_2_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 3 {
var conv2d_2_1280_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_2_1280_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_2_1280_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_2_1280_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_2_1280_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(input: input_2_1280_24_24))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 3/96 run " + String(i + 1) + "/100"
}}
conv2d_2_1280_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 4 {
var conv2d_2_1280_48_48_to_2_1280_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_2_1280_48_48_to_2_1280_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_2_1280_48_48_to_2_1280_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_2_1280_48_48_to_2_1280_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_2_1280_48_48_to_2_1280_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(input: input_2_1280_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 4/96 run " + String(i + 1) + "/100"
}}
conv2d_2_1280_48_48_to_2_1280_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 5 {
var conv2d_2_1280_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance: conv2d_2_1280_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1? = conv2d_2_1280_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1()
for i in 0..<100 {
try! conv2d_2_1280_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance!.prediction(input: conv2d_2_1280_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1Input(input: input_2_1280_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 5/96 run " + String(i + 1) + "/100"
}}
conv2d_2_1280_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 6 {
var conv2d_2_1280_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_2_1280_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_2_1280_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_2_1280_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_2_1280_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(input: input_2_1280_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 6/96 run " + String(i + 1) + "/100"
}}
conv2d_2_1280_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 7 {
var conv2d_2_1920_24_24_to_2_1280_24_24_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance: conv2d_2_1920_24_24_to_2_1280_24_24_dtype_float32_params_1_1_1_1_0_0_1_1_1? = conv2d_2_1920_24_24_to_2_1280_24_24_dtype_float32_params_1_1_1_1_0_0_1_1_1()
for i in 0..<100 {
try! conv2d_2_1920_24_24_to_2_1280_24_24_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance!.prediction(input: conv2d_2_1920_24_24_to_2_1280_24_24_dtype_float32_params_1_1_1_1_0_0_1_1_1Input(input: input_2_1920_24_24))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 7/96 run " + String(i + 1) + "/100"
}}
conv2d_2_1920_24_24_to_2_1280_24_24_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 8 {
var conv2d_2_1920_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_2_1920_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_2_1920_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_2_1920_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_2_1920_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(input: input_2_1920_24_24))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 8/96 run " + String(i + 1) + "/100"
}}
conv2d_2_1920_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 9 {
var conv2d_2_1920_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance: conv2d_2_1920_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1? = conv2d_2_1920_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1()
for i in 0..<100 {
try! conv2d_2_1920_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance!.prediction(input: conv2d_2_1920_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1Input(input: input_2_1920_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 9/96 run " + String(i + 1) + "/100"
}}
conv2d_2_1920_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 10 {
var conv2d_2_1920_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_2_1920_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_2_1920_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_2_1920_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_2_1920_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(input: input_2_1920_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 10/96 run " + String(i + 1) + "/100"
}}
conv2d_2_1920_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 11 {
var conv2d_2_2560_12_12_to_2_1280_12_12_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance: conv2d_2_2560_12_12_to_2_1280_12_12_dtype_float32_params_1_1_1_1_0_0_1_1_1? = conv2d_2_2560_12_12_to_2_1280_12_12_dtype_float32_params_1_1_1_1_0_0_1_1_1()
for i in 0..<100 {
try! conv2d_2_2560_12_12_to_2_1280_12_12_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance!.prediction(input: conv2d_2_2560_12_12_to_2_1280_12_12_dtype_float32_params_1_1_1_1_0_0_1_1_1Input(input: input_2_2560_12_12))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 11/96 run " + String(i + 1) + "/100"
}}
conv2d_2_2560_12_12_to_2_1280_12_12_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 12 {
var conv2d_2_2560_12_12_to_2_1280_12_12_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_2_2560_12_12_to_2_1280_12_12_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_2_2560_12_12_to_2_1280_12_12_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_2_2560_12_12_to_2_1280_12_12_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_2_2560_12_12_to_2_1280_12_12_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(input: input_2_2560_12_12))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 12/96 run " + String(i + 1) + "/100"
}}
conv2d_2_2560_12_12_to_2_1280_12_12_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 13 {
var conv2d_2_2560_24_24_to_2_1280_24_24_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance: conv2d_2_2560_24_24_to_2_1280_24_24_dtype_float32_params_1_1_1_1_0_0_1_1_1? = conv2d_2_2560_24_24_to_2_1280_24_24_dtype_float32_params_1_1_1_1_0_0_1_1_1()
for i in 0..<100 {
try! conv2d_2_2560_24_24_to_2_1280_24_24_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance!.prediction(input: conv2d_2_2560_24_24_to_2_1280_24_24_dtype_float32_params_1_1_1_1_0_0_1_1_1Input(input: input_2_2560_24_24))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 13/96 run " + String(i + 1) + "/100"
}}
conv2d_2_2560_24_24_to_2_1280_24_24_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 14 {
var conv2d_2_2560_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_2_2560_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_2_2560_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_2_2560_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_2_2560_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(input: input_2_2560_24_24))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 14/96 run " + String(i + 1) + "/100"
}}
conv2d_2_2560_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 15 {
var conv2d_2_320_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance: conv2d_2_320_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1? = conv2d_2_320_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1()
for i in 0..<100 {
try! conv2d_2_320_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance!.prediction(input: conv2d_2_320_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1Input(input: input_2_320_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 15/96 run " + String(i + 1) + "/100"
}}
conv2d_2_320_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 16 {
var conv2d_2_320_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_2_320_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_2_320_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_2_320_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_2_320_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(input: input_2_320_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 16/96 run " + String(i + 1) + "/100"
}}
conv2d_2_320_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 17 {
var conv2d_2_320_96_96_to_2_320_48_48_dtype_float32_params_3_3_2_2_1_1_1_1_1_instance: conv2d_2_320_96_96_to_2_320_48_48_dtype_float32_params_3_3_2_2_1_1_1_1_1? = conv2d_2_320_96_96_to_2_320_48_48_dtype_float32_params_3_3_2_2_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_2_320_96_96_to_2_320_48_48_dtype_float32_params_3_3_2_2_1_1_1_1_1_instance!.prediction(input: conv2d_2_320_96_96_to_2_320_48_48_dtype_float32_params_3_3_2_2_1_1_1_1_1Input(input: input_2_320_96_96))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 17/96 run " + String(i + 1) + "/100"
}}
conv2d_2_320_96_96_to_2_320_48_48_dtype_float32_params_3_3_2_2_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 18 {
var conv2d_2_320_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_2_320_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_2_320_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_2_320_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_2_320_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(input: input_2_320_96_96))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 18/96 run " + String(i + 1) + "/100"
}}
conv2d_2_320_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 19 {
var conv2d_2_320_96_96_to_2_4_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_2_320_96_96_to_2_4_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_2_320_96_96_to_2_4_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_2_320_96_96_to_2_4_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_2_320_96_96_to_2_4_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(input: input_2_320_96_96))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 19/96 run " + String(i + 1) + "/100"
}}
conv2d_2_320_96_96_to_2_4_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 20 {
var conv2d_2_4_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_2_4_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_2_4_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_2_4_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_2_4_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(input: input_2_4_96_96))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 20/96 run " + String(i + 1) + "/100"
}}
conv2d_2_4_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 21 {
var conv2d_2_640_24_24_to_2_1280_24_24_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance: conv2d_2_640_24_24_to_2_1280_24_24_dtype_float32_params_1_1_1_1_0_0_1_1_1? = conv2d_2_640_24_24_to_2_1280_24_24_dtype_float32_params_1_1_1_1_0_0_1_1_1()
for i in 0..<100 {
try! conv2d_2_640_24_24_to_2_1280_24_24_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance!.prediction(input: conv2d_2_640_24_24_to_2_1280_24_24_dtype_float32_params_1_1_1_1_0_0_1_1_1Input(input: input_2_640_24_24))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 21/96 run " + String(i + 1) + "/100"
}}
conv2d_2_640_24_24_to_2_1280_24_24_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 22 {
var conv2d_2_640_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_2_640_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_2_640_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_2_640_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_2_640_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(input: input_2_640_24_24))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 22/96 run " + String(i + 1) + "/100"
}}
conv2d_2_640_24_24_to_2_1280_24_24_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 23 {
var conv2d_2_640_48_48_to_2_640_24_24_dtype_float32_params_3_3_2_2_1_1_1_1_1_instance: conv2d_2_640_48_48_to_2_640_24_24_dtype_float32_params_3_3_2_2_1_1_1_1_1? = conv2d_2_640_48_48_to_2_640_24_24_dtype_float32_params_3_3_2_2_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_2_640_48_48_to_2_640_24_24_dtype_float32_params_3_3_2_2_1_1_1_1_1_instance!.prediction(input: conv2d_2_640_48_48_to_2_640_24_24_dtype_float32_params_3_3_2_2_1_1_1_1_1Input(input: input_2_640_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 23/96 run " + String(i + 1) + "/100"
}}
conv2d_2_640_48_48_to_2_640_24_24_dtype_float32_params_3_3_2_2_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 24 {
var conv2d_2_640_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_2_640_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_2_640_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_2_640_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_2_640_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(input: input_2_640_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 24/96 run " + String(i + 1) + "/100"
}}
conv2d_2_640_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 25 {
var conv2d_2_640_96_96_to_2_320_96_96_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance: conv2d_2_640_96_96_to_2_320_96_96_dtype_float32_params_1_1_1_1_0_0_1_1_1? = conv2d_2_640_96_96_to_2_320_96_96_dtype_float32_params_1_1_1_1_0_0_1_1_1()
for i in 0..<100 {
try! conv2d_2_640_96_96_to_2_320_96_96_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance!.prediction(input: conv2d_2_640_96_96_to_2_320_96_96_dtype_float32_params_1_1_1_1_0_0_1_1_1Input(input: input_2_640_96_96))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 25/96 run " + String(i + 1) + "/100"
}}
conv2d_2_640_96_96_to_2_320_96_96_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 26 {
var conv2d_2_640_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_2_640_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_2_640_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_2_640_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_2_640_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(input: input_2_640_96_96))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 26/96 run " + String(i + 1) + "/100"
}}
conv2d_2_640_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 27 {
var conv2d_2_640_96_96_to_2_640_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_2_640_96_96_to_2_640_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_2_640_96_96_to_2_640_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_2_640_96_96_to_2_640_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_2_640_96_96_to_2_640_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(input: input_2_640_96_96))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 27/96 run " + String(i + 1) + "/100"
}}
conv2d_2_640_96_96_to_2_640_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 28 {
var conv2d_2_960_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance: conv2d_2_960_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1? = conv2d_2_960_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1()
for i in 0..<100 {
try! conv2d_2_960_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance!.prediction(input: conv2d_2_960_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1Input(input: input_2_960_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 28/96 run " + String(i + 1) + "/100"
}}
conv2d_2_960_48_48_to_2_640_48_48_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 29 {
var conv2d_2_960_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_2_960_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_2_960_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_2_960_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_2_960_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(input: input_2_960_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 29/96 run " + String(i + 1) + "/100"
}}
conv2d_2_960_48_48_to_2_640_48_48_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 30 {
var conv2d_2_960_96_96_to_2_320_96_96_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance: conv2d_2_960_96_96_to_2_320_96_96_dtype_float32_params_1_1_1_1_0_0_1_1_1? = conv2d_2_960_96_96_to_2_320_96_96_dtype_float32_params_1_1_1_1_0_0_1_1_1()
for i in 0..<100 {
try! conv2d_2_960_96_96_to_2_320_96_96_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance!.prediction(input: conv2d_2_960_96_96_to_2_320_96_96_dtype_float32_params_1_1_1_1_0_0_1_1_1Input(input: input_2_960_96_96))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 30/96 run " + String(i + 1) + "/100"
}}
conv2d_2_960_96_96_to_2_320_96_96_dtype_float32_params_1_1_1_1_0_0_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 31 {
var conv2d_2_960_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_2_960_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_2_960_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_2_960_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_2_960_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(input: input_2_960_96_96))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 31/96 run " + String(i + 1) + "/100"
}}
conv2d_2_960_96_96_to_2_320_96_96_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 32 {
var dropout_2_1280_12_12_to_2_1280_12_12_dtype_float32_instance: dropout_2_1280_12_12_to_2_1280_12_12_dtype_float32? = dropout_2_1280_12_12_to_2_1280_12_12_dtype_float32()
for i in 0..<100 {
try! dropout_2_1280_12_12_to_2_1280_12_12_dtype_float32_instance!.prediction(input: dropout_2_1280_12_12_to_2_1280_12_12_dtype_float32Input(input: input_2_1280_12_12))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 32/96 run " + String(i + 1) + "/100"
}}
dropout_2_1280_12_12_to_2_1280_12_12_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 33 {
var dropout_2_1280_24_24_to_2_1280_24_24_dtype_float32_instance: dropout_2_1280_24_24_to_2_1280_24_24_dtype_float32? = dropout_2_1280_24_24_to_2_1280_24_24_dtype_float32()
for i in 0..<100 {
try! dropout_2_1280_24_24_to_2_1280_24_24_dtype_float32_instance!.prediction(input: dropout_2_1280_24_24_to_2_1280_24_24_dtype_float32Input(input: input_2_1280_24_24))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 33/96 run " + String(i + 1) + "/100"
}}
dropout_2_1280_24_24_to_2_1280_24_24_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 34 {
var dropout_2_144_1280_to_2_144_1280_dtype_float32_instance: dropout_2_144_1280_to_2_144_1280_dtype_float32? = dropout_2_144_1280_to_2_144_1280_dtype_float32()
for i in 0..<100 {
try! dropout_2_144_1280_to_2_144_1280_dtype_float32_instance!.prediction(input: dropout_2_144_1280_to_2_144_1280_dtype_float32Input(input: input_2_144_1280))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 34/96 run " + String(i + 1) + "/100"
}}
dropout_2_144_1280_to_2_144_1280_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 35 {
var dropout_2_144_5120_to_2_144_5120_dtype_float32_instance: dropout_2_144_5120_to_2_144_5120_dtype_float32? = dropout_2_144_5120_to_2_144_5120_dtype_float32()
for i in 0..<100 {
try! dropout_2_144_5120_to_2_144_5120_dtype_float32_instance!.prediction(input: dropout_2_144_5120_to_2_144_5120_dtype_float32Input(input: input_2_144_5120))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 35/96 run " + String(i + 1) + "/100"
}}
dropout_2_144_5120_to_2_144_5120_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 36 {
var dropout_2_2304_2560_to_2_2304_2560_dtype_float32_instance: dropout_2_2304_2560_to_2_2304_2560_dtype_float32? = dropout_2_2304_2560_to_2_2304_2560_dtype_float32()
for i in 0..<100 {
try! dropout_2_2304_2560_to_2_2304_2560_dtype_float32_instance!.prediction(input: dropout_2_2304_2560_to_2_2304_2560_dtype_float32Input(input: input_2_2304_2560))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 36/96 run " + String(i + 1) + "/100"
}}
dropout_2_2304_2560_to_2_2304_2560_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 37 {
var dropout_2_2304_640_to_2_2304_640_dtype_float32_instance: dropout_2_2304_640_to_2_2304_640_dtype_float32? = dropout_2_2304_640_to_2_2304_640_dtype_float32()
for i in 0..<100 {
try! dropout_2_2304_640_to_2_2304_640_dtype_float32_instance!.prediction(input: dropout_2_2304_640_to_2_2304_640_dtype_float32Input(input: input_2_2304_640))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 37/96 run " + String(i + 1) + "/100"
}}
dropout_2_2304_640_to_2_2304_640_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 38 {
var dropout_2_320_96_96_to_2_320_96_96_dtype_float32_instance: dropout_2_320_96_96_to_2_320_96_96_dtype_float32? = dropout_2_320_96_96_to_2_320_96_96_dtype_float32()
for i in 0..<100 {
try! dropout_2_320_96_96_to_2_320_96_96_dtype_float32_instance!.prediction(input: dropout_2_320_96_96_to_2_320_96_96_dtype_float32Input(input: input_2_320_96_96))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 38/96 run " + String(i + 1) + "/100"
}}
dropout_2_320_96_96_to_2_320_96_96_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 39 {
var dropout_2_576_1280_to_2_576_1280_dtype_float32_instance: dropout_2_576_1280_to_2_576_1280_dtype_float32? = dropout_2_576_1280_to_2_576_1280_dtype_float32()
for i in 0..<100 {
try! dropout_2_576_1280_to_2_576_1280_dtype_float32_instance!.prediction(input: dropout_2_576_1280_to_2_576_1280_dtype_float32Input(input: input_2_576_1280))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 39/96 run " + String(i + 1) + "/100"
}}
dropout_2_576_1280_to_2_576_1280_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 40 {
var dropout_2_576_5120_to_2_576_5120_dtype_float32_instance: dropout_2_576_5120_to_2_576_5120_dtype_float32? = dropout_2_576_5120_to_2_576_5120_dtype_float32()
for i in 0..<100 {
try! dropout_2_576_5120_to_2_576_5120_dtype_float32_instance!.prediction(input: dropout_2_576_5120_to_2_576_5120_dtype_float32Input(input: input_2_576_5120))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 40/96 run " + String(i + 1) + "/100"
}}
dropout_2_576_5120_to_2_576_5120_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 41 {
var dropout_2_640_48_48_to_2_640_48_48_dtype_float32_instance: dropout_2_640_48_48_to_2_640_48_48_dtype_float32? = dropout_2_640_48_48_to_2_640_48_48_dtype_float32()
for i in 0..<100 {
try! dropout_2_640_48_48_to_2_640_48_48_dtype_float32_instance!.prediction(input: dropout_2_640_48_48_to_2_640_48_48_dtype_float32Input(input: input_2_640_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 41/96 run " + String(i + 1) + "/100"
}}
dropout_2_640_48_48_to_2_640_48_48_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 42 {
var dropout_2_9216_1280_to_2_9216_1280_dtype_float32_instance: dropout_2_9216_1280_to_2_9216_1280_dtype_float32? = dropout_2_9216_1280_to_2_9216_1280_dtype_float32()
for i in 0..<100 {
try! dropout_2_9216_1280_to_2_9216_1280_dtype_float32_instance!.prediction(input: dropout_2_9216_1280_to_2_9216_1280_dtype_float32Input(input: input_2_9216_1280))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 42/96 run " + String(i + 1) + "/100"
}}
dropout_2_9216_1280_to_2_9216_1280_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 43 {
var dropout_2_9216_320_to_2_9216_320_dtype_float32_instance: dropout_2_9216_320_to_2_9216_320_dtype_float32? = dropout_2_9216_320_to_2_9216_320_dtype_float32()
for i in 0..<100 {
try! dropout_2_9216_320_to_2_9216_320_dtype_float32_instance!.prediction(input: dropout_2_9216_320_to_2_9216_320_dtype_float32Input(input: input_2_9216_320))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 43/96 run " + String(i + 1) + "/100"
}}
dropout_2_9216_320_to_2_9216_320_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 44 {
var groupnorm_2_1280_12_12_to_2_1280_12_12_dtype_float32_params_32_instance: groupnorm_2_1280_12_12_to_2_1280_12_12_dtype_float32_params_32? = groupnorm_2_1280_12_12_to_2_1280_12_12_dtype_float32_params_32()
for i in 0..<100 {
try! groupnorm_2_1280_12_12_to_2_1280_12_12_dtype_float32_params_32_instance!.prediction(input: groupnorm_2_1280_12_12_to_2_1280_12_12_dtype_float32_params_32Input(input: input_2_1280_12_12))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 44/96 run " + String(i + 1) + "/100"
}}
groupnorm_2_1280_12_12_to_2_1280_12_12_dtype_float32_params_32_instance = nil
usleep(200000)
}

if start...end ~= 45 {
var groupnorm_2_1280_24_24_to_2_1280_24_24_dtype_float32_params_32_instance: groupnorm_2_1280_24_24_to_2_1280_24_24_dtype_float32_params_32? = groupnorm_2_1280_24_24_to_2_1280_24_24_dtype_float32_params_32()
for i in 0..<100 {
try! groupnorm_2_1280_24_24_to_2_1280_24_24_dtype_float32_params_32_instance!.prediction(input: groupnorm_2_1280_24_24_to_2_1280_24_24_dtype_float32_params_32Input(input: input_2_1280_24_24))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 45/96 run " + String(i + 1) + "/100"
}}
groupnorm_2_1280_24_24_to_2_1280_24_24_dtype_float32_params_32_instance = nil
usleep(200000)
}

if start...end ~= 46 {
var groupnorm_2_1280_48_48_to_2_1280_48_48_dtype_float32_params_32_instance: groupnorm_2_1280_48_48_to_2_1280_48_48_dtype_float32_params_32? = groupnorm_2_1280_48_48_to_2_1280_48_48_dtype_float32_params_32()
for i in 0..<100 {
try! groupnorm_2_1280_48_48_to_2_1280_48_48_dtype_float32_params_32_instance!.prediction(input: groupnorm_2_1280_48_48_to_2_1280_48_48_dtype_float32_params_32Input(input: input_2_1280_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 46/96 run " + String(i + 1) + "/100"
}}
groupnorm_2_1280_48_48_to_2_1280_48_48_dtype_float32_params_32_instance = nil
usleep(200000)
}

if start...end ~= 47 {
var groupnorm_2_1920_24_24_to_2_1920_24_24_dtype_float32_params_32_instance: groupnorm_2_1920_24_24_to_2_1920_24_24_dtype_float32_params_32? = groupnorm_2_1920_24_24_to_2_1920_24_24_dtype_float32_params_32()
for i in 0..<100 {
try! groupnorm_2_1920_24_24_to_2_1920_24_24_dtype_float32_params_32_instance!.prediction(input: groupnorm_2_1920_24_24_to_2_1920_24_24_dtype_float32_params_32Input(input: input_2_1920_24_24))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 47/96 run " + String(i + 1) + "/100"
}}
groupnorm_2_1920_24_24_to_2_1920_24_24_dtype_float32_params_32_instance = nil
usleep(200000)
}

if start...end ~= 48 {
var groupnorm_2_1920_48_48_to_2_1920_48_48_dtype_float32_params_32_instance: groupnorm_2_1920_48_48_to_2_1920_48_48_dtype_float32_params_32? = groupnorm_2_1920_48_48_to_2_1920_48_48_dtype_float32_params_32()
for i in 0..<100 {
try! groupnorm_2_1920_48_48_to_2_1920_48_48_dtype_float32_params_32_instance!.prediction(input: groupnorm_2_1920_48_48_to_2_1920_48_48_dtype_float32_params_32Input(input: input_2_1920_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 48/96 run " + String(i + 1) + "/100"
}}
groupnorm_2_1920_48_48_to_2_1920_48_48_dtype_float32_params_32_instance = nil
usleep(200000)
}

if start...end ~= 49 {
var groupnorm_2_2560_12_12_to_2_2560_12_12_dtype_float32_params_32_instance: groupnorm_2_2560_12_12_to_2_2560_12_12_dtype_float32_params_32? = groupnorm_2_2560_12_12_to_2_2560_12_12_dtype_float32_params_32()
for i in 0..<100 {
try! groupnorm_2_2560_12_12_to_2_2560_12_12_dtype_float32_params_32_instance!.prediction(input: groupnorm_2_2560_12_12_to_2_2560_12_12_dtype_float32_params_32Input(input: input_2_2560_12_12))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 49/96 run " + String(i + 1) + "/100"
}}
groupnorm_2_2560_12_12_to_2_2560_12_12_dtype_float32_params_32_instance = nil
usleep(200000)
}

if start...end ~= 50 {
var groupnorm_2_2560_24_24_to_2_2560_24_24_dtype_float32_params_32_instance: groupnorm_2_2560_24_24_to_2_2560_24_24_dtype_float32_params_32? = groupnorm_2_2560_24_24_to_2_2560_24_24_dtype_float32_params_32()
for i in 0..<100 {
try! groupnorm_2_2560_24_24_to_2_2560_24_24_dtype_float32_params_32_instance!.prediction(input: groupnorm_2_2560_24_24_to_2_2560_24_24_dtype_float32_params_32Input(input: input_2_2560_24_24))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 50/96 run " + String(i + 1) + "/100"
}}
groupnorm_2_2560_24_24_to_2_2560_24_24_dtype_float32_params_32_instance = nil
usleep(200000)
}

if start...end ~= 51 {
var groupnorm_2_320_48_48_to_2_320_48_48_dtype_float32_params_32_instance: groupnorm_2_320_48_48_to_2_320_48_48_dtype_float32_params_32? = groupnorm_2_320_48_48_to_2_320_48_48_dtype_float32_params_32()
for i in 0..<100 {
try! groupnorm_2_320_48_48_to_2_320_48_48_dtype_float32_params_32_instance!.prediction(input: groupnorm_2_320_48_48_to_2_320_48_48_dtype_float32_params_32Input(input: input_2_320_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 51/96 run " + String(i + 1) + "/100"
}}
groupnorm_2_320_48_48_to_2_320_48_48_dtype_float32_params_32_instance = nil
usleep(200000)
}

if start...end ~= 52 {
var groupnorm_2_320_96_96_to_2_320_96_96_dtype_float32_params_32_instance: groupnorm_2_320_96_96_to_2_320_96_96_dtype_float32_params_32? = groupnorm_2_320_96_96_to_2_320_96_96_dtype_float32_params_32()
for i in 0..<100 {
try! groupnorm_2_320_96_96_to_2_320_96_96_dtype_float32_params_32_instance!.prediction(input: groupnorm_2_320_96_96_to_2_320_96_96_dtype_float32_params_32Input(input: input_2_320_96_96))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 52/96 run " + String(i + 1) + "/100"
}}
groupnorm_2_320_96_96_to_2_320_96_96_dtype_float32_params_32_instance = nil
usleep(200000)
}

if start...end ~= 53 {
var groupnorm_2_640_24_24_to_2_640_24_24_dtype_float32_params_32_instance: groupnorm_2_640_24_24_to_2_640_24_24_dtype_float32_params_32? = groupnorm_2_640_24_24_to_2_640_24_24_dtype_float32_params_32()
for i in 0..<100 {
try! groupnorm_2_640_24_24_to_2_640_24_24_dtype_float32_params_32_instance!.prediction(input: groupnorm_2_640_24_24_to_2_640_24_24_dtype_float32_params_32Input(input: input_2_640_24_24))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 53/96 run " + String(i + 1) + "/100"
}}
groupnorm_2_640_24_24_to_2_640_24_24_dtype_float32_params_32_instance = nil
usleep(200000)
}

if start...end ~= 54 {
var groupnorm_2_640_48_48_to_2_640_48_48_dtype_float32_params_32_instance: groupnorm_2_640_48_48_to_2_640_48_48_dtype_float32_params_32? = groupnorm_2_640_48_48_to_2_640_48_48_dtype_float32_params_32()
for i in 0..<100 {
try! groupnorm_2_640_48_48_to_2_640_48_48_dtype_float32_params_32_instance!.prediction(input: groupnorm_2_640_48_48_to_2_640_48_48_dtype_float32_params_32Input(input: input_2_640_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 54/96 run " + String(i + 1) + "/100"
}}
groupnorm_2_640_48_48_to_2_640_48_48_dtype_float32_params_32_instance = nil
usleep(200000)
}

if start...end ~= 55 {
var groupnorm_2_640_96_96_to_2_640_96_96_dtype_float32_params_32_instance: groupnorm_2_640_96_96_to_2_640_96_96_dtype_float32_params_32? = groupnorm_2_640_96_96_to_2_640_96_96_dtype_float32_params_32()
for i in 0..<100 {
try! groupnorm_2_640_96_96_to_2_640_96_96_dtype_float32_params_32_instance!.prediction(input: groupnorm_2_640_96_96_to_2_640_96_96_dtype_float32_params_32Input(input: input_2_640_96_96))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 55/96 run " + String(i + 1) + "/100"
}}
groupnorm_2_640_96_96_to_2_640_96_96_dtype_float32_params_32_instance = nil
usleep(200000)
}

if start...end ~= 56 {
var groupnorm_2_960_48_48_to_2_960_48_48_dtype_float32_params_32_instance: groupnorm_2_960_48_48_to_2_960_48_48_dtype_float32_params_32? = groupnorm_2_960_48_48_to_2_960_48_48_dtype_float32_params_32()
for i in 0..<100 {
try! groupnorm_2_960_48_48_to_2_960_48_48_dtype_float32_params_32_instance!.prediction(input: groupnorm_2_960_48_48_to_2_960_48_48_dtype_float32_params_32Input(input: input_2_960_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 56/96 run " + String(i + 1) + "/100"
}}
groupnorm_2_960_48_48_to_2_960_48_48_dtype_float32_params_32_instance = nil
usleep(200000)
}

if start...end ~= 57 {
var groupnorm_2_960_96_96_to_2_960_96_96_dtype_float32_params_32_instance: groupnorm_2_960_96_96_to_2_960_96_96_dtype_float32_params_32? = groupnorm_2_960_96_96_to_2_960_96_96_dtype_float32_params_32()
for i in 0..<100 {
try! groupnorm_2_960_96_96_to_2_960_96_96_dtype_float32_params_32_instance!.prediction(input: groupnorm_2_960_96_96_to_2_960_96_96_dtype_float32_params_32Input(input: input_2_960_96_96))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 57/96 run " + String(i + 1) + "/100"
}}
groupnorm_2_960_96_96_to_2_960_96_96_dtype_float32_params_32_instance = nil
usleep(200000)
}

if start...end ~= 58 {
var layernorm_2_144_1280_to_2_144_1280_dtype_float32_instance: layernorm_2_144_1280_to_2_144_1280_dtype_float32? = layernorm_2_144_1280_to_2_144_1280_dtype_float32()
for i in 0..<100 {
try! layernorm_2_144_1280_to_2_144_1280_dtype_float32_instance!.prediction(input: layernorm_2_144_1280_to_2_144_1280_dtype_float32Input(input: input_2_144_1280))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 58/96 run " + String(i + 1) + "/100"
}}
layernorm_2_144_1280_to_2_144_1280_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 59 {
var layernorm_2_2304_640_to_2_2304_640_dtype_float32_instance: layernorm_2_2304_640_to_2_2304_640_dtype_float32? = layernorm_2_2304_640_to_2_2304_640_dtype_float32()
for i in 0..<100 {
try! layernorm_2_2304_640_to_2_2304_640_dtype_float32_instance!.prediction(input: layernorm_2_2304_640_to_2_2304_640_dtype_float32Input(input: input_2_2304_640))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 59/96 run " + String(i + 1) + "/100"
}}
layernorm_2_2304_640_to_2_2304_640_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 60 {
var layernorm_2_576_1280_to_2_576_1280_dtype_float32_instance: layernorm_2_576_1280_to_2_576_1280_dtype_float32? = layernorm_2_576_1280_to_2_576_1280_dtype_float32()
for i in 0..<100 {
try! layernorm_2_576_1280_to_2_576_1280_dtype_float32_instance!.prediction(input: layernorm_2_576_1280_to_2_576_1280_dtype_float32Input(input: input_2_576_1280))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 60/96 run " + String(i + 1) + "/100"
}}
layernorm_2_576_1280_to_2_576_1280_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 61 {
var layernorm_2_9216_320_to_2_9216_320_dtype_float32_instance: layernorm_2_9216_320_to_2_9216_320_dtype_float32? = layernorm_2_9216_320_to_2_9216_320_dtype_float32()
for i in 0..<100 {
try! layernorm_2_9216_320_to_2_9216_320_dtype_float32_instance!.prediction(input: layernorm_2_9216_320_to_2_9216_320_dtype_float32Input(input: input_2_9216_320))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 61/96 run " + String(i + 1) + "/100"
}}
layernorm_2_9216_320_to_2_9216_320_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 62 {
var linear_2_1280_to_2_1280_dtype_float32_instance: linear_2_1280_to_2_1280_dtype_float32? = linear_2_1280_to_2_1280_dtype_float32()
for i in 0..<100 {
try! linear_2_1280_to_2_1280_dtype_float32_instance!.prediction(input: linear_2_1280_to_2_1280_dtype_float32Input(input: input_2_1280))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 62/96 run " + String(i + 1) + "/100"
}}
linear_2_1280_to_2_1280_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 63 {
var linear_2_1280_to_2_320_dtype_float32_instance: linear_2_1280_to_2_320_dtype_float32? = linear_2_1280_to_2_320_dtype_float32()
for i in 0..<100 {
try! linear_2_1280_to_2_320_dtype_float32_instance!.prediction(input: linear_2_1280_to_2_320_dtype_float32Input(input: input_2_1280))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 63/96 run " + String(i + 1) + "/100"
}}
linear_2_1280_to_2_320_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 64 {
var linear_2_1280_to_2_640_dtype_float32_instance: linear_2_1280_to_2_640_dtype_float32? = linear_2_1280_to_2_640_dtype_float32()
for i in 0..<100 {
try! linear_2_1280_to_2_640_dtype_float32_instance!.prediction(input: linear_2_1280_to_2_640_dtype_float32Input(input: input_2_1280))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 64/96 run " + String(i + 1) + "/100"
}}
linear_2_1280_to_2_640_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 65 {
var linear_2_144_1280_to_2_144_10240_dtype_float32_instance: linear_2_144_1280_to_2_144_10240_dtype_float32? = linear_2_144_1280_to_2_144_10240_dtype_float32()
for i in 0..<100 {
try! linear_2_144_1280_to_2_144_10240_dtype_float32_instance!.prediction(input: linear_2_144_1280_to_2_144_10240_dtype_float32Input(input: input_2_144_1280))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 65/96 run " + String(i + 1) + "/100"
}}
linear_2_144_1280_to_2_144_10240_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 66 {
var linear_2_144_1280_to_2_144_1280_dtype_float32_instance: linear_2_144_1280_to_2_144_1280_dtype_float32? = linear_2_144_1280_to_2_144_1280_dtype_float32()
for i in 0..<100 {
try! linear_2_144_1280_to_2_144_1280_dtype_float32_instance!.prediction(input: linear_2_144_1280_to_2_144_1280_dtype_float32Input(input: input_2_144_1280))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 66/96 run " + String(i + 1) + "/100"
}}
linear_2_144_1280_to_2_144_1280_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 67 {
var linear_2_144_5120_to_2_144_1280_dtype_float32_instance: linear_2_144_5120_to_2_144_1280_dtype_float32? = linear_2_144_5120_to_2_144_1280_dtype_float32()
for i in 0..<100 {
try! linear_2_144_5120_to_2_144_1280_dtype_float32_instance!.prediction(input: linear_2_144_5120_to_2_144_1280_dtype_float32Input(input: input_2_144_5120))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 67/96 run " + String(i + 1) + "/100"
}}
linear_2_144_5120_to_2_144_1280_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 68 {
var linear_2_2304_2560_to_2_2304_640_dtype_float32_instance: linear_2_2304_2560_to_2_2304_640_dtype_float32? = linear_2_2304_2560_to_2_2304_640_dtype_float32()
for i in 0..<100 {
try! linear_2_2304_2560_to_2_2304_640_dtype_float32_instance!.prediction(input: linear_2_2304_2560_to_2_2304_640_dtype_float32Input(input: input_2_2304_2560))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 68/96 run " + String(i + 1) + "/100"
}}
linear_2_2304_2560_to_2_2304_640_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 69 {
var linear_2_2304_640_to_2_2304_5120_dtype_float32_instance: linear_2_2304_640_to_2_2304_5120_dtype_float32? = linear_2_2304_640_to_2_2304_5120_dtype_float32()
for i in 0..<100 {
try! linear_2_2304_640_to_2_2304_5120_dtype_float32_instance!.prediction(input: linear_2_2304_640_to_2_2304_5120_dtype_float32Input(input: input_2_2304_640))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 69/96 run " + String(i + 1) + "/100"
}}
linear_2_2304_640_to_2_2304_5120_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 70 {
var linear_2_2304_640_to_2_2304_640_dtype_float32_instance: linear_2_2304_640_to_2_2304_640_dtype_float32? = linear_2_2304_640_to_2_2304_640_dtype_float32()
for i in 0..<100 {
try! linear_2_2304_640_to_2_2304_640_dtype_float32_instance!.prediction(input: linear_2_2304_640_to_2_2304_640_dtype_float32Input(input: input_2_2304_640))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 70/96 run " + String(i + 1) + "/100"
}}
linear_2_2304_640_to_2_2304_640_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 71 {
var linear_2_320_to_2_1280_dtype_float32_instance: linear_2_320_to_2_1280_dtype_float32? = linear_2_320_to_2_1280_dtype_float32()
for i in 0..<100 {
try! linear_2_320_to_2_1280_dtype_float32_instance!.prediction(input: linear_2_320_to_2_1280_dtype_float32Input(input: input_2_320))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 71/96 run " + String(i + 1) + "/100"
}}
linear_2_320_to_2_1280_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 72 {
var linear_2_576_1280_to_2_576_10240_dtype_float32_instance: linear_2_576_1280_to_2_576_10240_dtype_float32? = linear_2_576_1280_to_2_576_10240_dtype_float32()
for i in 0..<100 {
try! linear_2_576_1280_to_2_576_10240_dtype_float32_instance!.prediction(input: linear_2_576_1280_to_2_576_10240_dtype_float32Input(input: input_2_576_1280))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 72/96 run " + String(i + 1) + "/100"
}}
linear_2_576_1280_to_2_576_10240_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 73 {
var linear_2_576_1280_to_2_576_1280_dtype_float32_instance: linear_2_576_1280_to_2_576_1280_dtype_float32? = linear_2_576_1280_to_2_576_1280_dtype_float32()
for i in 0..<100 {
try! linear_2_576_1280_to_2_576_1280_dtype_float32_instance!.prediction(input: linear_2_576_1280_to_2_576_1280_dtype_float32Input(input: input_2_576_1280))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 73/96 run " + String(i + 1) + "/100"
}}
linear_2_576_1280_to_2_576_1280_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 74 {
var linear_2_576_5120_to_2_576_1280_dtype_float32_instance: linear_2_576_5120_to_2_576_1280_dtype_float32? = linear_2_576_5120_to_2_576_1280_dtype_float32()
for i in 0..<100 {
try! linear_2_576_5120_to_2_576_1280_dtype_float32_instance!.prediction(input: linear_2_576_5120_to_2_576_1280_dtype_float32Input(input: input_2_576_5120))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 74/96 run " + String(i + 1) + "/100"
}}
linear_2_576_5120_to_2_576_1280_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 75 {
var linear_2_77_1024_to_2_77_1280_dtype_float32_instance: linear_2_77_1024_to_2_77_1280_dtype_float32? = linear_2_77_1024_to_2_77_1280_dtype_float32()
for i in 0..<100 {
try! linear_2_77_1024_to_2_77_1280_dtype_float32_instance!.prediction(input: linear_2_77_1024_to_2_77_1280_dtype_float32Input(input: input_2_77_1024))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 75/96 run " + String(i + 1) + "/100"
}}
linear_2_77_1024_to_2_77_1280_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 76 {
var linear_2_77_1024_to_2_77_320_dtype_float32_instance: linear_2_77_1024_to_2_77_320_dtype_float32? = linear_2_77_1024_to_2_77_320_dtype_float32()
for i in 0..<100 {
try! linear_2_77_1024_to_2_77_320_dtype_float32_instance!.prediction(input: linear_2_77_1024_to_2_77_320_dtype_float32Input(input: input_2_77_1024))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 76/96 run " + String(i + 1) + "/100"
}}
linear_2_77_1024_to_2_77_320_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 77 {
var linear_2_77_1024_to_2_77_640_dtype_float32_instance: linear_2_77_1024_to_2_77_640_dtype_float32? = linear_2_77_1024_to_2_77_640_dtype_float32()
for i in 0..<100 {
try! linear_2_77_1024_to_2_77_640_dtype_float32_instance!.prediction(input: linear_2_77_1024_to_2_77_640_dtype_float32Input(input: input_2_77_1024))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 77/96 run " + String(i + 1) + "/100"
}}
linear_2_77_1024_to_2_77_640_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 78 {
var linear_2_9216_1280_to_2_9216_320_dtype_float32_instance: linear_2_9216_1280_to_2_9216_320_dtype_float32? = linear_2_9216_1280_to_2_9216_320_dtype_float32()
for i in 0..<100 {
try! linear_2_9216_1280_to_2_9216_320_dtype_float32_instance!.prediction(input: linear_2_9216_1280_to_2_9216_320_dtype_float32Input(input: input_2_9216_1280))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 78/96 run " + String(i + 1) + "/100"
}}
linear_2_9216_1280_to_2_9216_320_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 79 {
var linear_2_9216_320_to_2_9216_2560_dtype_float32_instance: linear_2_9216_320_to_2_9216_2560_dtype_float32? = linear_2_9216_320_to_2_9216_2560_dtype_float32()
for i in 0..<100 {
try! linear_2_9216_320_to_2_9216_2560_dtype_float32_instance!.prediction(input: linear_2_9216_320_to_2_9216_2560_dtype_float32Input(input: input_2_9216_320))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 79/96 run " + String(i + 1) + "/100"
}}
linear_2_9216_320_to_2_9216_2560_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 80 {
var linear_2_9216_320_to_2_9216_320_dtype_float32_instance: linear_2_9216_320_to_2_9216_320_dtype_float32? = linear_2_9216_320_to_2_9216_320_dtype_float32()
for i in 0..<100 {
try! linear_2_9216_320_to_2_9216_320_dtype_float32_instance!.prediction(input: linear_2_9216_320_to_2_9216_320_dtype_float32Input(input: input_2_9216_320))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 80/96 run " + String(i + 1) + "/100"
}}
linear_2_9216_320_to_2_9216_320_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 81 {
var silu_2_1280_to_2_1280_dtype_float32_instance: silu_2_1280_to_2_1280_dtype_float32? = silu_2_1280_to_2_1280_dtype_float32()
for i in 0..<100 {
try! silu_2_1280_to_2_1280_dtype_float32_instance!.prediction(input: silu_2_1280_to_2_1280_dtype_float32Input(input: input_2_1280))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 81/96 run " + String(i + 1) + "/100"
}}
silu_2_1280_to_2_1280_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 82 {
var silu_2_1280_12_12_to_2_1280_12_12_dtype_float32_instance: silu_2_1280_12_12_to_2_1280_12_12_dtype_float32? = silu_2_1280_12_12_to_2_1280_12_12_dtype_float32()
for i in 0..<100 {
try! silu_2_1280_12_12_to_2_1280_12_12_dtype_float32_instance!.prediction(input: silu_2_1280_12_12_to_2_1280_12_12_dtype_float32Input(input: input_2_1280_12_12))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 82/96 run " + String(i + 1) + "/100"
}}
silu_2_1280_12_12_to_2_1280_12_12_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 83 {
var silu_2_1280_24_24_to_2_1280_24_24_dtype_float32_instance: silu_2_1280_24_24_to_2_1280_24_24_dtype_float32? = silu_2_1280_24_24_to_2_1280_24_24_dtype_float32()
for i in 0..<100 {
try! silu_2_1280_24_24_to_2_1280_24_24_dtype_float32_instance!.prediction(input: silu_2_1280_24_24_to_2_1280_24_24_dtype_float32Input(input: input_2_1280_24_24))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 83/96 run " + String(i + 1) + "/100"
}}
silu_2_1280_24_24_to_2_1280_24_24_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 84 {
var silu_2_1280_48_48_to_2_1280_48_48_dtype_float32_instance: silu_2_1280_48_48_to_2_1280_48_48_dtype_float32? = silu_2_1280_48_48_to_2_1280_48_48_dtype_float32()
for i in 0..<100 {
try! silu_2_1280_48_48_to_2_1280_48_48_dtype_float32_instance!.prediction(input: silu_2_1280_48_48_to_2_1280_48_48_dtype_float32Input(input: input_2_1280_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 84/96 run " + String(i + 1) + "/100"
}}
silu_2_1280_48_48_to_2_1280_48_48_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 85 {
var silu_2_1920_24_24_to_2_1920_24_24_dtype_float32_instance: silu_2_1920_24_24_to_2_1920_24_24_dtype_float32? = silu_2_1920_24_24_to_2_1920_24_24_dtype_float32()
for i in 0..<100 {
try! silu_2_1920_24_24_to_2_1920_24_24_dtype_float32_instance!.prediction(input: silu_2_1920_24_24_to_2_1920_24_24_dtype_float32Input(input: input_2_1920_24_24))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 85/96 run " + String(i + 1) + "/100"
}}
silu_2_1920_24_24_to_2_1920_24_24_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 86 {
var silu_2_1920_48_48_to_2_1920_48_48_dtype_float32_instance: silu_2_1920_48_48_to_2_1920_48_48_dtype_float32? = silu_2_1920_48_48_to_2_1920_48_48_dtype_float32()
for i in 0..<100 {
try! silu_2_1920_48_48_to_2_1920_48_48_dtype_float32_instance!.prediction(input: silu_2_1920_48_48_to_2_1920_48_48_dtype_float32Input(input: input_2_1920_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 86/96 run " + String(i + 1) + "/100"
}}
silu_2_1920_48_48_to_2_1920_48_48_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 87 {
var silu_2_2560_12_12_to_2_2560_12_12_dtype_float32_instance: silu_2_2560_12_12_to_2_2560_12_12_dtype_float32? = silu_2_2560_12_12_to_2_2560_12_12_dtype_float32()
for i in 0..<100 {
try! silu_2_2560_12_12_to_2_2560_12_12_dtype_float32_instance!.prediction(input: silu_2_2560_12_12_to_2_2560_12_12_dtype_float32Input(input: input_2_2560_12_12))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 87/96 run " + String(i + 1) + "/100"
}}
silu_2_2560_12_12_to_2_2560_12_12_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 88 {
var silu_2_2560_24_24_to_2_2560_24_24_dtype_float32_instance: silu_2_2560_24_24_to_2_2560_24_24_dtype_float32? = silu_2_2560_24_24_to_2_2560_24_24_dtype_float32()
for i in 0..<100 {
try! silu_2_2560_24_24_to_2_2560_24_24_dtype_float32_instance!.prediction(input: silu_2_2560_24_24_to_2_2560_24_24_dtype_float32Input(input: input_2_2560_24_24))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 88/96 run " + String(i + 1) + "/100"
}}
silu_2_2560_24_24_to_2_2560_24_24_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 89 {
var silu_2_320_48_48_to_2_320_48_48_dtype_float32_instance: silu_2_320_48_48_to_2_320_48_48_dtype_float32? = silu_2_320_48_48_to_2_320_48_48_dtype_float32()
for i in 0..<100 {
try! silu_2_320_48_48_to_2_320_48_48_dtype_float32_instance!.prediction(input: silu_2_320_48_48_to_2_320_48_48_dtype_float32Input(input: input_2_320_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 89/96 run " + String(i + 1) + "/100"
}}
silu_2_320_48_48_to_2_320_48_48_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 90 {
var silu_2_320_96_96_to_2_320_96_96_dtype_float32_instance: silu_2_320_96_96_to_2_320_96_96_dtype_float32? = silu_2_320_96_96_to_2_320_96_96_dtype_float32()
for i in 0..<100 {
try! silu_2_320_96_96_to_2_320_96_96_dtype_float32_instance!.prediction(input: silu_2_320_96_96_to_2_320_96_96_dtype_float32Input(input: input_2_320_96_96))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 90/96 run " + String(i + 1) + "/100"
}}
silu_2_320_96_96_to_2_320_96_96_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 91 {
var silu_2_640_24_24_to_2_640_24_24_dtype_float32_instance: silu_2_640_24_24_to_2_640_24_24_dtype_float32? = silu_2_640_24_24_to_2_640_24_24_dtype_float32()
for i in 0..<100 {
try! silu_2_640_24_24_to_2_640_24_24_dtype_float32_instance!.prediction(input: silu_2_640_24_24_to_2_640_24_24_dtype_float32Input(input: input_2_640_24_24))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 91/96 run " + String(i + 1) + "/100"
}}
silu_2_640_24_24_to_2_640_24_24_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 92 {
var silu_2_640_48_48_to_2_640_48_48_dtype_float32_instance: silu_2_640_48_48_to_2_640_48_48_dtype_float32? = silu_2_640_48_48_to_2_640_48_48_dtype_float32()
for i in 0..<100 {
try! silu_2_640_48_48_to_2_640_48_48_dtype_float32_instance!.prediction(input: silu_2_640_48_48_to_2_640_48_48_dtype_float32Input(input: input_2_640_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 92/96 run " + String(i + 1) + "/100"
}}
silu_2_640_48_48_to_2_640_48_48_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 93 {
var silu_2_640_96_96_to_2_640_96_96_dtype_float32_instance: silu_2_640_96_96_to_2_640_96_96_dtype_float32? = silu_2_640_96_96_to_2_640_96_96_dtype_float32()
for i in 0..<100 {
try! silu_2_640_96_96_to_2_640_96_96_dtype_float32_instance!.prediction(input: silu_2_640_96_96_to_2_640_96_96_dtype_float32Input(input: input_2_640_96_96))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 93/96 run " + String(i + 1) + "/100"
}}
silu_2_640_96_96_to_2_640_96_96_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 94 {
var silu_2_960_48_48_to_2_960_48_48_dtype_float32_instance: silu_2_960_48_48_to_2_960_48_48_dtype_float32? = silu_2_960_48_48_to_2_960_48_48_dtype_float32()
for i in 0..<100 {
try! silu_2_960_48_48_to_2_960_48_48_dtype_float32_instance!.prediction(input: silu_2_960_48_48_to_2_960_48_48_dtype_float32Input(input: input_2_960_48_48))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 94/96 run " + String(i + 1) + "/100"
}}
silu_2_960_48_48_to_2_960_48_48_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 95 {
var silu_2_960_96_96_to_2_960_96_96_dtype_float32_instance: silu_2_960_96_96_to_2_960_96_96_dtype_float32? = silu_2_960_96_96_to_2_960_96_96_dtype_float32()
for i in 0..<100 {
try! silu_2_960_96_96_to_2_960_96_96_dtype_float32_instance!.prediction(input: silu_2_960_96_96_to_2_960_96_96_dtype_float32Input(input: input_2_960_96_96))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 95/96 run " + String(i + 1) + "/100"
}}
silu_2_960_96_96_to_2_960_96_96_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 96 {
var timesteps_2_to_2_320_dtype_float32_instance: timesteps_2_to_2_320_dtype_float32? = timesteps_2_to_2_320_dtype_float32()
for i in 0..<100 {
try! timesteps_2_to_2_320_dtype_float32_instance!.prediction(input: timesteps_2_to_2_320_dtype_float32Input(input: input_2))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 96/96 run " + String(i + 1) + "/100"
}}
timesteps_2_to_2_320_dtype_float32_instance = nil
usleep(200000)
}


            }

            do {
                let data_2560 = Data(repeating: 1, count: 2560)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_2560_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_2560)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 1/19 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_5120 = Data(repeating: 1, count: 5120)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_5120_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_5120)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 2/19 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_10240 = Data(repeating: 1, count: 10240)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_10240_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_10240)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 3/19 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_197120 = Data(repeating: 1, count: 197120)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_197120_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_197120)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 4/19 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_294912 = Data(repeating: 1, count: 294912)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_294912_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_294912)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 5/19 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_394240 = Data(repeating: 1, count: 394240)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_394240_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_394240)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 6/19 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_788480 = Data(repeating: 1, count: 788480)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_788480_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_788480)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 7/19 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_1474560 = Data(repeating: 1, count: 1474560)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_1474560_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_1474560)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 8/19 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_2949120 = Data(repeating: 1, count: 2949120)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_2949120_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_2949120)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 9/19 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_5898240 = Data(repeating: 1, count: 5898240)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_5898240_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_5898240)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 10/19 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_8847360 = Data(repeating: 1, count: 8847360)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_8847360_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_8847360)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 11/19 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_11796480 = Data(repeating: 1, count: 11796480)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_11796480_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_11796480)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 12/19 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_17694720 = Data(repeating: 1, count: 17694720)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_17694720_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_17694720)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 13/19 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_23592960 = Data(repeating: 1, count: 23592960)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_23592960_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_23592960)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 14/19 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_35389440 = Data(repeating: 1, count: 35389440)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_35389440_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_35389440)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 15/19 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_47185920 = Data(repeating: 1, count: 47185920)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_47185920_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_47185920)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 16/19 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_70778880 = Data(repeating: 1, count: 70778880)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_70778880_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_70778880)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 17/19 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_94371840 = Data(repeating: 1, count: 94371840)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_94371840_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_94371840)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 18/19 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_188743680 = Data(repeating: 1, count: 188743680)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_188743680_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_188743680)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 19/19 run " + String(i + 1) + "/100"
}}
usleep(200000)




for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_2560_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 2560)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 1/19 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_5120_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 5120)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 2/19 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_10240_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 10240)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 3/19 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_197120_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 197120)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 4/19 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_294912_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 294912)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 5/19 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_394240_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 394240)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 6/19 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_788480_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 788480)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 7/19 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_1474560_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 1474560)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 8/19 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_2949120_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 2949120)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 9/19 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_5898240_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 5898240)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 10/19 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_8847360_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 8847360)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 11/19 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_11796480_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 11796480)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 12/19 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_17694720_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 17694720)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 13/19 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_23592960_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 23592960)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 14/19 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_35389440_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 35389440)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 15/19 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_47185920_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 47185920)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 16/19 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_70778880_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 70778880)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 17/19 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_94371840_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 94371840)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 18/19 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_188743680_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 188743680)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 19/19 run " + String(i + 1) + "/100"
}}}
usleep(200000)


            } catch {
              print(error)
            }

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


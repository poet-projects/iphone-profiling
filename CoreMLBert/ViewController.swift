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
                let end = 22
DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 1/7"
}
let input_8_512_1_1 = try! MLMultiArray(shape: [8, 512, 1, 1], dataType: .float32)
for d0 in 0..<8 {
for d1 in 0..<512 {
for d2 in 0..<1 {
for d3 in 0..<1 {
input_8_512_1_1[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 2/7"
}
let input_8_512 = try! MLMultiArray(shape: [8, 512], dataType: .float32)
for d0 in 0..<8 {
for d1 in 0..<512 {
input_8_512[[d0,d1] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 3/7"
}
let input_8_512_4_4 = try! MLMultiArray(shape: [8, 512, 4, 4], dataType: .float32)
for d0 in 0..<8 {
for d1 in 0..<512 {
for d2 in 0..<4 {
for d3 in 0..<4 {
input_8_512_4_4[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 4/7"
}
let input_8_256_8_8 = try! MLMultiArray(shape: [8, 256, 8, 8], dataType: .float32)
for d0 in 0..<8 {
for d1 in 0..<256 {
for d2 in 0..<8 {
for d3 in 0..<8 {
input_8_256_8_8[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 5/7"
}
let input_8_128_16_16 = try! MLMultiArray(shape: [8, 128, 16, 16], dataType: .float32)
for d0 in 0..<8 {
for d1 in 0..<128 {
for d2 in 0..<16 {
for d3 in 0..<16 {
input_8_128_16_16[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 6/7"
}
let input_8_3_32_32 = try! MLMultiArray(shape: [8, 3, 32, 32], dataType: .float32)
for d0 in 0..<8 {
for d1 in 0..<3 {
for d2 in 0..<32 {
for d3 in 0..<32 {
input_8_3_32_32[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

DispatchQueue.main.async {
self.answerLabel.text = "Generating input shape 7/7"
}
let input_8_64_32_32 = try! MLMultiArray(shape: [8, 64, 32, 32], dataType: .float32)
for d0 in 0..<8 {
for d1 in 0..<64 {
for d2 in 0..<32 {
for d3 in 0..<32 {
input_8_64_32_32[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...1000) as NSNumber
}}}}

if start...end ~= 1 {
var adaptiveavgpool2d_8_512_4_4_to_8_512_1_1_dtype_float32_instance: adaptiveavgpool2d_8_512_4_4_to_8_512_1_1_dtype_float32? = adaptiveavgpool2d_8_512_4_4_to_8_512_1_1_dtype_float32()
for i in 0..<100 {
try! adaptiveavgpool2d_8_512_4_4_to_8_512_1_1_dtype_float32_instance!.prediction(input: adaptiveavgpool2d_8_512_4_4_to_8_512_1_1_dtype_float32Input(x: input_8_512_4_4))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 1/22 run " + String(i + 1) + "/100"
}}
adaptiveavgpool2d_8_512_4_4_to_8_512_1_1_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 2 {
var batchnorm2d_8_128_16_16_to_8_128_16_16_dtype_float32_instance: batchnorm2d_8_128_16_16_to_8_128_16_16_dtype_float32? = batchnorm2d_8_128_16_16_to_8_128_16_16_dtype_float32()
for i in 0..<100 {
try! batchnorm2d_8_128_16_16_to_8_128_16_16_dtype_float32_instance!.prediction(input: batchnorm2d_8_128_16_16_to_8_128_16_16_dtype_float32Input(x: input_8_128_16_16))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 2/22 run " + String(i + 1) + "/100"
}}
batchnorm2d_8_128_16_16_to_8_128_16_16_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 3 {
var batchnorm2d_8_256_8_8_to_8_256_8_8_dtype_float32_instance: batchnorm2d_8_256_8_8_to_8_256_8_8_dtype_float32? = batchnorm2d_8_256_8_8_to_8_256_8_8_dtype_float32()
for i in 0..<100 {
try! batchnorm2d_8_256_8_8_to_8_256_8_8_dtype_float32_instance!.prediction(input: batchnorm2d_8_256_8_8_to_8_256_8_8_dtype_float32Input(x: input_8_256_8_8))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 3/22 run " + String(i + 1) + "/100"
}}
batchnorm2d_8_256_8_8_to_8_256_8_8_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 4 {
var batchnorm2d_8_512_4_4_to_8_512_4_4_dtype_float32_instance: batchnorm2d_8_512_4_4_to_8_512_4_4_dtype_float32? = batchnorm2d_8_512_4_4_to_8_512_4_4_dtype_float32()
for i in 0..<100 {
try! batchnorm2d_8_512_4_4_to_8_512_4_4_dtype_float32_instance!.prediction(input: batchnorm2d_8_512_4_4_to_8_512_4_4_dtype_float32Input(x: input_8_512_4_4))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 4/22 run " + String(i + 1) + "/100"
}}
batchnorm2d_8_512_4_4_to_8_512_4_4_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 5 {
var batchnorm2d_8_64_32_32_to_8_64_32_32_dtype_float32_instance: batchnorm2d_8_64_32_32_to_8_64_32_32_dtype_float32? = batchnorm2d_8_64_32_32_to_8_64_32_32_dtype_float32()
for i in 0..<100 {
try! batchnorm2d_8_64_32_32_to_8_64_32_32_dtype_float32_instance!.prediction(input: batchnorm2d_8_64_32_32_to_8_64_32_32_dtype_float32Input(x: input_8_64_32_32))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 5/22 run " + String(i + 1) + "/100"
}}
batchnorm2d_8_64_32_32_to_8_64_32_32_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 6 {
var conv2d_8_128_16_16_to_8_128_16_16_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_8_128_16_16_to_8_128_16_16_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_8_128_16_16_to_8_128_16_16_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_8_128_16_16_to_8_128_16_16_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_8_128_16_16_to_8_128_16_16_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(x: input_8_128_16_16))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 6/22 run " + String(i + 1) + "/100"
}}
conv2d_8_128_16_16_to_8_128_16_16_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 7 {
var conv2d_8_128_16_16_to_8_256_8_8_dtype_float32_params_1_1_2_2_0_0_1_1_1_instance: conv2d_8_128_16_16_to_8_256_8_8_dtype_float32_params_1_1_2_2_0_0_1_1_1? = conv2d_8_128_16_16_to_8_256_8_8_dtype_float32_params_1_1_2_2_0_0_1_1_1()
for i in 0..<100 {
try! conv2d_8_128_16_16_to_8_256_8_8_dtype_float32_params_1_1_2_2_0_0_1_1_1_instance!.prediction(input: conv2d_8_128_16_16_to_8_256_8_8_dtype_float32_params_1_1_2_2_0_0_1_1_1Input(x: input_8_128_16_16))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 7/22 run " + String(i + 1) + "/100"
}}
conv2d_8_128_16_16_to_8_256_8_8_dtype_float32_params_1_1_2_2_0_0_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 8 {
var conv2d_8_128_16_16_to_8_256_8_8_dtype_float32_params_3_3_2_2_1_1_1_1_1_instance: conv2d_8_128_16_16_to_8_256_8_8_dtype_float32_params_3_3_2_2_1_1_1_1_1? = conv2d_8_128_16_16_to_8_256_8_8_dtype_float32_params_3_3_2_2_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_8_128_16_16_to_8_256_8_8_dtype_float32_params_3_3_2_2_1_1_1_1_1_instance!.prediction(input: conv2d_8_128_16_16_to_8_256_8_8_dtype_float32_params_3_3_2_2_1_1_1_1_1Input(x: input_8_128_16_16))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 8/22 run " + String(i + 1) + "/100"
}}
conv2d_8_128_16_16_to_8_256_8_8_dtype_float32_params_3_3_2_2_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 9 {
var conv2d_8_256_8_8_to_8_256_8_8_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_8_256_8_8_to_8_256_8_8_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_8_256_8_8_to_8_256_8_8_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_8_256_8_8_to_8_256_8_8_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_8_256_8_8_to_8_256_8_8_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(x: input_8_256_8_8))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 9/22 run " + String(i + 1) + "/100"
}}
conv2d_8_256_8_8_to_8_256_8_8_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 10 {
var conv2d_8_256_8_8_to_8_512_4_4_dtype_float32_params_1_1_2_2_0_0_1_1_1_instance: conv2d_8_256_8_8_to_8_512_4_4_dtype_float32_params_1_1_2_2_0_0_1_1_1? = conv2d_8_256_8_8_to_8_512_4_4_dtype_float32_params_1_1_2_2_0_0_1_1_1()
for i in 0..<100 {
try! conv2d_8_256_8_8_to_8_512_4_4_dtype_float32_params_1_1_2_2_0_0_1_1_1_instance!.prediction(input: conv2d_8_256_8_8_to_8_512_4_4_dtype_float32_params_1_1_2_2_0_0_1_1_1Input(x: input_8_256_8_8))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 10/22 run " + String(i + 1) + "/100"
}}
conv2d_8_256_8_8_to_8_512_4_4_dtype_float32_params_1_1_2_2_0_0_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 11 {
var conv2d_8_256_8_8_to_8_512_4_4_dtype_float32_params_3_3_2_2_1_1_1_1_1_instance: conv2d_8_256_8_8_to_8_512_4_4_dtype_float32_params_3_3_2_2_1_1_1_1_1? = conv2d_8_256_8_8_to_8_512_4_4_dtype_float32_params_3_3_2_2_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_8_256_8_8_to_8_512_4_4_dtype_float32_params_3_3_2_2_1_1_1_1_1_instance!.prediction(input: conv2d_8_256_8_8_to_8_512_4_4_dtype_float32_params_3_3_2_2_1_1_1_1_1Input(x: input_8_256_8_8))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 11/22 run " + String(i + 1) + "/100"
}}
conv2d_8_256_8_8_to_8_512_4_4_dtype_float32_params_3_3_2_2_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 12 {
var conv2d_8_3_32_32_to_8_64_32_32_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_8_3_32_32_to_8_64_32_32_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_8_3_32_32_to_8_64_32_32_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_8_3_32_32_to_8_64_32_32_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_8_3_32_32_to_8_64_32_32_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(x: input_8_3_32_32))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 12/22 run " + String(i + 1) + "/100"
}}
conv2d_8_3_32_32_to_8_64_32_32_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 13 {
var conv2d_8_512_4_4_to_8_512_4_4_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_8_512_4_4_to_8_512_4_4_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_8_512_4_4_to_8_512_4_4_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_8_512_4_4_to_8_512_4_4_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_8_512_4_4_to_8_512_4_4_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(x: input_8_512_4_4))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 13/22 run " + String(i + 1) + "/100"
}}
conv2d_8_512_4_4_to_8_512_4_4_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 14 {
var conv2d_8_64_32_32_to_8_128_16_16_dtype_float32_params_1_1_2_2_0_0_1_1_1_instance: conv2d_8_64_32_32_to_8_128_16_16_dtype_float32_params_1_1_2_2_0_0_1_1_1? = conv2d_8_64_32_32_to_8_128_16_16_dtype_float32_params_1_1_2_2_0_0_1_1_1()
for i in 0..<100 {
try! conv2d_8_64_32_32_to_8_128_16_16_dtype_float32_params_1_1_2_2_0_0_1_1_1_instance!.prediction(input: conv2d_8_64_32_32_to_8_128_16_16_dtype_float32_params_1_1_2_2_0_0_1_1_1Input(x: input_8_64_32_32))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 14/22 run " + String(i + 1) + "/100"
}}
conv2d_8_64_32_32_to_8_128_16_16_dtype_float32_params_1_1_2_2_0_0_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 15 {
var conv2d_8_64_32_32_to_8_128_16_16_dtype_float32_params_3_3_2_2_1_1_1_1_1_instance: conv2d_8_64_32_32_to_8_128_16_16_dtype_float32_params_3_3_2_2_1_1_1_1_1? = conv2d_8_64_32_32_to_8_128_16_16_dtype_float32_params_3_3_2_2_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_8_64_32_32_to_8_128_16_16_dtype_float32_params_3_3_2_2_1_1_1_1_1_instance!.prediction(input: conv2d_8_64_32_32_to_8_128_16_16_dtype_float32_params_3_3_2_2_1_1_1_1_1Input(x: input_8_64_32_32))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 15/22 run " + String(i + 1) + "/100"
}}
conv2d_8_64_32_32_to_8_128_16_16_dtype_float32_params_3_3_2_2_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 16 {
var conv2d_8_64_32_32_to_8_64_32_32_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance: conv2d_8_64_32_32_to_8_64_32_32_dtype_float32_params_3_3_1_1_1_1_1_1_1? = conv2d_8_64_32_32_to_8_64_32_32_dtype_float32_params_3_3_1_1_1_1_1_1_1()
for i in 0..<100 {
try! conv2d_8_64_32_32_to_8_64_32_32_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance!.prediction(input: conv2d_8_64_32_32_to_8_64_32_32_dtype_float32_params_3_3_1_1_1_1_1_1_1Input(x: input_8_64_32_32))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 16/22 run " + String(i + 1) + "/100"
}}
conv2d_8_64_32_32_to_8_64_32_32_dtype_float32_params_3_3_1_1_1_1_1_1_1_instance = nil
usleep(200000)
}

if start...end ~= 17 {
var flatten_8_512_1_1_to_8_512_dtype_float32_instance: flatten_8_512_1_1_to_8_512_dtype_float32? = flatten_8_512_1_1_to_8_512_dtype_float32()
for i in 0..<100 {
try! flatten_8_512_1_1_to_8_512_dtype_float32_instance!.prediction(input: flatten_8_512_1_1_to_8_512_dtype_float32Input(x: input_8_512_1_1))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 17/22 run " + String(i + 1) + "/100"
}}
flatten_8_512_1_1_to_8_512_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 18 {
var linear_8_512_to_8_10_dtype_float32_instance: linear_8_512_to_8_10_dtype_float32? = linear_8_512_to_8_10_dtype_float32()
for i in 0..<100 {
try! linear_8_512_to_8_10_dtype_float32_instance!.prediction(input: linear_8_512_to_8_10_dtype_float32Input(x: input_8_512))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 18/22 run " + String(i + 1) + "/100"
}}
linear_8_512_to_8_10_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 19 {
var relu_8_128_16_16_to_8_128_16_16_dtype_float32_instance: relu_8_128_16_16_to_8_128_16_16_dtype_float32? = relu_8_128_16_16_to_8_128_16_16_dtype_float32()
for i in 0..<100 {
try! relu_8_128_16_16_to_8_128_16_16_dtype_float32_instance!.prediction(input: relu_8_128_16_16_to_8_128_16_16_dtype_float32Input(x: input_8_128_16_16))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 19/22 run " + String(i + 1) + "/100"
}}
relu_8_128_16_16_to_8_128_16_16_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 20 {
var relu_8_256_8_8_to_8_256_8_8_dtype_float32_instance: relu_8_256_8_8_to_8_256_8_8_dtype_float32? = relu_8_256_8_8_to_8_256_8_8_dtype_float32()
for i in 0..<100 {
try! relu_8_256_8_8_to_8_256_8_8_dtype_float32_instance!.prediction(input: relu_8_256_8_8_to_8_256_8_8_dtype_float32Input(x: input_8_256_8_8))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 20/22 run " + String(i + 1) + "/100"
}}
relu_8_256_8_8_to_8_256_8_8_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 21 {
var relu_8_512_4_4_to_8_512_4_4_dtype_float32_instance: relu_8_512_4_4_to_8_512_4_4_dtype_float32? = relu_8_512_4_4_to_8_512_4_4_dtype_float32()
for i in 0..<100 {
try! relu_8_512_4_4_to_8_512_4_4_dtype_float32_instance!.prediction(input: relu_8_512_4_4_to_8_512_4_4_dtype_float32Input(x: input_8_512_4_4))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 21/22 run " + String(i + 1) + "/100"
}}
relu_8_512_4_4_to_8_512_4_4_dtype_float32_instance = nil
usleep(200000)
}

if start...end ~= 22 {
var relu_8_64_32_32_to_8_64_32_32_dtype_float32_instance: relu_8_64_32_32_to_8_64_32_32_dtype_float32? = relu_8_64_32_32_to_8_64_32_32_dtype_float32()
for i in 0..<100 {
try! relu_8_64_32_32_to_8_64_32_32_dtype_float32_instance!.prediction(input: relu_8_64_32_32_to_8_64_32_32_dtype_float32Input(x: input_8_64_32_32))
usleep(10000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 22/22 run " + String(i + 1) + "/100"
}}
relu_8_64_32_32_to_8_64_32_32_dtype_float32_instance = nil
usleep(200000)
}


            }

            do {
                let data_320 = Data(repeating: 1, count: 320)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_320_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_320)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 1/6 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_16384 = Data(repeating: 1, count: 16384)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_16384_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_16384)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 2/6 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_262144 = Data(repeating: 1, count: 262144)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_262144_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_262144)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 3/6 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_524288 = Data(repeating: 1, count: 524288)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_524288_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_524288)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 4/6 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_1048576 = Data(repeating: 1, count: 1048576)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_1048576_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_1048576)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 5/6 run " + String(i + 1) + "/100"
}}
usleep(200000)

let data_2097152 = Data(repeating: 1, count: 2097152)
for i in 0..<100 {
let targetURL = tempDirectoryURL.appendingPathComponent("size_2097152_run_" + String(i)).appendingPathExtension("txy")
FileManager.default.createFile(atPath: targetURL.path, contents: Data())
let fileHandle = try FileHandle(forWritingTo: targetURL)
fileHandle.write(data_2097152)
try fileHandle.synchronize()
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pageout size 6/6 run " + String(i + 1) + "/100"
}}
usleep(200000)




for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_320_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 320)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 1/6 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_16384_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 16384)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 2/6 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_262144_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 262144)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 3/6 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_524288_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 524288)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 4/6 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_1048576_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 1048576)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 5/6 run " + String(i + 1) + "/100"
}}}
usleep(200000)

for i in 0..<100 {
try autoreleasepool {
let targetURL = tempDirectoryURL.appendingPathComponent("size_2097152_run_" + String(i)).appendingPathExtension("txy")
let fileHandle = try FileHandle(forReadingFrom: targetURL)
try fileHandle.read(upToCount: 2097152)
fileHandle.closeFile()
usleep(5000)
DispatchQueue.main.async {
self.answerLabel.text = "pagein size 6/6 run " + String(i + 1) + "/100"
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


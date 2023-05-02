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
            let conv2d_2_1280_12_12_to_2_1280_12_12_dtype_float32_instance = conv2d_2_1280_12_12_to_2_1280_12_12_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1280, 12, 12], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1280 {
for d2 in 0..<12 {
for d3 in 0..<12 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! conv2d_2_1280_12_12_to_2_1280_12_12_dtype_float32_instance.prediction(input: conv2d_2_1280_12_12_to_2_1280_12_12_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 1/86 run " + String(i) + "/100"
}}
usleep(200000)

let conv2d_2_1280_24_24_to_2_1280_12_12_dtype_float32_instance = conv2d_2_1280_24_24_to_2_1280_12_12_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1280, 24, 24], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1280 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! conv2d_2_1280_24_24_to_2_1280_12_12_dtype_float32_instance.prediction(input: conv2d_2_1280_24_24_to_2_1280_12_12_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 2/86 run " + String(i) + "/100"
}}
usleep(200000)

let conv2d_2_1280_24_24_to_2_1280_24_24_dtype_float32_instance = conv2d_2_1280_24_24_to_2_1280_24_24_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1280, 24, 24], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1280 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! conv2d_2_1280_24_24_to_2_1280_24_24_dtype_float32_instance.prediction(input: conv2d_2_1280_24_24_to_2_1280_24_24_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 3/86 run " + String(i) + "/100"
}}
usleep(200000)

let conv2d_2_1280_48_48_to_2_1280_48_48_dtype_float32_instance = conv2d_2_1280_48_48_to_2_1280_48_48_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1280, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1280 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! conv2d_2_1280_48_48_to_2_1280_48_48_dtype_float32_instance.prediction(input: conv2d_2_1280_48_48_to_2_1280_48_48_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 4/86 run " + String(i) + "/100"
}}
usleep(200000)

let conv2d_2_1280_48_48_to_2_640_48_48_dtype_float32_instance = conv2d_2_1280_48_48_to_2_640_48_48_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1280, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1280 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! conv2d_2_1280_48_48_to_2_640_48_48_dtype_float32_instance.prediction(input: conv2d_2_1280_48_48_to_2_640_48_48_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 5/86 run " + String(i) + "/100"
}}
usleep(200000)

let conv2d_2_1920_24_24_to_2_1280_24_24_dtype_float32_instance = conv2d_2_1920_24_24_to_2_1280_24_24_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1920, 24, 24], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1920 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! conv2d_2_1920_24_24_to_2_1280_24_24_dtype_float32_instance.prediction(input: conv2d_2_1920_24_24_to_2_1280_24_24_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 6/86 run " + String(i) + "/100"
}}
usleep(200000)

let conv2d_2_1920_48_48_to_2_640_48_48_dtype_float32_instance = conv2d_2_1920_48_48_to_2_640_48_48_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1920, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1920 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! conv2d_2_1920_48_48_to_2_640_48_48_dtype_float32_instance.prediction(input: conv2d_2_1920_48_48_to_2_640_48_48_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 7/86 run " + String(i) + "/100"
}}
usleep(200000)

let conv2d_2_2560_12_12_to_2_1280_12_12_dtype_float32_instance = conv2d_2_2560_12_12_to_2_1280_12_12_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 2560, 12, 12], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<2560 {
for d2 in 0..<12 {
for d3 in 0..<12 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! conv2d_2_2560_12_12_to_2_1280_12_12_dtype_float32_instance.prediction(input: conv2d_2_2560_12_12_to_2_1280_12_12_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 8/86 run " + String(i) + "/100"
}}
usleep(200000)

let conv2d_2_2560_24_24_to_2_1280_24_24_dtype_float32_instance = conv2d_2_2560_24_24_to_2_1280_24_24_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 2560, 24, 24], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<2560 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! conv2d_2_2560_24_24_to_2_1280_24_24_dtype_float32_instance.prediction(input: conv2d_2_2560_24_24_to_2_1280_24_24_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 9/86 run " + String(i) + "/100"
}}
usleep(200000)

let conv2d_2_320_48_48_to_2_640_48_48_dtype_float32_instance = conv2d_2_320_48_48_to_2_640_48_48_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 320, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<320 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! conv2d_2_320_48_48_to_2_640_48_48_dtype_float32_instance.prediction(input: conv2d_2_320_48_48_to_2_640_48_48_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 10/86 run " + String(i) + "/100"
}}
usleep(200000)

let conv2d_2_320_96_96_to_2_320_48_48_dtype_float32_instance = conv2d_2_320_96_96_to_2_320_48_48_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 320, 96, 96], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<320 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! conv2d_2_320_96_96_to_2_320_48_48_dtype_float32_instance.prediction(input: conv2d_2_320_96_96_to_2_320_48_48_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 11/86 run " + String(i) + "/100"
}}
usleep(200000)

let conv2d_2_320_96_96_to_2_320_96_96_dtype_float32_instance = conv2d_2_320_96_96_to_2_320_96_96_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 320, 96, 96], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<320 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! conv2d_2_320_96_96_to_2_320_96_96_dtype_float32_instance.prediction(input: conv2d_2_320_96_96_to_2_320_96_96_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 12/86 run " + String(i) + "/100"
}}
usleep(200000)

let conv2d_2_320_96_96_to_2_4_96_96_dtype_float32_instance = conv2d_2_320_96_96_to_2_4_96_96_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 320, 96, 96], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<320 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! conv2d_2_320_96_96_to_2_4_96_96_dtype_float32_instance.prediction(input: conv2d_2_320_96_96_to_2_4_96_96_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 13/86 run " + String(i) + "/100"
}}
usleep(200000)

let conv2d_2_4_96_96_to_2_320_96_96_dtype_float32_instance = conv2d_2_4_96_96_to_2_320_96_96_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 4, 96, 96], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<4 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! conv2d_2_4_96_96_to_2_320_96_96_dtype_float32_instance.prediction(input: conv2d_2_4_96_96_to_2_320_96_96_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 14/86 run " + String(i) + "/100"
}}
usleep(200000)

let conv2d_2_640_24_24_to_2_1280_24_24_dtype_float32_instance = conv2d_2_640_24_24_to_2_1280_24_24_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 640, 24, 24], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<640 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! conv2d_2_640_24_24_to_2_1280_24_24_dtype_float32_instance.prediction(input: conv2d_2_640_24_24_to_2_1280_24_24_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 15/86 run " + String(i) + "/100"
}}
usleep(200000)

let conv2d_2_640_48_48_to_2_640_24_24_dtype_float32_instance = conv2d_2_640_48_48_to_2_640_24_24_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 640, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<640 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! conv2d_2_640_48_48_to_2_640_24_24_dtype_float32_instance.prediction(input: conv2d_2_640_48_48_to_2_640_24_24_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 16/86 run " + String(i) + "/100"
}}
usleep(200000)

let conv2d_2_640_48_48_to_2_640_48_48_dtype_float32_instance = conv2d_2_640_48_48_to_2_640_48_48_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 640, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<640 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! conv2d_2_640_48_48_to_2_640_48_48_dtype_float32_instance.prediction(input: conv2d_2_640_48_48_to_2_640_48_48_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 17/86 run " + String(i) + "/100"
}}
usleep(200000)

let conv2d_2_640_96_96_to_2_320_96_96_dtype_float32_instance = conv2d_2_640_96_96_to_2_320_96_96_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 640, 96, 96], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<640 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! conv2d_2_640_96_96_to_2_320_96_96_dtype_float32_instance.prediction(input: conv2d_2_640_96_96_to_2_320_96_96_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 18/86 run " + String(i) + "/100"
}}
usleep(200000)

let conv2d_2_640_96_96_to_2_640_96_96_dtype_float32_instance = conv2d_2_640_96_96_to_2_640_96_96_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 640, 96, 96], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<640 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! conv2d_2_640_96_96_to_2_640_96_96_dtype_float32_instance.prediction(input: conv2d_2_640_96_96_to_2_640_96_96_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 19/86 run " + String(i) + "/100"
}}
usleep(200000)

let conv2d_2_960_48_48_to_2_640_48_48_dtype_float32_instance = conv2d_2_960_48_48_to_2_640_48_48_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 960, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<960 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! conv2d_2_960_48_48_to_2_640_48_48_dtype_float32_instance.prediction(input: conv2d_2_960_48_48_to_2_640_48_48_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 20/86 run " + String(i) + "/100"
}}
usleep(200000)

let conv2d_2_960_96_96_to_2_320_96_96_dtype_float32_instance = conv2d_2_960_96_96_to_2_320_96_96_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 960, 96, 96], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<960 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! conv2d_2_960_96_96_to_2_320_96_96_dtype_float32_instance.prediction(input: conv2d_2_960_96_96_to_2_320_96_96_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 21/86 run " + String(i) + "/100"
}}
usleep(200000)

let dropout_2_1280_12_12_to_2_1280_12_12_dtype_float32_instance = dropout_2_1280_12_12_to_2_1280_12_12_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1280, 12, 12], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1280 {
for d2 in 0..<12 {
for d3 in 0..<12 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! dropout_2_1280_12_12_to_2_1280_12_12_dtype_float32_instance.prediction(input: dropout_2_1280_12_12_to_2_1280_12_12_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 22/86 run " + String(i) + "/100"
}}
usleep(200000)

let dropout_2_1280_24_24_to_2_1280_24_24_dtype_float32_instance = dropout_2_1280_24_24_to_2_1280_24_24_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1280, 24, 24], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1280 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! dropout_2_1280_24_24_to_2_1280_24_24_dtype_float32_instance.prediction(input: dropout_2_1280_24_24_to_2_1280_24_24_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 23/86 run " + String(i) + "/100"
}}
usleep(200000)

let dropout_2_144_1280_to_2_144_1280_dtype_float32_instance = dropout_2_144_1280_to_2_144_1280_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 144, 1280], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<144 {
for d2 in 0..<1280 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! dropout_2_144_1280_to_2_144_1280_dtype_float32_instance.prediction(input: dropout_2_144_1280_to_2_144_1280_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 24/86 run " + String(i) + "/100"
}}
usleep(200000)

let dropout_2_144_5120_to_2_144_5120_dtype_float32_instance = dropout_2_144_5120_to_2_144_5120_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 144, 5120], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<144 {
for d2 in 0..<5120 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! dropout_2_144_5120_to_2_144_5120_dtype_float32_instance.prediction(input: dropout_2_144_5120_to_2_144_5120_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 25/86 run " + String(i) + "/100"
}}
usleep(200000)

let dropout_2_2304_2560_to_2_2304_2560_dtype_float32_instance = dropout_2_2304_2560_to_2_2304_2560_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 2304, 2560], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<2304 {
for d2 in 0..<2560 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! dropout_2_2304_2560_to_2_2304_2560_dtype_float32_instance.prediction(input: dropout_2_2304_2560_to_2_2304_2560_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 26/86 run " + String(i) + "/100"
}}
usleep(200000)

let dropout_2_2304_640_to_2_2304_640_dtype_float32_instance = dropout_2_2304_640_to_2_2304_640_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 2304, 640], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<2304 {
for d2 in 0..<640 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! dropout_2_2304_640_to_2_2304_640_dtype_float32_instance.prediction(input: dropout_2_2304_640_to_2_2304_640_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 27/86 run " + String(i) + "/100"
}}
usleep(200000)

let dropout_2_320_96_96_to_2_320_96_96_dtype_float32_instance = dropout_2_320_96_96_to_2_320_96_96_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 320, 96, 96], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<320 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! dropout_2_320_96_96_to_2_320_96_96_dtype_float32_instance.prediction(input: dropout_2_320_96_96_to_2_320_96_96_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 28/86 run " + String(i) + "/100"
}}
usleep(200000)

let dropout_2_576_1280_to_2_576_1280_dtype_float32_instance = dropout_2_576_1280_to_2_576_1280_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 576, 1280], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<576 {
for d2 in 0..<1280 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! dropout_2_576_1280_to_2_576_1280_dtype_float32_instance.prediction(input: dropout_2_576_1280_to_2_576_1280_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 29/86 run " + String(i) + "/100"
}}
usleep(200000)

let dropout_2_576_5120_to_2_576_5120_dtype_float32_instance = dropout_2_576_5120_to_2_576_5120_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 576, 5120], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<576 {
for d2 in 0..<5120 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! dropout_2_576_5120_to_2_576_5120_dtype_float32_instance.prediction(input: dropout_2_576_5120_to_2_576_5120_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 30/86 run " + String(i) + "/100"
}}
usleep(200000)

let dropout_2_640_48_48_to_2_640_48_48_dtype_float32_instance = dropout_2_640_48_48_to_2_640_48_48_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 640, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<640 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! dropout_2_640_48_48_to_2_640_48_48_dtype_float32_instance.prediction(input: dropout_2_640_48_48_to_2_640_48_48_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 31/86 run " + String(i) + "/100"
}}
usleep(200000)

let dropout_2_9216_1280_to_2_9216_1280_dtype_float32_instance = dropout_2_9216_1280_to_2_9216_1280_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 9216, 1280], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<9216 {
for d2 in 0..<1280 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! dropout_2_9216_1280_to_2_9216_1280_dtype_float32_instance.prediction(input: dropout_2_9216_1280_to_2_9216_1280_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 32/86 run " + String(i) + "/100"
}}
usleep(200000)

let dropout_2_9216_320_to_2_9216_320_dtype_float32_instance = dropout_2_9216_320_to_2_9216_320_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 9216, 320], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<9216 {
for d2 in 0..<320 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! dropout_2_9216_320_to_2_9216_320_dtype_float32_instance.prediction(input: dropout_2_9216_320_to_2_9216_320_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 33/86 run " + String(i) + "/100"
}}
usleep(200000)

let groupnorm_2_1280_12_12_to_2_1280_12_12_dtype_float32_instance = groupnorm_2_1280_12_12_to_2_1280_12_12_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1280, 12, 12], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1280 {
for d2 in 0..<12 {
for d3 in 0..<12 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! groupnorm_2_1280_12_12_to_2_1280_12_12_dtype_float32_instance.prediction(input: groupnorm_2_1280_12_12_to_2_1280_12_12_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 34/86 run " + String(i) + "/100"
}}
usleep(200000)

let groupnorm_2_1280_24_24_to_2_1280_24_24_dtype_float32_instance = groupnorm_2_1280_24_24_to_2_1280_24_24_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1280, 24, 24], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1280 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! groupnorm_2_1280_24_24_to_2_1280_24_24_dtype_float32_instance.prediction(input: groupnorm_2_1280_24_24_to_2_1280_24_24_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 35/86 run " + String(i) + "/100"
}}
usleep(200000)

let groupnorm_2_1280_48_48_to_2_1280_48_48_dtype_float32_instance = groupnorm_2_1280_48_48_to_2_1280_48_48_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1280, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1280 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! groupnorm_2_1280_48_48_to_2_1280_48_48_dtype_float32_instance.prediction(input: groupnorm_2_1280_48_48_to_2_1280_48_48_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 36/86 run " + String(i) + "/100"
}}
usleep(200000)

let groupnorm_2_1920_24_24_to_2_1920_24_24_dtype_float32_instance = groupnorm_2_1920_24_24_to_2_1920_24_24_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1920, 24, 24], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1920 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! groupnorm_2_1920_24_24_to_2_1920_24_24_dtype_float32_instance.prediction(input: groupnorm_2_1920_24_24_to_2_1920_24_24_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 37/86 run " + String(i) + "/100"
}}
usleep(200000)

let groupnorm_2_1920_48_48_to_2_1920_48_48_dtype_float32_instance = groupnorm_2_1920_48_48_to_2_1920_48_48_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1920, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1920 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! groupnorm_2_1920_48_48_to_2_1920_48_48_dtype_float32_instance.prediction(input: groupnorm_2_1920_48_48_to_2_1920_48_48_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 38/86 run " + String(i) + "/100"
}}
usleep(200000)

let groupnorm_2_2560_12_12_to_2_2560_12_12_dtype_float32_instance = groupnorm_2_2560_12_12_to_2_2560_12_12_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 2560, 12, 12], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<2560 {
for d2 in 0..<12 {
for d3 in 0..<12 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! groupnorm_2_2560_12_12_to_2_2560_12_12_dtype_float32_instance.prediction(input: groupnorm_2_2560_12_12_to_2_2560_12_12_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 39/86 run " + String(i) + "/100"
}}
usleep(200000)

let groupnorm_2_2560_24_24_to_2_2560_24_24_dtype_float32_instance = groupnorm_2_2560_24_24_to_2_2560_24_24_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 2560, 24, 24], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<2560 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! groupnorm_2_2560_24_24_to_2_2560_24_24_dtype_float32_instance.prediction(input: groupnorm_2_2560_24_24_to_2_2560_24_24_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 40/86 run " + String(i) + "/100"
}}
usleep(200000)

let groupnorm_2_320_48_48_to_2_320_48_48_dtype_float32_instance = groupnorm_2_320_48_48_to_2_320_48_48_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 320, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<320 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! groupnorm_2_320_48_48_to_2_320_48_48_dtype_float32_instance.prediction(input: groupnorm_2_320_48_48_to_2_320_48_48_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 41/86 run " + String(i) + "/100"
}}
usleep(200000)

let groupnorm_2_320_96_96_to_2_320_96_96_dtype_float32_instance = groupnorm_2_320_96_96_to_2_320_96_96_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 320, 96, 96], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<320 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! groupnorm_2_320_96_96_to_2_320_96_96_dtype_float32_instance.prediction(input: groupnorm_2_320_96_96_to_2_320_96_96_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 42/86 run " + String(i) + "/100"
}}
usleep(200000)

let groupnorm_2_640_24_24_to_2_640_24_24_dtype_float32_instance = groupnorm_2_640_24_24_to_2_640_24_24_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 640, 24, 24], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<640 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! groupnorm_2_640_24_24_to_2_640_24_24_dtype_float32_instance.prediction(input: groupnorm_2_640_24_24_to_2_640_24_24_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 43/86 run " + String(i) + "/100"
}}
usleep(200000)

let groupnorm_2_640_48_48_to_2_640_48_48_dtype_float32_instance = groupnorm_2_640_48_48_to_2_640_48_48_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 640, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<640 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! groupnorm_2_640_48_48_to_2_640_48_48_dtype_float32_instance.prediction(input: groupnorm_2_640_48_48_to_2_640_48_48_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 44/86 run " + String(i) + "/100"
}}
usleep(200000)

let groupnorm_2_640_96_96_to_2_640_96_96_dtype_float32_instance = groupnorm_2_640_96_96_to_2_640_96_96_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 640, 96, 96], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<640 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! groupnorm_2_640_96_96_to_2_640_96_96_dtype_float32_instance.prediction(input: groupnorm_2_640_96_96_to_2_640_96_96_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 45/86 run " + String(i) + "/100"
}}
usleep(200000)

let groupnorm_2_960_48_48_to_2_960_48_48_dtype_float32_instance = groupnorm_2_960_48_48_to_2_960_48_48_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 960, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<960 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! groupnorm_2_960_48_48_to_2_960_48_48_dtype_float32_instance.prediction(input: groupnorm_2_960_48_48_to_2_960_48_48_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 46/86 run " + String(i) + "/100"
}}
usleep(200000)

let groupnorm_2_960_96_96_to_2_960_96_96_dtype_float32_instance = groupnorm_2_960_96_96_to_2_960_96_96_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 960, 96, 96], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<960 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! groupnorm_2_960_96_96_to_2_960_96_96_dtype_float32_instance.prediction(input: groupnorm_2_960_96_96_to_2_960_96_96_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 47/86 run " + String(i) + "/100"
}}
usleep(200000)

let layernorm_2_144_1280_to_2_144_1280_dtype_float32_instance = layernorm_2_144_1280_to_2_144_1280_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 144, 1280], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<144 {
for d2 in 0..<1280 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! layernorm_2_144_1280_to_2_144_1280_dtype_float32_instance.prediction(input: layernorm_2_144_1280_to_2_144_1280_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 48/86 run " + String(i) + "/100"
}}
usleep(200000)

let layernorm_2_2304_640_to_2_2304_640_dtype_float32_instance = layernorm_2_2304_640_to_2_2304_640_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 2304, 640], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<2304 {
for d2 in 0..<640 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! layernorm_2_2304_640_to_2_2304_640_dtype_float32_instance.prediction(input: layernorm_2_2304_640_to_2_2304_640_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 49/86 run " + String(i) + "/100"
}}
usleep(200000)

let layernorm_2_576_1280_to_2_576_1280_dtype_float32_instance = layernorm_2_576_1280_to_2_576_1280_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 576, 1280], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<576 {
for d2 in 0..<1280 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! layernorm_2_576_1280_to_2_576_1280_dtype_float32_instance.prediction(input: layernorm_2_576_1280_to_2_576_1280_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 50/86 run " + String(i) + "/100"
}}
usleep(200000)

let layernorm_2_9216_320_to_2_9216_320_dtype_float32_instance = layernorm_2_9216_320_to_2_9216_320_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 9216, 320], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<9216 {
for d2 in 0..<320 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! layernorm_2_9216_320_to_2_9216_320_dtype_float32_instance.prediction(input: layernorm_2_9216_320_to_2_9216_320_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 51/86 run " + String(i) + "/100"
}}
usleep(200000)

let linear_2_1280_to_2_1280_dtype_float32_instance = linear_2_1280_to_2_1280_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1280], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1280 {
input[[d0,d1] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}
let prediction = try! linear_2_1280_to_2_1280_dtype_float32_instance.prediction(input: linear_2_1280_to_2_1280_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 52/86 run " + String(i) + "/100"
}}
usleep(200000)

let linear_2_1280_to_2_320_dtype_float32_instance = linear_2_1280_to_2_320_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1280], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1280 {
input[[d0,d1] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}
let prediction = try! linear_2_1280_to_2_320_dtype_float32_instance.prediction(input: linear_2_1280_to_2_320_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 53/86 run " + String(i) + "/100"
}}
usleep(200000)

let linear_2_1280_to_2_640_dtype_float32_instance = linear_2_1280_to_2_640_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1280], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1280 {
input[[d0,d1] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}
let prediction = try! linear_2_1280_to_2_640_dtype_float32_instance.prediction(input: linear_2_1280_to_2_640_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 54/86 run " + String(i) + "/100"
}}
usleep(200000)

let linear_2_144_1280_to_2_144_10240_dtype_float32_instance = linear_2_144_1280_to_2_144_10240_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 144, 1280], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<144 {
for d2 in 0..<1280 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! linear_2_144_1280_to_2_144_10240_dtype_float32_instance.prediction(input: linear_2_144_1280_to_2_144_10240_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 55/86 run " + String(i) + "/100"
}}
usleep(200000)

let linear_2_144_1280_to_2_144_1280_dtype_float32_instance = linear_2_144_1280_to_2_144_1280_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 144, 1280], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<144 {
for d2 in 0..<1280 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! linear_2_144_1280_to_2_144_1280_dtype_float32_instance.prediction(input: linear_2_144_1280_to_2_144_1280_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 56/86 run " + String(i) + "/100"
}}
usleep(200000)

let linear_2_144_5120_to_2_144_1280_dtype_float32_instance = linear_2_144_5120_to_2_144_1280_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 144, 5120], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<144 {
for d2 in 0..<5120 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! linear_2_144_5120_to_2_144_1280_dtype_float32_instance.prediction(input: linear_2_144_5120_to_2_144_1280_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 57/86 run " + String(i) + "/100"
}}
usleep(200000)

let linear_2_2304_2560_to_2_2304_640_dtype_float32_instance = linear_2_2304_2560_to_2_2304_640_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 2304, 2560], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<2304 {
for d2 in 0..<2560 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! linear_2_2304_2560_to_2_2304_640_dtype_float32_instance.prediction(input: linear_2_2304_2560_to_2_2304_640_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 58/86 run " + String(i) + "/100"
}}
usleep(200000)

let linear_2_2304_640_to_2_2304_5120_dtype_float32_instance = linear_2_2304_640_to_2_2304_5120_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 2304, 640], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<2304 {
for d2 in 0..<640 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! linear_2_2304_640_to_2_2304_5120_dtype_float32_instance.prediction(input: linear_2_2304_640_to_2_2304_5120_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 59/86 run " + String(i) + "/100"
}}
usleep(200000)

let linear_2_2304_640_to_2_2304_640_dtype_float32_instance = linear_2_2304_640_to_2_2304_640_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 2304, 640], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<2304 {
for d2 in 0..<640 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! linear_2_2304_640_to_2_2304_640_dtype_float32_instance.prediction(input: linear_2_2304_640_to_2_2304_640_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 60/86 run " + String(i) + "/100"
}}
usleep(200000)

let linear_2_320_to_2_1280_dtype_float32_instance = linear_2_320_to_2_1280_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 320], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<320 {
input[[d0,d1] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}
let prediction = try! linear_2_320_to_2_1280_dtype_float32_instance.prediction(input: linear_2_320_to_2_1280_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 61/86 run " + String(i) + "/100"
}}
usleep(200000)

let linear_2_576_1280_to_2_576_10240_dtype_float32_instance = linear_2_576_1280_to_2_576_10240_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 576, 1280], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<576 {
for d2 in 0..<1280 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! linear_2_576_1280_to_2_576_10240_dtype_float32_instance.prediction(input: linear_2_576_1280_to_2_576_10240_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 62/86 run " + String(i) + "/100"
}}
usleep(200000)

let linear_2_576_1280_to_2_576_1280_dtype_float32_instance = linear_2_576_1280_to_2_576_1280_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 576, 1280], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<576 {
for d2 in 0..<1280 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! linear_2_576_1280_to_2_576_1280_dtype_float32_instance.prediction(input: linear_2_576_1280_to_2_576_1280_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 63/86 run " + String(i) + "/100"
}}
usleep(200000)

let linear_2_576_5120_to_2_576_1280_dtype_float32_instance = linear_2_576_5120_to_2_576_1280_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 576, 5120], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<576 {
for d2 in 0..<5120 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! linear_2_576_5120_to_2_576_1280_dtype_float32_instance.prediction(input: linear_2_576_5120_to_2_576_1280_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 64/86 run " + String(i) + "/100"
}}
usleep(200000)

let linear_2_77_1024_to_2_77_1280_dtype_float32_instance = linear_2_77_1024_to_2_77_1280_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 77, 1024], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<77 {
for d2 in 0..<1024 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! linear_2_77_1024_to_2_77_1280_dtype_float32_instance.prediction(input: linear_2_77_1024_to_2_77_1280_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 65/86 run " + String(i) + "/100"
}}
usleep(200000)

let linear_2_77_1024_to_2_77_320_dtype_float32_instance = linear_2_77_1024_to_2_77_320_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 77, 1024], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<77 {
for d2 in 0..<1024 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! linear_2_77_1024_to_2_77_320_dtype_float32_instance.prediction(input: linear_2_77_1024_to_2_77_320_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 66/86 run " + String(i) + "/100"
}}
usleep(200000)

let linear_2_77_1024_to_2_77_640_dtype_float32_instance = linear_2_77_1024_to_2_77_640_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 77, 1024], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<77 {
for d2 in 0..<1024 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! linear_2_77_1024_to_2_77_640_dtype_float32_instance.prediction(input: linear_2_77_1024_to_2_77_640_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 67/86 run " + String(i) + "/100"
}}
usleep(200000)

let linear_2_9216_1280_to_2_9216_320_dtype_float32_instance = linear_2_9216_1280_to_2_9216_320_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 9216, 1280], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<9216 {
for d2 in 0..<1280 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! linear_2_9216_1280_to_2_9216_320_dtype_float32_instance.prediction(input: linear_2_9216_1280_to_2_9216_320_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 68/86 run " + String(i) + "/100"
}}
usleep(200000)

let linear_2_9216_320_to_2_9216_2560_dtype_float32_instance = linear_2_9216_320_to_2_9216_2560_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 9216, 320], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<9216 {
for d2 in 0..<320 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! linear_2_9216_320_to_2_9216_2560_dtype_float32_instance.prediction(input: linear_2_9216_320_to_2_9216_2560_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 69/86 run " + String(i) + "/100"
}}
usleep(200000)

let linear_2_9216_320_to_2_9216_320_dtype_float32_instance = linear_2_9216_320_to_2_9216_320_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 9216, 320], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<9216 {
for d2 in 0..<320 {
input[[d0,d1,d2] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}
let prediction = try! linear_2_9216_320_to_2_9216_320_dtype_float32_instance.prediction(input: linear_2_9216_320_to_2_9216_320_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 70/86 run " + String(i) + "/100"
}}
usleep(200000)

let silu_2_1280_12_12_to_2_1280_12_12_dtype_float32_instance = silu_2_1280_12_12_to_2_1280_12_12_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1280, 12, 12], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1280 {
for d2 in 0..<12 {
for d3 in 0..<12 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! silu_2_1280_12_12_to_2_1280_12_12_dtype_float32_instance.prediction(input: silu_2_1280_12_12_to_2_1280_12_12_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 71/86 run " + String(i) + "/100"
}}
usleep(200000)

let silu_2_1280_24_24_to_2_1280_24_24_dtype_float32_instance = silu_2_1280_24_24_to_2_1280_24_24_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1280, 24, 24], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1280 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! silu_2_1280_24_24_to_2_1280_24_24_dtype_float32_instance.prediction(input: silu_2_1280_24_24_to_2_1280_24_24_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 72/86 run " + String(i) + "/100"
}}
usleep(200000)

let silu_2_1280_48_48_to_2_1280_48_48_dtype_float32_instance = silu_2_1280_48_48_to_2_1280_48_48_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1280, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1280 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! silu_2_1280_48_48_to_2_1280_48_48_dtype_float32_instance.prediction(input: silu_2_1280_48_48_to_2_1280_48_48_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 73/86 run " + String(i) + "/100"
}}
usleep(200000)

let silu_2_1280_to_2_1280_dtype_float32_instance = silu_2_1280_to_2_1280_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1280], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1280 {
input[[d0,d1] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}
let prediction = try! silu_2_1280_to_2_1280_dtype_float32_instance.prediction(input: silu_2_1280_to_2_1280_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 74/86 run " + String(i) + "/100"
}}
usleep(200000)

let silu_2_1920_24_24_to_2_1920_24_24_dtype_float32_instance = silu_2_1920_24_24_to_2_1920_24_24_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1920, 24, 24], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1920 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! silu_2_1920_24_24_to_2_1920_24_24_dtype_float32_instance.prediction(input: silu_2_1920_24_24_to_2_1920_24_24_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 75/86 run " + String(i) + "/100"
}}
usleep(200000)

let silu_2_1920_48_48_to_2_1920_48_48_dtype_float32_instance = silu_2_1920_48_48_to_2_1920_48_48_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 1920, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<1920 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! silu_2_1920_48_48_to_2_1920_48_48_dtype_float32_instance.prediction(input: silu_2_1920_48_48_to_2_1920_48_48_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 76/86 run " + String(i) + "/100"
}}
usleep(200000)

let silu_2_2560_12_12_to_2_2560_12_12_dtype_float32_instance = silu_2_2560_12_12_to_2_2560_12_12_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 2560, 12, 12], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<2560 {
for d2 in 0..<12 {
for d3 in 0..<12 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! silu_2_2560_12_12_to_2_2560_12_12_dtype_float32_instance.prediction(input: silu_2_2560_12_12_to_2_2560_12_12_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 77/86 run " + String(i) + "/100"
}}
usleep(200000)

let silu_2_2560_24_24_to_2_2560_24_24_dtype_float32_instance = silu_2_2560_24_24_to_2_2560_24_24_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 2560, 24, 24], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<2560 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! silu_2_2560_24_24_to_2_2560_24_24_dtype_float32_instance.prediction(input: silu_2_2560_24_24_to_2_2560_24_24_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 78/86 run " + String(i) + "/100"
}}
usleep(200000)

let silu_2_320_48_48_to_2_320_48_48_dtype_float32_instance = silu_2_320_48_48_to_2_320_48_48_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 320, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<320 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! silu_2_320_48_48_to_2_320_48_48_dtype_float32_instance.prediction(input: silu_2_320_48_48_to_2_320_48_48_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 79/86 run " + String(i) + "/100"
}}
usleep(200000)

let silu_2_320_96_96_to_2_320_96_96_dtype_float32_instance = silu_2_320_96_96_to_2_320_96_96_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 320, 96, 96], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<320 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! silu_2_320_96_96_to_2_320_96_96_dtype_float32_instance.prediction(input: silu_2_320_96_96_to_2_320_96_96_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 80/86 run " + String(i) + "/100"
}}
usleep(200000)

let silu_2_640_24_24_to_2_640_24_24_dtype_float32_instance = silu_2_640_24_24_to_2_640_24_24_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 640, 24, 24], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<640 {
for d2 in 0..<24 {
for d3 in 0..<24 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! silu_2_640_24_24_to_2_640_24_24_dtype_float32_instance.prediction(input: silu_2_640_24_24_to_2_640_24_24_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 81/86 run " + String(i) + "/100"
}}
usleep(200000)

let silu_2_640_48_48_to_2_640_48_48_dtype_float32_instance = silu_2_640_48_48_to_2_640_48_48_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 640, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<640 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! silu_2_640_48_48_to_2_640_48_48_dtype_float32_instance.prediction(input: silu_2_640_48_48_to_2_640_48_48_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 82/86 run " + String(i) + "/100"
}}
usleep(200000)

let silu_2_640_96_96_to_2_640_96_96_dtype_float32_instance = silu_2_640_96_96_to_2_640_96_96_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 640, 96, 96], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<640 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! silu_2_640_96_96_to_2_640_96_96_dtype_float32_instance.prediction(input: silu_2_640_96_96_to_2_640_96_96_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 83/86 run " + String(i) + "/100"
}}
usleep(200000)

let silu_2_960_48_48_to_2_960_48_48_dtype_float32_instance = silu_2_960_48_48_to_2_960_48_48_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 960, 48, 48], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<960 {
for d2 in 0..<48 {
for d3 in 0..<48 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! silu_2_960_48_48_to_2_960_48_48_dtype_float32_instance.prediction(input: silu_2_960_48_48_to_2_960_48_48_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 84/86 run " + String(i) + "/100"
}}
usleep(200000)

let silu_2_960_96_96_to_2_960_96_96_dtype_float32_instance = silu_2_960_96_96_to_2_960_96_96_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2, 960, 96, 96], dataType: .float32)
for d0 in 0..<2 {
for d1 in 0..<960 {
for d2 in 0..<96 {
for d3 in 0..<96 {
input[[d0,d1,d2,d3] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}}}}
let prediction = try! silu_2_960_96_96_to_2_960_96_96_dtype_float32_instance.prediction(input: silu_2_960_96_96_to_2_960_96_96_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 85/86 run " + String(i) + "/100"
}}
usleep(200000)

let timesteps_2_to_2_320_dtype_float32_instance = timesteps_2_to_2_320_dtype_float32()
for i in 0..<100 {
let input = try! MLMultiArray(shape: [2], dataType: .float32)
for d0 in 0..<2 {
input[[d0] as [NSNumber]] = Double.random(in:0...2) as NSNumber
}
let prediction = try! timesteps_2_to_2_320_dtype_float32_instance.prediction(input: timesteps_2_to_2_320_dtype_float32Input(input: input))
usleep(25000)
DispatchQueue.main.async {
self.answerLabel.text = "layer 86/86 run " + String(i) + "/100"
}}
usleep(200000)



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
        }
        
        print("DONE PREDICTING")
        
        DispatchQueue.main.async {
            self.loaderView.isLoading = false
        }
        
    }
    
    func say(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
}


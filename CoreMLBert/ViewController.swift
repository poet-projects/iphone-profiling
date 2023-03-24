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
    
//    var m = BertForQuestionAnswering(.full)
    
    let isolatedLayer = isolated_layer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(loaderView)
        loaderView.isLoading = true
        Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { _ in
            self.loaderView.isLoading = false
        }
        
        shuffle()
        shuffleBtn.addTarget(self, action: #selector(shuffle), for: .touchUpInside)
        answerBtn.addTarget(self, action: #selector(answer), for: .touchUpInside)
        
        subjectField.flashScrollIndicators()
        questionField.flashScrollIndicators()
    }
    
    @objc func shuffle() {
        answerLabel.text = ""
        guard let example = Squad.examples.randomElement() else {
            return
        }
        subjectField.text = example.context
        questionField.text = example.question
    }
    
    @objc func answer() {
        answerLabel.text = "Loading..."
        loaderView.isLoading = true
        
        let question = questionField.text ?? ""
        let context = subjectField.text ?? ""
        
//        DispatchQueue.global(qos: .userInitiated).async {
//            let inputs = self.m.featurizeTokensClassifier(question: "Hello how are you doing")
////            let dataPointFeatures: [String: MLFeatureValue] = ["sent_id": MLFeatureValue(multiArray: inputs.sent_id), "mask": MLFeatureValue(multiArray: inputs.mask), "input_true": MLFeatureValue(multiArray: try! MLMultiArray([1, 1, 1, 1, 1]))]
//            let input_ids = try! MLMultiArray(shape: [2, 11], dataType: .float16) // MLMultiArray.from(stacked, dims: 2)
//            for i in 0..<11 {
//                input_ids[[0, i] as [NSNumber]] = 2 as NSNumber
//            }
//            for i in 11..<22 {
//                input_ids[[1, i - 11] as [NSNumber]] = 2 as NSNumber
//            }
//            let dataPointFeatures: [String: MLFeatureValue] = ["sent_id": MLFeatureValue(multiArray: input_ids), "mask_1": MLFeatureValue(multiArray: input_ids), "input_true": MLFeatureValue(multiArray: try! MLMultiArray([1, 1, 1, 1, 1]))]
//            let provider = try! MLDictionaryFeatureProvider(dictionary: dataPointFeatures)
//
//            var featureProviders = [MLFeatureProvider]()
//            featureProviders.append(provider)
//
//            func updateModelCompletionHandler(updateContext: MLUpdateContext) {
//                print("DONE")
//                print(updateContext.task.error)
//                // Save the updated model to the file system.
//                let updatedModel = updateContext.model
//                let fileManager = FileManager.default
//                let directory = NSTemporaryDirectory()
//                var updatedModelURL = NSURL.fileURL(withPathComponents: [directory, "personalized.mlmodelc"])!
//                /// The temporary location of the updated Drawing Classifier model.
//                var tempUpdatedModelURL = NSURL.fileURL(withPathComponents: [directory, "personalized_tmp.mlmodelc"])!
//                do {
//                    // Create a directory for the updated model.
//                    try fileManager.createDirectory(at: tempUpdatedModelURL,
//                                                    withIntermediateDirectories: true,
//                                                    attributes: nil)
//                    print(tempUpdatedModelURL)
//                    print(updatedModel.modelDescription)
//                    // Save the updated model to temporary filename.
//                    try updatedModel.write(to: tempUpdatedModelURL)
//
//                    // Replace any previously updated model with this one.
//                    _ = try fileManager.replaceItemAt(updatedModelURL,
//                                                      withItemAt: tempUpdatedModelURL)
//
//                    print("Updated model saved to:\n\t\(updatedModelURL)")
//                } catch let error {
//                    print("Could not save updated model to the file system: \(error)")
//                    return
//                }
//
//
//
//                guard FileManager.default.fileExists(atPath: updatedModelURL.path) else {
//                    // The updated model is not present at its designated path.
//                    return
//                }
//
//                // Create an instance of the updated model.
//                self.m = BertForQuestionAnswering(try! bert_classifier(contentsOf: updatedModelURL))
//
//                // Inform the calling View Controller when the update is complete
//        //                DispatchQueue.main.async { completionHandler() }
//            }
//
//            do {
//                let updateTask = try! MLUpdateTask(forModelAt: bert_classifier.urlOfModelInThisBundle, trainingData: MLArrayBatchProvider(array: featureProviders), completionHandler: updateModelCompletionHandler)
//
//                updateTask.resume()
//            } catch {
//                print(error)
//                return
//            }
            
        
        
//        for i in 0..<384 {
//            for j in 0..<384 {
//                input[[0, 0, i, j] as [NSNumber]] = Double.random(in:0...2) as NSNumber
//            }
//        }
        
        
        let tempDirectoryURL = URL(fileURLWithPath: NSTemporaryDirectory(), isDirectory: true)

        // Create a destination URL.
        let targetURL = tempDirectoryURL.appendingPathComponent("poet").appendingPathExtension("txy")
                
        let clock = ContinuousClock()
        
        for _ in 0..<100 {
            
            let input = try! MLMultiArray(shape: [3072], dataType: .float64)
            
            for i in 0..<3072 {
                input[[i] as [NSNumber]] = Double.random(in:0...2) as NSNumber
            }
            
            let result = clock.measure {
                let prediction = try! self.isolatedLayer.prediction(input: isolated_layerInput(input: input))
                
                // Paging simulation below
                for i in 0..<100 {
                    do {
                        let len = prediction.var_5.count
                        let arr = Array(repeating: Double(i) * 1.1, count: len)
                        try (
                            withUnsafeBytes(of: arr) { Data($0) }
                        ).write(to: targetURL)
                    } catch {
                        print(error)
                    }
                }
            }
            print(result)
        }
        
        print("DONE PREDICTING")
        
            DispatchQueue.main.async {
//                self.answerLabel.text = prediction.var_4
                self.loaderView.isLoading = false
//                self.say(text: prediction.answer)
            }
        
    }
    
    func say(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
}


//
//  ViewController.swift
//  CoreMLGPT2
//
//  Created by Julien Chaumond on 18/07/2019.
//  Copyright © 2019 Hugging Face. All rights reserved.
//

import UIKit
import CoreML

class ViewController: UIViewController {
    @IBOutlet weak var shuffleBtn: UIButton!
    @IBOutlet weak var triggerBtn: UIButton!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var speedLabel: UILabel!
    
    let model = GPT2(strategy: .topK(40))
    
    let prompts = [
        "Before boarding your rocket to Mars, remember to pack these items",
        "In a shocking finding, scientist discovered a herd of unicorns living in a remote, previously unexplored valley, in the Andes Mountains. Even more surprising to the researchers was the fact that the unicorns spoke perfect English.",
        "Legolas and Gimli advanced on the orcs, raising their weapons with a harrowing war cry.",
        "Today, scientists confirmed the worst possible outcome: the massive asteroid will collide with Earth",
        "Hugging Face is a company that releases awesome projects in machine learning because",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shuffle()
        shuffleBtn.addTarget(self, action: #selector(shuffle), for: .touchUpInside)
        triggerBtn.addTarget(self, action: #selector(trigger), for: .touchUpInside)
        
        textView.flashScrollIndicators()
        self.speedLabel.text = "0"
    }
    
    @objc func shuffle() {
        guard let prompt = prompts.randomElement() else {
            return
        }
        textView.text = prompt
    }
    
    @objc func trigger() {
        guard let text = textView.text else {
            return
        }
        DispatchQueue.global(qos: .userInitiated).async {
            let inputs = self.model.tokenizer.encode(text: "The dog jumped over the cat, which caused it to")
//            let dataPointFeatures: [String: MLFeatureValue] = ["sent_id": MLFeatureValue(multiArray: inputs.sent_id), "mask": MLFeatureValue(multiArray: inputs.mask), "input_true": MLFeatureValue(multiArray: try! MLMultiArray([1, 1, 1, 1, 1]))]
            let input_ids = try! MLMultiArray.from(inputs)
            
            let dataPointFeatures: [String: MLFeatureValue] = ["input_ids": MLFeatureValue(multiArray: input_ids), "position_ids": MLFeatureValue(multiArray: input_ids), "output_logits_true": MLFeatureValue(multiArray: MLMultiArray.from([1, 1, 1, 1, 1]))]
            let provider = try! MLDictionaryFeatureProvider(dictionary: dataPointFeatures)
            
            var featureProviders = [MLFeatureProvider]()
            featureProviders.append(provider)
            
            func updateModelCompletionHandler(updateContext: MLUpdateContext) {
                print("DONE")
                print(updateContext.task.error)
                // Save the updated model to the file system.
                let updatedModel = updateContext.model
                let fileManager = FileManager.default
                let directory = NSTemporaryDirectory()
                var updatedModelURL = NSURL.fileURL(withPathComponents: [directory, "personalized.mlmodelc"])!
                /// The temporary location of the updated Drawing Classifier model.
                var tempUpdatedModelURL = NSURL.fileURL(withPathComponents: [directory, "personalized_tmp.mlmodelc"])!
                do {
                    // Create a directory for the updated model.
                    try fileManager.createDirectory(at: tempUpdatedModelURL,
                                                    withIntermediateDirectories: true,
                                                    attributes: nil)
                    print(tempUpdatedModelURL)
                    print(updatedModel.modelDescription)
                    // Save the updated model to temporary filename.
                    try updatedModel.write(to: tempUpdatedModelURL)
                    
                    // Replace any previously updated model with this one.
                    _ = try fileManager.replaceItemAt(updatedModelURL,
                                                      withItemAt: tempUpdatedModelURL)
                    
                    print("Updated model saved to:\n\t\(updatedModelURL)")
                } catch let error {
                    print("Could not save updated model to the file system: \(error)")
                    return
                }
                
                
                
                guard FileManager.default.fileExists(atPath: updatedModelURL.path) else {
                    // The updated model is not present at its designated path.
                    return
                }
                
                // Create an instance of the updated model.
                self.model.model = try! gpt2_512(contentsOf: updatedModelURL)
                
                // Inform the calling View Controller when the update is complete
        //                DispatchQueue.main.async { completionHandler() }
            }
            
            do {
                let updateTask = try! MLUpdateTask(forModelAt: gpt2_512.urlOfModelInThisBundle, trainingData: MLArrayBatchProvider(array: featureProviders), completionHandler: updateModelCompletionHandler)
                
                updateTask.resume()
            } catch {
                print(error)
                return
            }
            
            return
            
            
//            _ = self.model.generate(text: text, nTokens: 50) { completion, time in
//                DispatchQueue.main.async {
//                    let startingTxt = NSMutableAttributedString(string: text, attributes: [
//                        .font: self.textView.font as Any,
//                        .foregroundColor: self.textView.textColor as Any,
//                    ])
//                    let completeTxt = NSAttributedString(string: completion, attributes: [
//                        .font: self.textView.font as Any,
//                        .foregroundColor: self.textView.textColor as Any,
//                        .backgroundColor: UIColor.lightGray.withAlphaComponent(0.5),
//                    ])
//                    startingTxt.append(completeTxt)
//                    self.textView.attributedText = startingTxt
//                    self.speedLabel.text = String(format: "%.2f", 1 / time)
//                }
//            }
        }
    }
}

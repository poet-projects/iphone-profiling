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
        
        let tempDirectoryURL = URL(fileURLWithPath: NSTemporaryDirectory(), isDirectory: true)

        let targetURL = tempDirectoryURL.appendingPathComponent("poet").appendingPathExtension("txy")
                        
        for i in 0..<100 {
            // swift_input
            let prediction = try! self.isolatedLayer.prediction(input: isolated_layerInput(input: input))
            usleep(25000)

            DispatchQueue.main.async {
                self.answerLabel.text = "prediction " + String(i + 1) + "/100"
            }
        }

        // pageout_input

        for i in 0..<100 {
            do {
                try (
                    withUnsafeBytes(of: arr) { Data($0) }
                ).write(to: targetURL)
            } catch {
                print(error)
            }
            usleep(25000)

            DispatchQueue.main.async {
                self.answerLabel.text = "paging " + String(i + 1) + "/100"
            }
        }

        usleep(1000000)
        
        for i in 0..<100 {
            do {
                let fileHandle = try (FileHandle(forReadingFrom: targetURL))
                // pagein_input
                fileHandle.closeFile()
            } catch {
                print("ERROR WHEN PAGING IN")
            }
            
            usleep(25000)

            DispatchQueue.main.async {
                self.answerLabel.text = "paging in " + String(i + 1) + "/100"
            }
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


//
//  ViewController.swift
//  timeTest
//
//  Created by 日高隼人 on 2021/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tokyoTime: UILabel!
    @IBOutlet weak var nyTime: UILabel!
    @IBOutlet weak var germanyTime: UILabel!
    @IBOutlet weak var watchTime: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var test: UILabel!
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        dateData(country: tokyoTime, language: "ja_JP")
        overseas(country: nyTime, lunguage: "en_US", whereTo: "America/New_York")
        overseas(country: germanyTime, lunguage: "fr_GN", whereTo: "Europe/Berlin")

        updateCountLabel()
    }

    func dateData(country: UILabel, language: String) {
        let date = Date()
        let formatter = DateFormatter()
        formatter.setLocalizedDateFormatFromTemplate("yMMMdE jm")
        formatter.locale = Locale(identifier: language)
        let time = formatter.string(from: date)
        country.adjustsFontSizeToFitWidth = true
        country.text = "\(time)"
    }

    func overseas(country: UILabel, lunguage: String, whereTo: String) {
        let date = Date()
        let formatter = DateFormatter()
        formatter.setLocalizedDateFormatFromTemplate("yMMMdE jm")
        formatter.locale = Locale(identifier: lunguage)
        if let timeZone = TimeZone(identifier: whereTo) {
            formatter.timeZone = timeZone
        }
        let time = formatter.string(from: date)
        country.adjustsFontSizeToFitWidth = true
        country.text = time
    }

    var timer = Timer()
    var timeCount = 0

    @IBAction func startButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Action), userInfo: nil, repeats: true)
        startButton.isEnabled = false
    }

    @IBAction func stopButton(_ sender: Any) {
        timer.invalidate()
        startButton.isEnabled = true

    }

    @IBAction func resetButton(_ sender: Any) {
        timer.invalidate()
        timeCount = 0
        watchTime.text = "0"
    }

    @objc func Action() {
        timeCount += 1
        watchTime.text = String(timeCount)
    }



    private var plusOne:Timer?
    private var startTimer:Timer?
    private var count = 0

    private func updateCountLabel() {
        label.text = String(count)
    }

    private func stopTimers() {
        plusOne?.invalidate()
        startTimer?.invalidate()
    }


    @IBAction func pulsOne(_ sender: Any) {
        stopTimers()
        count = 0
        updateCountLabel()

        plusOne = Timer.scheduledTimer(withTimeInterval: 1, repeats: false, block: {[weak self] _ in
            self?.count += 1
            self?.updateCountLabel()
        } )
    }

    @IBAction func startButton1(_ sender: Any) {
        stopTimers()
        count = 0
        updateCountLabel()

        startTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {[weak self] _ in
            self?.count += 1
            self?.updateCountLabel()
        })

    }
    @IBAction func stopButton1(_ sender: Any) {
        stopTimers()
    }

}




















//    func overseasTime() {
//        let date = Date()
//        let formatter = DateFormatter()
//        formatter.setLocalizedDateFormatFromTemplate("yMMMdE jm")
//
////                             ↓↓　ここに各国のタイムゾーンIDを記入　↓↓
//        if let nyTimeZone = TimeZone(identifier: "America/New_York") {
//            formatter.timeZone = nyTimeZone
//        }
//
//        let time = formatter.string(from: date)
//        nyTime.text = time
//
//    }
//        let date = Date()
//        let formatter = DateFormatter()
//        formatter.setLocalizedDateFormatFromTemplate("yMMMMdE jm")
//
//        if let timeZone = TimeZone(identifier: "America/Los_Angeles") {
//            formatter.timeZone = timeZone
//            print(formatter.string(from: date))

// Wed, May 30, 2018, 11:47 AM
// 2018年5月30日(水) 11:51




////        dateData(country: tokyoTime, language: "ja_JP")
//        dateData(country: nyTime, language: "us_US")
//        dateData(country: germanyTime, language: "de_DE")



//    struct timeDate {
//        let date = Date()
//        let formatter = DateFormatter()
//        let label:UILabel
//
//        init(label:UILabel) {
//            self.label = label
//        }
//
//        func styleStyle(label:UILabel) {
//            formatter.dateStyle = .full
//            formatter.timeStyle = .full
//            let time = formatter.string(from: date)
//            label.text = time
//        }
//
//        func styleTemplate(label:UILabel) {
//            formatter.setLocalizedDateFormatFromTemplate("yMMdEEEE jm")
//            let time = formatter.string(from: date)
//            label.text = time
//        }
//    }
//
//    var dateJapan = timeDate(label: japanTime)

//
//
//    func dateJapan() {
//        let date = Date()
//        let formatter = DateFormatter()
//        formatter.setLocalizedDateFormatFromTemplate("yMMMMdEEEE jm")
//
//        let time = formatter.string(from: date)
//        japanTime.text = time
//    }
//
//
//    func dateTokyo() {
//        let date = Date()
//        let formatter = DateFormatter()
//        formatter.dateStyle = .full
//        formatter.timeStyle = .short
//        let time = formatter.string(from: date)
//        tokyoTime.text = time
//    }
//
//





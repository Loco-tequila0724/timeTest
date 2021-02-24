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
    @IBOutlet weak var stopWatch: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var a: UILabel!



    override func viewDidLoad() {
        super.viewDidLoad()
//
//        dateData(country: tokyoTime, language: "ja_JP")
//        dateData(country: nyTime, language: "us_US")
//        dateData(country: germanyTime, language: "de_DE")

        test(labell: a)
    }

    func dateData(country: UILabel, language: String) {
        let date = Date()
        let dateformatter = DateFormatter()
        dateformatter.dateStyle = .full
        dateformatter.timeStyle = .short
        let Time = dateformatter.string(from: date)

        dateformatter.locale = Locale.init(identifier: "\(language)")

        country.adjustsFontSizeToFitWidth = true
        country.text = "\(Time)"
    }

    func test(labell:UILabel) {

        let date = Date()
        let dateformatter = DateFormatter()
        dateformatter.dateStyle = .full
        dateformatter.timeStyle = .short
        let Time = dateformatter.string(from: date)

        dateformatter.locale = Locale(identifier: "us_US")
        labell.text = "\(Time)"

    }
}


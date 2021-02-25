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


    override func viewDidLoad() {
        super.viewDidLoad()
//        dateData(country: germanyTime, language: "de_DE")
//        dateJapan()
//        dateTokyo()

        dateData(country: tokyoTime, language: "jp_JP")
//        overseas(country: nyTime, whereTo: "America/New_York" )
        overseasTime()
    }


    func dateData(country: UILabel, language: String) {
        let date = Date()
        let dateformatter = DateFormatter()
        dateformatter.dateStyle = .full
        dateformatter.timeStyle = .short
        let time = dateformatter.string(from: date)
        dateformatter.locale = Locale(identifier: language )
        country.adjustsFontSizeToFitWidth = true
        country.text = "\(time)"
    }

    func overseas(country:UILabel, whereTo:String) {
        let date = Date()
        let formatter = DateFormatter()
        formatter.setLocalizedDateFormatFromTemplate("yMMMdE jm")
        if let timeZone = TimeZone(identifier: whereTo ) {
            formatter.timeZone = timeZone
        }
        let time = formatter.string(from: date)
        country.text = time
    }


    func overseasTime() {
        let date = Date()
        let formatter = DateFormatter()

        formatter.setLocalizedDateFormatFromTemplate("yMMMdE jm")
        if let nyTimeZone = TimeZone(identifier: "America/New_York") {
            formatter.timeZone = nyTimeZone
    }

        let time = formatter.string(from: date)

        nyTime.text = time

    }
//        let date = Date()
//        let formatter = DateFormatter()
//        formatter.setLocalizedDateFormatFromTemplate("yMMMMdE jm")
//
//        if let timeZone = TimeZone(identifier: "America/Los_Angeles") {
//            formatter.timeZone = timeZone
//            print(formatter.string(from: date))

            // Wed, May 30, 2018, 11:47 AM
            // 2018年5月30日(水) 11:51
}



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





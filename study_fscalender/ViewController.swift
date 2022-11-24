//
//  ViewController.swift
//  study_fscalender
//
//  Created by 保坂篤志 on 2022/11/23.
//

import UIKit
import FSCalendar

class ViewController: UIViewController, FSCalendarDataSource, FSCalendarDelegate, FSCalendarDelegateAppearance {
    
    @IBOutlet  weak var calendar: FSCalendar!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        calendar.dataSource = self
        calendar.delegate = self
        
        calendar.register(FSCalendarCell.self, forCellReuseIdentifier: "cell")
    }
    
    func calendar(_ calendar: FSCalendar, cellFor date: Date, at position: FSCalendarMonthPosition) -> FSCalendarCell {
        
        let cell = calendar.dequeueReusableCell(withIdentifier: "cell", for: date, at: position)
        
        let frame = CGRect(x: 1, y: 9, width: cell.frame.width - 2, height: cell.frame.width - 4)
        let circleImageView = UIImageView(frame: frame)
        circleImageView.tintColor = UIColor.systemCyan
        circleImageView.image = UIImage(systemName: "circle.fill")
        cell.contentView.insertSubview(circleImageView, at: 0)
        
        return cell
    }
    
//    func calendar(_ calendar: FSCalendar, willDisplay cell: FSCalendarCell, for date: Date, at monthPosition: FSCalendarMonthPosition) {
//
//        cell.titleLabel.textColor = UIColor.white
//    }

    func calendar(_ calendar: FSCalendar, appearance: FSCalendarAppearance, titleDefaultColorFor date: Date) -> UIColor? {
        
        return .white
    }
    

}


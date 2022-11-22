//
//  Date+Extension.swift
//  GitHubFollowers
//
//  Created by Cenk Bahadır Çark on 20.11.2022.
//

import Foundation

extension Date {
    
    func converToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM yyyy"
        return dateFormatter.string(from: self)
    }
}

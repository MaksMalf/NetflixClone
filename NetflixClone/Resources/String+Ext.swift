//
//  String+Ext.swift
//  NetflixClone
//
//  Created by Maksim Malofeev on 27/09/2022.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}

//
//  Helpers.swift
//  SplineApp
//
//  Created by Aniket Bane on 27/02/24.
//

import Foundation
import UIKit


public func openUrl(urlString:String!) {
    let url = URL(string: urlString)!
    if #available(iOS 10.0, *) {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    } else {
        UIApplication.shared.openURL(url)
    }
}

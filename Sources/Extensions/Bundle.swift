//
//  Bundle.swift
//  RichTextRow
//
//  Created by Julien Pouget on 12/08/2024.
//  Copyright © 2024 HubSpot. All rights reserved.
//

import Foundation
import UIKit

extension Bundle {
    
    class var podBundle: Bundle {
        #if SWIFT_PACKAGE
        return Bundle.module
        #else
        var podBundle = Bundle(for: RichTextEditor.classForCoder())
        
        if let bundlePath = podBundle.path(forResource: "RichTextRow", ofType: "bundle") {
            if let bundle = Bundle(path: bundlePath) {
                podBundle = bundle
            }
        }
        
        return podBundle
        #endif
    }
    
}

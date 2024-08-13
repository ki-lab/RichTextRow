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
        return Bundle(for: RichTextEditor.classForCoder())
        #endif
    }
    
}

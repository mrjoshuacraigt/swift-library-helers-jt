//
//  jkl.swift
//  CommonSwiftJtPackage
//
//  Created by Joshua Taylor on 1/20/25.
//

import SwiftUICore

@available(iOS 13.0, *)
extension View {
    func stacked(at position: Int, in total: Int) -> some View {
        let offset = Double(total - position)
        return self.offset(y: offset * 10)
    }
}

//
//  ConversionAppView.swift
//  Assignment2
//
//  Created by Zach Evetts on 3/8/23.
//

import SwiftUI


struct ConversionAppView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    NavigationLink("World Currency Exchange", destination: Converter())
                    NavigationLink("Crypto Exchange", destination: CryptoExchangeView())
                }
            } .navigationTitle("Conversion App")
        }
    }
}

struct ConversionAppView_Previews: PreviewProvider {
    static var previews: some View {
        ConversionAppView()
    }
}

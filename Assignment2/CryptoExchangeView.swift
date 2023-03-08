//
//  CryptoExchangeView.swift
//  Assignment2
//
//  Created by Zach Evetts on 3/9/23.
//

import SwiftUI

struct CryptoExchangeView: View {
    
    @ObservedObject var viewModel = CryptoConverterVewModel()
    
    
    @State var bitcoinAmount: Double = 1
    
    var body: some View {
        List {
            Group {
                HStack() {
                    Text("Bitcoin:")
                    TextField("", value: $bitcoinAmount,  formatter: NumberFormatter())
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.numberPad)
                }
                Section{}
                ForEach(viewModel.listOfCrypto) { crypto in
                    CryptoItem(crypto: crypto)
                }
            } .onAppear() {
                viewModel.fetchCrypto()
                viewModel.Convert(crypto: bitcoinAmount)
            }

//            HStack {
//                    Text("US Dollar")
//                    Spacer()
//                    let bitcoinToUSD = bitcoinAmount * 23450
//                    let string = "\(bitcoinToUSD)"
//                    Text(string)
//    //                        Text(crypto.crypto)
//    //                        viewModel.bitcoinToUSD(bitcoin: bitcoinAmount)
//                }
//                HStack {
//                    Text("Ethereum")
//                    Spacer()
//                    let bitcoinToUSD = bitcoinAmount * 14.3
//                    let string = "\(bitcoinToUSD)"
//                    Text(string)
//                }
//                HStack {
//                    Text("Tether")
//                    Spacer()
//                    let bitcoinToUSD = bitcoinAmount * 23450
//                    let string = "\(bitcoinToUSD)"
//                    Text(string)
//                }
//                HStack {
//                    Text("BNB")
//                    Spacer()
//                    let bitcoinToUSD = bitcoinAmount * 77.2
//                    let string = "\(bitcoinToUSD)"
//                    Text(string)
//                }
//                HStack {
//                    Text("USD Coin")
//                    Spacer()
//                    let bitcoinToUSD = bitcoinAmount * 23454
//                    let string = "\(bitcoinToUSD)"
//                    Text(string)
//                }
//                HStack {
//                    Text("XRP")
//                    Spacer()
//                    let bitcoinToUSD = bitcoinAmount * 62113
//                    let string = "\(bitcoinToUSD)"
//                    Text(string)
//                }
            }
    }
}

struct CryptoExchangeView_Previews: PreviewProvider {
    static var previews: some View {
        CryptoExchangeView()
    }
}

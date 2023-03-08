//
//  CryptoItem.swift
//  Assignment2
//
//  Created by Zach Evetts on 3/11/23.
//

import SwiftUI

struct CryptoItem: View {
    
    var crypto : CryptoModel<CryptoItemModel>
    
    @State var bitcoinAmount: Double = 1
    
    var body: some View {
            Group {
                CryptoView(crypto : crypto.cryptoContent)
            }
            //            Section{}
            //                HStack {
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
            //            }
        }
}

struct CryptoItem_Previews: PreviewProvider {
    static var previews: some View {
        CryptoItem(crypto: CryptoModel(cryptoContent: CryptoItemModel(cryptoName: "", cryptoCode: "", multiplier: 1)))
    }
}

struct CryptoView: View {
    var crypto : CryptoItemModel
    var body: some View {
        HStack {
            Text(crypto.cryptoName)
            Spacer()
            Text(String(crypto.multiplier))
        }
    }
}

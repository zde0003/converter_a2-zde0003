//
//  CryptoViewModel.swift
//  Assignment2
//
//  Created by Zach Evetts on 3/10/23.
//

import Foundation

class CryptoConverterVewModel : ObservableObject {
    
    @Published private(set) var listOfCrypto = [CryptoModel<CryptoItemModel>]()
    
    func fetchCrypto() {
        self.listOfCrypto = [
            CryptoModel(cryptoContent: CryptoItemModel(cryptoName: "US Dollar", cryptoCode: "USD", multiplier: 23450)),
            CryptoModel(cryptoContent: CryptoItemModel(cryptoName: "Ethereum", cryptoCode: "ETH", multiplier: 14.3)),
            CryptoModel(cryptoContent: CryptoItemModel(cryptoName: "Tether", cryptoCode: "THR", multiplier: 23450)),
            CryptoModel(cryptoContent: CryptoItemModel(cryptoName: "BNB", cryptoCode: "BNB", multiplier: 77.2)),
            CryptoModel(cryptoContent: CryptoItemModel(cryptoName: "USD Coin", cryptoCode: "USDC", multiplier: 23454)),
            CryptoModel(cryptoContent: CryptoItemModel(cryptoName:"XRP",cryptoCode: "XRP", multiplier: 62113))
        ]
    }
    
    func Convert(crypto: Double) -> String? {
        let x = crypto
        let string = "\(x)"
        return string
    }
}

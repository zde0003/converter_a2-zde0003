//
//  ConvertModel.swift
//  Assignment2
//
//  Created by Zach Evetts on 3/8/23.
//

import Foundation

struct ConvertModel<SomeType> : Identifiable {
    let id = UUID()
    var isFront : Bool = true
    let cardContent : SomeType
}

struct CurrencyItemModel {
    let currencyName : String
    let currencyCode : String
    let countryFlag : String
    let multiplier : Double
}

struct CryptoModel<SomeType> : Identifiable {
    let id = UUID()
    let cryptoContent : SomeType
}

struct CryptoItemModel {
    let cryptoName : String
    let cryptoCode : String
    let multiplier : Double
}

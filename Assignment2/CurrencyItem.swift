//
//  CurrencyItem.swift
//  Assignment2
//
//  Created by Zach Evetts on 3/8/23.
//

import SwiftUI

struct CurrencyItem: View {
    
    var card : ConvertModel<CurrencyItemModel>
    
    var body: some View {
        if card.isFront {
            FrontCurrencyItem(card: card.cardContent)
        } else {
            BackCurrencyItem(card: card.cardContent)
        }
    }
}

struct CurrencyItem_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyItem(card: ConvertModel(cardContent: CurrencyItemModel(currencyName: "", currencyCode: "", countryFlag: "", multiplier: 1)))
    }
}

struct FrontCurrencyItem: View {
    var card : CurrencyItemModel
    var body: some View {
        VStack {
            HStack {
                Text(card.countryFlag)
                    .font(.system(size: 50))
                Spacer()
            }
            HStack {
                Spacer()
                Text(card.currencyCode)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.blue)
    }
}

struct BackCurrencyItem: View {
    var card : CurrencyItemModel
    var body: some View {
        VStack {
            HStack {
                Text(card.currencyName)
                    .foregroundColor(.white)
                Spacer()
            }
            HStack {
                Spacer()
                Text(String(card.multiplier))
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.blue)
    }
}

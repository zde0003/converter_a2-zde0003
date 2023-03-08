//
// ContentView.swift : Assignment2
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct Converter: View {
    
    @ObservedObject var viewModel = CurrencyConverterVewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                    ForEach(viewModel.listOfCards) { card in
                        CurrencyItem(card: card)
                            .onTapGesture {
                                viewModel.flip(card: card)
                            }
                    }
                }.navigationTitle("1 USD Exchange Rate")
                    .navigationBarTitleDisplayMode(.inline)
            }
            .onAppear {
                viewModel.fetchCards()
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Converter()
        }
    }
}

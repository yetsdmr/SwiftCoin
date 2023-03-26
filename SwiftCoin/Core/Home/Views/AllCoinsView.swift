//
//  AllCoinView.swift
//  SwiftCoin
//
//  Created by Yunus Emre Taşdemir on 24.03.2023.
//

import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Coins")
                .font(.headline)
                .padding()
            
            HStack {
                Text("Coin")
                Spacer()
                Text("Prices")
            }
            .foregroundColor(.gray)
            .font(.caption)
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ForEach(viewModel.coins) { coin in
                        CoinRowView(coin: coin)
                    }
                }
            }
        }
        
    }
}

/*struct AllCoinView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinsView()
    }
}*/

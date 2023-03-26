//
//  HomeView.swift
//  SwiftCoin
//
//  Created by Yunus Emre Taşdemir on 24.03.2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // top movers view
                TopMoversView(viewModel: viewModel)
                
                Divider()
                
                //all coin view
                AllCoinsView(viewModel: viewModel)
                
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

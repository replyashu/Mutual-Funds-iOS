//
//  ContentView.swift
//  fund
//
//  Created by Ashutosh Sharma on 15/09/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var network: Network
    
    var body: some View {
        ScrollView() {
            Text("Mutual Fund List")
                .font(.title)
                .bold()
            
            LazyVStack(alignment: .leading) {
                ForEach(network.mutualFunds) { mutualFund in
                    HStack(alignment:.top) {
                        VStack(alignment: .leading) {
                            Text(mutualFund.schemeName)
                                .bold()
                                .lineLimit(nil)
                        }
                    }
                    .frame(width: 400, alignment: .leading)
                    .padding()
                    .background(Color(#colorLiteral(red: 0.6667672396, green: 0.7527905703, blue: 1, alpha: 0.2662717301)))
                    .cornerRadius(20)
                }
            }
            .padding(.vertical)
            .onAppear {
                network.getMutualFunds()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Network())
    }
}

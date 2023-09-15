//
//  HomeView.swift
//  fund
//
//  Created by Ashutosh Sharma on 16/09/23.
//

import SwiftUI


struct HomeView: View {
    
    var body: some View {
        VStack {
            Text("All About")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()


            Image(information.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding(40)


            Text(information.name)
                .font(.title)
            
            Text(information.story)
                .font(.body)
                
        }
    }
    
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

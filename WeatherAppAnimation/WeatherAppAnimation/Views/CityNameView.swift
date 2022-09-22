//
//  CityNameView.swift
//  WeatherAppAnimation
//
//  Created by john.adrian.de.claro on 9/22/22.
//

import SwiftUI

struct CityNameView: View {
//MARK: - Property
    var city: String
    var date: String
    
//MARK: - Body
    var body: some View {
        HStack{
            VStack(alignment:.center, spacing: 10){
                Text(city)
                    .font(.title)
                    .bold()
                Text(date)
                
            }.foregroundColor(.white)
        }//Hstack
    }
}
//MARK: - Preview
struct CityNameView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

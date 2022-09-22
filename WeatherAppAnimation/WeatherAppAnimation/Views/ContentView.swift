//
//  ContentView.swift
//  WeatherAppAnimation
//
//  Created by john.adrian.de.claro on 9/21/22.
//

import SwiftUI

struct ContentView: View {
//MARK: - Property
    @ObservedObject var cityVM = CityViewViewModel()
//MARK: - Body
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                MenuHeaderView(cityVM: cityVM).padding()
                ScrollView(showsIndicators: false) {
                    CityView(cityVM: cityVM)
                    
                }.padding(.top, 10)
            }.padding(.top, 40)
        }.background(RoundedRectangle(cornerRadius: 5).fill(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.5), Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)))
            .edgesIgnoringSafeArea(.all)
    }
}
//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

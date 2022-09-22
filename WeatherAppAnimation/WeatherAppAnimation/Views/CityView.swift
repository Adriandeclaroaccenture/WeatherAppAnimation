//
//  CityView.swift
//  WeatherAppAnimation
//
//  Created by john.adrian.de.claro on 9/22/22.
//

import SwiftUI

struct CityView: View {
//MARK: - Property
    @ObservedObject var cityVM: CityViewViewModel
//MARK: - Body
    var body: some View {
        VStack {
            CityNameView(city: cityVM.city, date: cityVM.date)
                .shadow(radius: 10)
            TodayWeatherView(cityVM: cityVM)
                .padding()
            HourlyWeatherView(cityVM: cityVM)
            DailyWeatherView(cityVM: cityVM)
        }.padding(.bottom, 30)
    }
}
//MARK: - Preview
struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

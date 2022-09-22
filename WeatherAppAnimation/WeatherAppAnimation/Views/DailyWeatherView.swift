//
//  DailyWeatherView.swift
//  WeatherAppAnimation
//
//  Created by john.adrian.de.claro on 9/22/22.
//

import SwiftUI

struct DailyWeatherView: View {
//MARK: - Property
    @ObservedObject var cityVM: CityViewViewModel
//MARK: - Body
    var body: some View {
        ForEach(cityVM.weather.daily) { weather in
            LazyVStack {
                dailyCell(weather: weather)
            }//LazyVStack
        }//ForEach
    }
    
    private func dailyCell(weather: DailyWeather) -> some View {
        HStack {
            Text(cityVM.getDayFor(timestamp: weather.dt).uppercased())
                .frame(width: 50)
            Spacer()
            Text("\(cityVM.getTempFor(temp: weather.temp.max)) | \(cityVM.getTempFor (temp: (weather.temp.min)))°F")
                .frame(width: 150)
            Spacer()
            cityVM.getWeatherIconFor(icon: weather.weather.count > 0 ? weather.weather[0].icon : "sun.max.fill")
        }//Hstack
        .foregroundColor(.white)
        .padding(.horizontal, 40)
        .padding(.vertical, 15)
        .background(RoundedRectangle(cornerRadius: 5).fill(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.5), Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)))
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
    }
}
//MARK: - Preview
struct DailyWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

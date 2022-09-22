//
//  MenuHeaderView.swift
//  WeatherAppAnimation
//
//  Created by john.adrian.de.claro on 9/22/22.
//

import SwiftUI

struct MenuHeaderView: View {
//MARK: - Properties
    @ObservedObject var cityVM: CityViewViewModel
    @State private var searchTerm = "San Pablo City"

//MARK: - Body
    var body: some View {
        HStack {
            TextField("", text: $searchTerm)
                .padding(.leading, 20)
            Button {
                cityVM.city = searchTerm
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.gray)
                    Image(systemName: "location.fill")
                    
                }//Zstack
            }//button&label
            .frame(width: 50, height: 50)
        }//Hstack
        .foregroundColor(.white)
        .padding()
        .background(ZStack(alignment: .leading){
            Image(systemName: "magnifyingglass")
                .foregroundColor(.white)
                .padding(.leading, 10)
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue.opacity(0.5))
        })//Zstack
    }
}
//MARK: - Preview
struct MenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

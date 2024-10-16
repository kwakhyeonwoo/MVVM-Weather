//
//  WeatherViewModel.swift
//  AloneWeather
//
//  Created by 곽현우 on 9/26/24.
//

import Foundation

class WeatherViewModel: ObservableObject{
    @Published var weather: WeatherData?
    //네트워크 요청, API에 접근하는 상태인지 확인
    @Published var isLoading: Bool = false
    @Published var errorMesaage: String?
    
    private let apikey: String =  "개인키"
    
    //날씨 API 불러오기 - q, appid가 필수로 들어가야 함
    func fetchWeather(for city: String){
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(apikey)&units=metric") else{
            errorMesaage = "Not Found URL"
            return
        }
        
        isLoading = true
        errorMesaage = nil
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                
            }
        }
        
    }//fetchWeather method
}

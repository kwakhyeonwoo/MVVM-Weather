//
//  WeatherModel.swift
//  AloneWeather
//
//  Created by 곽현우 on 9/26/24.
//

import Foundation

//날씨 API 불러오기
//JSON 파싱을 위해 Codable 상속
//날씨는 배열로 받아야 하므로 [Weather]로 받음 
struct WeatherData: Codable{
    let main : MainActor
    let weather: [Weather]
    let name : String
}

//외부 API에서 불러올 값들
struct Weather: Codable{
    let temp: Double
    let humity: Int
}

//날씨 설명 ex) 구름, 맑음, 비 등 다양한 환경을 고려해 확장성을 높게 하기 위해 따로 분류
struct Weather: Codable {
    let descrption: String
}

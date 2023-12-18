//
//  ModeloColumnas.swift
//  ListasGrids
//
//  Created by Hazel Alain on 16/12/23.
//

import Foundation
import Combine
import SwiftUI

class ModeloColumnas : ObservableObject{
    
    @Published var gridItem = [GridItem()]
    
    
    func columnas(num : Int){
        
        gridItem = Array(repeating: .init(.flexible(maximum:80)), count: num)
        UserDefaults.standard.setValue(num, forKey: "numero")
    }
    
    init(){
        
        if let num = UserDefaults.standard.object(forKey: "numero") as? Int {
            gridItem = Array(repeating: .init(.flexible(maximum:80)), count: num)

        }
        else{
            gridItem = Array(repeating: .init(.flexible(maximum:80)), count: 1)
        }
    }
}

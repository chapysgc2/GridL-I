//
//  GridList.swift
//  ListasGrids
//
//  Created by Hazel Alain on 27/11/23.
//

import SwiftUI

struct GridList: View {
    //let gritItem = [
      //  GridItem(.adaptive(minimum: 100 ))
    //]
    
    let gridItem : [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    var body: some View {
        
        NavigationView{
            ScrollView {
                LazyVGrid(columns: gridItem, spacing: 30 ){
                    ForEach(lista) { item in
                        Text(item.emoji)
                            .font(.system(size: 80))
                    }
                }
            }
        }.navigationTitle("Grids")
    }
}

#Preview {
    GridList()
}

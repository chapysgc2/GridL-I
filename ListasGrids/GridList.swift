//
//  GridList.swift
//  ListasGrids
//
//  Created by Hazel Alain on 27/11/23.
//

import SwiftUI
import Combine
struct GridList: View {
    //let gritItem = [
      //  GridItem(.adaptive(minimum: 100 ))
    //]
    
   // let gridItem : [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    @ObservedObject var grid = ModeloColumnas()
    var body: some View {
        
        NavigationView{
            ScrollView {
                LazyVGrid(columns: grid.gridItem, spacing: 30 ){
                    ForEach(lista) { item in
                        Text(item.emoji)
                            .font(.system(size: 80))
                    }
                }
            }.navigationTitle("Grids")
                .toolbar {
                    ToolbarItem {
                        Menu("opciones") {
                            Section {
                                Button("1 columna") {
                                    grid.columnas(num : 1)
                                }
                                Button("2 columnas") {
                                    grid.columnas(num : 2)
                                }
                                Button("3 columnas") {
                                    grid.columnas(num : 3)
                                }
                                Button("4 columnas") {
                                    grid.columnas(num : 4)
                                }
                                Button("destruir userdefaults") {
                                    
                                    UserDefaults.standard.removeObject(forKey: "numero")
                                }
                            }
                        }
                    }
                }
        }
         
    }
}

#Preview {
    GridList()
}

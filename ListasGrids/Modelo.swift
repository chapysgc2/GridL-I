//
//  Modelo.swift
//  ListasGrids
//
//  Created by Hazel Alain on 26/11/23.
//

import Foundation

struct Modelo : Identifiable {
    
    let id = UUID()
    let emoji: String
    let nombre : String
    let descripcion : String
}

let lista: [Modelo] = [
    Modelo(emoji: "🍎",
           nombre: "Manzana",
           descripcion: "Fruta roja y deliciosa"
          ),
    Modelo(emoji: "🚗", 
           nombre: "Automóvil",
           descripcion: "Medio de transporte"
          ),
    Modelo(emoji: "📘", 
           nombre: "Libro",
           descripcion: "Fuente de conocimiento"
          ),
    Modelo(emoji: "⌚️",
           nombre: "Reloj",
           descripcion: "Dispositivo para medir el tiempo"
          ),
    Modelo(emoji: "🌍",
           nombre: "Tierra",
           descripcion: "Nuestro planeta"
          ),
    
    Modelo(emoji: "🍕",
               nombre: "Pizza",
               descripcion: "Plato italiano con masa, salsa y varios ingredientes"),
        Modelo(emoji: "🚀",
               nombre: "Cohete",
               descripcion: "Vehículo espacial propulsado por motores a chorro"),
        Modelo(emoji: "🎸",
               nombre: "Guitarra",
               descripcion: "Instrumento musical de cuerdas"),
        Modelo(emoji: "🏰",
               nombre: "Castillo",
               descripcion: "Edificio fortificado con torres y muros"),
        Modelo(emoji: "🌈",
               nombre: "Arcoíris",
               descripcion: "Fenómeno óptico y meteorológico que aparece en el cielo"),
        Modelo(emoji: "🚤",
               nombre: "Bote",
               descripcion: "Embarcación pequeña para navegar en agua"),
]


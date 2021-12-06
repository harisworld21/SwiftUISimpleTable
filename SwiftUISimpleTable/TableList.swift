//
//  TableList.swift
//  SwiftUISimpleTableTests
//
//  Created by HariRamya on 02/12/2021.
//

import SwiftUI
import Foundation

let url = "https://jsonkeeper.com/b/6UK7"

let json = """
[{
    "name": "Hari",
    "img" : "imga"
}, {
    "name": "Prasath",
    "img" : "imgb"
}, {
    "name": "Balachandran",
    "img" : "imgc"
}, {
    "name": "Chellapandian",
    "img" : "imgd"
}, {
    "name": "Ramya",
    "img" : "imge"
}, {
    "name": "Mithurshaa",
    "img" : "imgf"
}]
"""

let listItem = try! JSONDecoder().decode([list].self, from: json.data(using: .utf8)!)

struct list: Hashable, Codable {
    let name: String
    let img: String
}

struct TableList: View {
    var body: some View {
        List(listItem,id: \.name) { item in
            TableRow(title: item.name, image: item.img)
        }
    }
}

struct TableList_Previews: PreviewProvider {
    static var previews: some View {
        TableList()
    }
}


func downloadData(urlStr: String) {
    
}

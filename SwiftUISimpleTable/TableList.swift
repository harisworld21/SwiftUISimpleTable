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
    "name": "Sivakasi",
    "img" : "imga"
}, {
    "name": "Bangalore",
    "img" : "imgb"
}, {
    "name": "Chennai",
    "img" : "imgc"
}, {
    "name": "Madurai",
    "img" : "imgd"
}, {
    "name": "Trichy",
    "img" : "imge"
}, {
    "name": "Kanchipuram",
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
        NavigationView {
            List(listItem,id: \.name) { item in
                HStack {
                    NavigationLink() {
                        LandMarkDetail()
                    } label: {
                    TableRow(title: item.name, image: item.img)
                    }
                }
            }
        }
        .padding(-10)
        
    }
}

struct TableList_Previews: PreviewProvider {
    static var previews: some View {
        TableList()
    }
}


func downloadData(urlStr: String) {
    
}

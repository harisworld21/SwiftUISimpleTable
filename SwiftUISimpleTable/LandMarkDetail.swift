//
//  LandMarkDetail.swift
//  SwiftUISimpleTable
//
//  Created by HariRamya on 03/12/2021.
//

import SwiftUI

struct LandMarkDetail: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rocks")
                .font(.title)
            Text("Bottom Line Fonts")
                .font(.subheadline)
        }
    }
}

struct LandMarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkDetail()
    }
}

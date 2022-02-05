//
//  FeaturedTitle.swift
//  LearningApp
//
//  Created by Leone on 2/5/22.
//

import SwiftUI

struct FeaturedTitle: View {
    
    var featuredCategory: String
    
    var body: some View {
        Text("Featured \(featuredCategory) Lessons")
            .fontWeight(.bold)
            .padding(.leading)
            .padding(.top)
            .font(Font.custom("Avenir Heavy", size: 24))
    }
}

struct FeaturedTitle_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTitle(featuredCategory: "SwiftUI")
    }
}

//
//  FeaturedLessons.swift
//  LearningApp
//
//  Created by Leone on 2/5/22.
//

import SwiftUI

struct FeaturedLessons: View {
    
    @EnvironmentObject var model: ContentModel
    
    @State var isDetailViewShowing = false // Tracks whether/ not to show our detailed view
    @State var tabSelectionIndex = 0
    
    /// <#Description#>
    var body: some View {
        
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 0) {
                
                // Loop through all the modules
                ForEach(model.modules) { module in
                    
                    // MARK: Display the Category Title
                    FeaturedTitle(featuredCategory: module.category)
                    
                    // MARK: Display Featured Lessons
                    // Loop through all the lessons
                    ForEach(module.content.lessons) { lesson in
                        
                        // See if the lesson is featured
                        if lesson.featured {
                            ZStack(alignment: .leading) {
                                RectangleCard()
                                    .frame(height: 48)
                                
                                // Display the next lesson with its title
                                Text("\(lesson.title)")
                                    .bold()
                                    .padding(.leading)
                            }
                            .padding(EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 20))
                        }
                        
                        
                    }
                    
                    
                }
                
            }
        }
    }
    
}

struct FeaturedLessons_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedLessons()
    }
}

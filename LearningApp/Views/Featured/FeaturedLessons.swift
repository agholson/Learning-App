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
    
    /// Displays the lessons that are featured for each of the modules.
    var body: some View {
        NavigationView {
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
                                // Display a button for the other lesson
                                NavigationLink(
                                    destination:
                                        ContentDetailView()
                                        .onAppear(perform: {
                                            model.currentModule = module
                                            // Set the selected lesson ID
                                            model.beginLesson(lesson.id)
                                        }),
                                    label: {
                                        ZStack(alignment: .leading) {
                                            RectangleCard()
                                                .frame(height: 48)
                                            
                                            // Display the next lesson with its title
                                            Text("\(lesson.title)")
                                                .bold()
                                                .padding(.leading)
                                        }
                                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 20))
                                    })
                                    .foregroundColor(.black)
                            }
                        }
                        
                    }
                    
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }

    }
    
}

struct FeaturedLessons_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedLessons()
    }
}

//
//  TabView.swift
//  LearningApp
//
//  Created by Leone on 2/5/22.
//

import SwiftUI

struct LessonsTabView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        TabView {
            // MARK: - New Featured Lessons View
            FeaturedLessons()
//            Text("Simple")
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured Lessons")
                    }
                }
            
            // MARK: - Original Home View
            HomeView()
                .tabItem {
                    VStack {
                        Image(systemName: "folder.fill.badge.person.crop")
                        Text("All Learning Modules")
                    }
                }
        }
        .font(.headline)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        LessonsTabView()
    }
}

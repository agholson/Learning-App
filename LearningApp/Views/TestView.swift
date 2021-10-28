//
//  TestView.swift
//  LearningApp
//
//  Created by Shepherd on 10/25/21.
//

import SwiftUI

struct TestView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        // Only perform this if not nil
        if model.currentQuestion != nil {
            
            VStack {
                
                // Question number
                Text("Temp view")
                // Question itself
                
                // Answers
                
                // Button to submit answer, or complete
                
            }
            .navigationTitle("\(model.currentModule?.category ?? "") Test")
            
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

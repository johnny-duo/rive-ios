//
//  StateMachine.swift
//  RiveExample
//
//  Created by Maxwell Talbot on 01/03/2022.
//  Copyright © 2022 Rive. All rights reserved.
//

import SwiftUI
import RiveRuntime

struct SwiftStateMachine: View {
    let riveView = try! RiveView(
        resource: "skills",
        stateMachine: "Designer's Test"
    )
    
    var body: some View {
        ScrollView{
            VStack {
                RiveViewSwift(
                    riveView:riveView
                ).frame(height:200)
                
                HStack{
                    
                    Button(
                        "Beginner",
                        action:{try! riveView.setNumberState("Designer's Test", inputName: "Level", value: 0.0)}
                    )
                    Button(
                        "Intermediate",
                        action:{try! riveView.setNumberState("Designer's Test", inputName: "Level", value: 1.0)}
                    )
                    Button(
                        "Expert",
                        action:{try! riveView.setNumberState("Designer's Test", inputName: "Level", value: 2.0)}
                    )
                }
                
            }
        }
    }
}

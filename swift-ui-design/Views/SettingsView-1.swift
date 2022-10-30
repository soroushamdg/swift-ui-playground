//
//  SettingsView-1.swift
//  swift-ui-design
//
//  Created by Soro on 2022-10-30.
//

import SwiftUI

struct SettingsView_1: View {
    
    @State private var showGreeting = true

    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment: .leading,spacing:21){
                    HStack {
                        Toggle("ignore the swarm", isOn: $showGreeting)
                            .tint(.teal)
                    }
                
                HStack {
                    Button(action: {
                       // leave the swarm action
                    }, label: {
                        Text("Leave the swarm")
                            .foregroundColor(.black)
                    })
                }
                
                HStack {
                    Text("Choose a color")
                    Spacer()
                    Button(action: {
                       // leave the swarm action
                    }, label: {
                        Circle()
                            .fill(Color.pink)
                            .frame(width: 36,height: 36)
                    })
                }
                
                HStack {
                    Text("Type of swarm")
                    Spacer()
                    Button(action: {
                       // leave the swarm action
                    }, label: {
                        Text("Private group")
                            .foregroundColor(.black)
                    })
                }
                
                HStack {
                    Text("Identifier")
                    Spacer()
                    Button(action: {
                       // leave the swarm action
                    }, label: {
                        Text("99999999999999999999")
                            .foregroundColor(.black)
                            .truncationMode(.tail)
                            .lineLimit(1)
                            .frame(width: 200)
                    })
                }
                
                }
            .padding(.horizontal,15)
           }
            
        
    }
}

struct SettingsView_1_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView_1()
            .previewLayout(.sizeThatFits)
    }
}

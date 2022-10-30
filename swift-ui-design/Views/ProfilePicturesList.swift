//
//  ProfilePicturesList.swift
//  swift-ui-design
//
//  Created by Soro on 2022-10-30.
//

import SwiftUI

struct ProfilePicturesList: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: true){
            VStack(alignment:.leading,spacing: 12){
                ForEach(0...5,id: \.self){item in
                    // loop in profiles array here
                    ProfileItem(image: "profile", name: "name")
                }
            }
        }
    }
}

struct ProfileItem: View{
    var image: String
    var name: String
    
    var body: some View{
        HStack(spacing: 12) {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 45,height: 45,alignment: .center)
                .clipShape(Circle())
            
            Text(name)
                .font(.system(.title2,design: .rounded))
                .fontWeight(.light)
            
            Spacer()
        }
        .padding(.horizontal,12)
    }
}

struct ProfilePicturesList_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicturesList()
            .previewLayout(.sizeThatFits)
    }
}

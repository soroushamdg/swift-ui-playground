//
//  TopProfileView.swift
//  Avocados
//
//  Created by Soro on 2022-10-24.
//

import SwiftUI

let SpaceBetweenProfilePhotos : CGFloat = 6
let ProfileImageSize : CGFloat = 100

struct TopProfileView: View {
    
    var profileImageLeft: String
    var profileImageRight: String

    var titleNames: String
    
    @State private var editingTextField: Bool = false
    @State private var textFieldInput: String = ""


    
    var body: some View {
        VStack{
            HStack{
                Button {
                    
                } label: {
                    Image(systemName: "chevron.left")
                        .font(.system(.title,design: .serif))
                        .foregroundColor(.white)
                }

                Spacer()
            }
            
            HStack(alignment: .center,spacing: SpaceBetweenProfilePhotos){
                Button {
                    // Image left button action
                } label: {
                    Image(systemName:profileImageLeft)
                        .resizable()
                        .scaledToFill()
                        .frame(width: ProfileImageSize,height: ProfileImageSize,alignment: .center)
                        .clipShape(Circle())
                        .frame(width: ProfileImageSize, height: ProfileImageSize)
                                    .offset(x: ProfileImageSize / 2)
                                    .clipped()
                                    .offset(x: -ProfileImageSize / 4)
                                    .frame(width: ProfileImageSize / 2)
                }

                
                Button {
                    // Image right button action
                } label: {
                    Image(systemName:profileImageRight)
                        .resizable()
                        .scaledToFill()
                        .frame(width: ProfileImageSize,height: ProfileImageSize,alignment: .center)
                        .clipShape(Circle())
                        .frame(width: ProfileImageSize, height: ProfileImageSize)
                                    .offset(x: -ProfileImageSize / 2)
                                    .clipped()
                                    .offset(x: ProfileImageSize / 4)
                                    .frame(width: ProfileImageSize / 2)
                }


            }
            .padding(.vertical)
                Text(titleNames)
                .font(.system(.headline,design: .serif))
                .fontWeight(.medium)
                .foregroundColor(.white)
            
            Group{
                if(editingTextField){
                    TextField("", text: $textFieldInput,onCommit: {
                        // On pressing enter key action.
                        editingTextField = false
                    })
                    .textFieldStyle(PlainTextFieldStyle())
                    .font(.system(.body,design: .serif))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    // Cursor color.
                    .accentColor(.white)
                    // Text color.
                    .foregroundColor(.white)
                }else{
                    Button {
                        editingTextField = true
                    } label: {
                        Text("Add a description")
                            .font(.system(.body,design: .serif))
                            .fontWeight(.light)
                            .foregroundColor(.white)
                    }

                }
            }
            .padding(.vertical,15)
                
            
                    

            
            
        }
        .padding(.vertical,30)
        .padding(.horizontal,30)
        .background(Color(red: 30/256, green: 75/256, blue: 58/256))
    }
}

struct TopProfileView_Previews: PreviewProvider {
    static var previews: some View {
        TopProfileView(profileImageLeft: "person.crop.circle.fill", profileImageRight: "person.crop.circle.fill", titleNames: ["Name 1","Name 2","Name 3"].joined(separator: ", "))
            .previewLayout(.sizeThatFits)
    }
}
